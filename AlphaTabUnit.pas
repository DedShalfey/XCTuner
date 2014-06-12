unit AlphaTabUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, RegExpr, StdCtrls, Controls, spin, ComCtrls;

  function LoadAlphaTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
  function LoadAlphaTabEx(FindExpr: string; GB: TScrollBox):string;
  function SaveAlpha(SB: TScrollBox):string;
  function SaveAlphaEx(sExpr: string; SB: TScrollBox):string;

implementation

uses Unit1;

function LoadAlphaTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sEdit: TSpinEdit;
  sSubstEdit: TEdit;
  sCaption, sValue, sName, s1: string;
  sSubstLabel, sAlphaSelectLabel: TLabel;
  sAlphaSubStrValue: TComboBox;
  i, j: integer;
begin
with XCTuner_Form1 do
begin
alpha.Clear;
alpha.LoadFromFile(dir_xvm + alpha_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(alpha.Text) then
begin
  sRE.Expression := '[ \/\t]"(.*?)":(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    s1 := Trim(sRE.Substitute('$2'));
    s1 := StringReplace(s1, '  ', ' ', [rfIgnoreCase,rfReplaceAll]);
    sName := sRE.Substitute('$1');
    sCaption := lang_config.ReadString('colors', sName, '');
    sValue := Trim(GetWord(s1, '"', 2));

    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sLabel.Caption := sCaption;
      sEdit := TSpinEdit(sLabel.FindChildControl('sAlphaValue' + GB.Name + IntToStr(i)));
      sEdit.Value := StrToInt(sValue);
      if ShowSub then
      begin
        sAlphaSubStrValue := TComboBox(sLabel.FindChildControl('sAlphaSubStrValue' + GB.Name + IntToStr(i)));
        sAlphaSubStrValue.Items.Clear;
        sAlphaSubStrValue.Items.Add('Выберите...');
        for j := 0 to AlphaSubStrValue.Count - 1 do
          sAlphaSubStrValue.Items.Add(AlphaSubStrValue.Strings[j]);
        if sAlphaSubStrValue.Items.IndexOf(sEdit.Text) <> -1 then
          sAlphaSubStrValue.ItemIndex := sAlphaSubStrValue.Items.IndexOf(sEdit.Text)
        else
          sAlphaSubStrValue.ItemIndex := 0;
      end;
      if s <> '' then
        TEdit(sLabel.FindChildControl('sSubstEdit' + GB.Name + IntToStr(i))).Text := s + sName;
    end
    else
    begin
    sLabel := TGroupBox.Create(nil);
    with sLabel do
    begin
      Parent := GB;
      Hint := sName;
      Name := 'sGroupBox' + GB.Name + IntToStr(i);
      Width := 560;
      Height := 60;
      if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))) = nil then
        Top := 0
      else
        Top := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Top + TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Height + 3;
      Left := 10;
      Caption := sCaption;
    end;

    sEdit := TSpinEdit.Create(nil);
    with sEdit do
    begin
      Parent := sLabel;
      Hint := sName;
      Alignment := taCenter;
      Name := 'sAlphaValue' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 100;
      Left := 18;
      Text := sValue;
      Value := StrToInt(sValue);
    end;

    if s <> '' then
    begin
      sSubstLabel := TLabel.Create(nil);
      with sSubstLabel do
      begin
        Parent := sLabel;
        Hint := sName;
        Name := 'sSubstLabel' + GB.Name + IntToStr(i);
        Top := sEdit.Top + 4;
        Left := sEdit.Left + sEdit.Width + 18;
        Caption := 'Значение для подстановки: ';
        Width := 155;
      end;
      sSubstEdit := TEdit.Create(nil);
      with sSubstEdit do
      begin
        Parent := sLabel;
        Hint := sName;
        Name := 'sSubstEdit' + GB.Name + IntToStr(i);
        Top := sEdit.Top + 2;
        Width := 165;
        Left := sSubstLabel.Left + sSubstLabel.Width + 3;
        Text := s + sName;
        AlphaSubStrValue.Add(Text);
        Alignment := taCenter;
      end;
    end;

    if ShowSub then
    begin
      sAlphaSelectLabel := TLabel.Create(nil);
      with sAlphaSelectLabel do
      begin
        Parent := sLabel;
        Name := 'sAlphaSelectLabel' + GB.Name + IntToStr(i);
        Width := 75;
        Caption := 'Подстановка: ';
        Top := sEdit.Top + 4;
        Left := sSubstEdit.Left + sSubstEdit.Width + 18;
      end;

      sAlphaSubStrValue := TComboBox.Create(nil);
      with sAlphaSubStrValue do
      begin
        Parent := sLabel;
        Name := 'sAlphaSubStrValue' + GB.Name + IntToStr(i);
        Top := sEdit.Top;
        Width := 200;
        Left := sAlphaSelectLabel.Left + sAlphaSelectLabel.Width + 3;
        Style := csDropDownList;
        Items.Add('Выберите...');
        for j := 0 to AlphaSubStrValue.Count - 1 do
          Items.Add(AlphaSubStrValue.Strings[j]);
        if Items.IndexOf(sEdit.Text) <> -1 then
          ItemIndex := Items.IndexOf(sEdit.Text)
        else
          ItemIndex := 0;
        OnSelect := @ClickAlphaSelectComboBox;
      end;
    end;
    end;
    Inc(i);
    end;
  until not sRE.ExecNext;
end
else
begin
  TTabSheet(GB.Parent).TabVisible := False;
  if (not TabSheet84.TabVisible) and (not TabSheet85.TabVisible) then
  begin
     PageControl15.ActivePageIndex := 1;
     TabSheet65.TabVisible := False;
  end;
end;
sRE.Free;
RE.Free;
end;
end;

function LoadAlphaTabEx(FindExpr: string; GB: TScrollBox):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sValueName, sAlphaName, sAlphaSelectLabel: TLabel;
  sValue, sAlphaValue: tEdit;
  sAlphaSubStrValue: TComboBox;
  fValueName, fValue, fAlphaValue: string;
  i, j: integer;
begin
with XCTuner_Form1 do
begin
alpha.Clear;
alpha.LoadFromFile(dir_xvm + alpha_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(alpha.Text) then
begin
  sRE.Expression := '[ \/]"(.*?)":(.*?),(.*?)"(.*?)":(.*?)"(.*?)"(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    fValueName := sRE.Substitute('$1');
    fValue := Trim(sRE.Substitute('$2'));
    fAlphaValue := sRE.Substitute('$6');
    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sValue := TEdit(sLabel.FindChildControl('sEdit' + GB.Name + IntToStr(i)));
      sValue.Text := fValue;
      sAlphaValue := TEdit(sLabel.FindChildControl('sAlphaValue' + GB.Name + IntToStr(i)));
      sAlphaValue.Text := fAlphaValue;

      sAlphaSubStrValue := TComboBox(sLabel.FindChildControl('sAlphaSubStrValue' + GB.Name + IntToStr(i)));
      sAlphaSubStrValue.Items.Clear;
      sAlphaSubStrValue.Items.Add('Выберите...');
      for j := 0 to AlphaSubStrValue.Count - 1 do
        sAlphaSubStrValue.Items.Add(AlphaSubStrValue.Strings[j]);

      if sAlphaSubStrValue.Items.IndexOf(sAlphaValue.Text) <> -1 then
        sAlphaSubStrValue.ItemIndex := sAlphaSubStrValue.Items.IndexOf(sAlphaValue.Text)
      else
        sAlphaSubStrValue.ItemIndex := 0;
    end
    else
    begin
    sLabel := TGroupBox.Create(nil);
    with sLabel do
    begin
      Parent := GB;
      Hint := fValueName;
      Name := 'sGroupBox' + GB.Name + IntToStr(i);
      Width := 575;
      Height := 54;
      if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))) = nil then
        Top := 0
      else
        Top := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Top + TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Height + 3;
      Left := 10;
      Caption := '';
    end;

    sValueName := TLabel.Create(nil);
    with sValueName do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sValueName' + GB.Name + IntToStr(i);
      Top := 6;
      Left := 6;
      Caption := 'Значение: ';
      Width := 55;
    end;

    sValue := TEdit.Create(nil);
    with sValue do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Alignment := taCenter;
      Name := 'sEdit' + GB.Name + IntToStr(i);
      Top := 3;
      Width := 50;
      Left := sValueName.Left + sValueName.Width + 3;
      Text := fValue;
    end;

    sAlphaName := TLabel.Create(nil);
    with sAlphaName do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sAlphaName' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 85;
      Left := sValue.Left + sValue.Width + 6;
      Caption := 'Прозрачность: ';
    end;

    sAlphaValue := TEdit.Create(nil);
    with sAlphaValue do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Alignment := taCenter;
      Name := 'sAlphaValue' + GB.Name + IntToStr(i);
      Top := sValue.Top;
      Width := 150;
      Left := sAlphaName.Left + sAlphaName.Width + 3;
      Text := fAlphaValue
    end;

    sAlphaSelectLabel := TLabel.Create(nil);
    with sAlphaSelectLabel do
    begin
      Parent := sLabel;
      Name := 'sAlphaSelectLabel' + GB.Name + IntToStr(i);
      Width := 75;
      Caption := 'Подстановка: ';
      Top := -6;
      Left := sAlphaValue.Left + sAlphaValue.Width + 6;
    end;

    sAlphaSubStrValue := TComboBox.Create(nil);
    with sAlphaSubStrValue do
    begin
      Parent := sLabel;
      Name := 'sAlphaSubStrValue' + GB.Name + IntToStr(i);
      Top := sAlphaSelectLabel.Top + sAlphaSelectLabel.Height - 3;
      Width := 160;
      Left := sAlphaSelectLabel.Left;
      Style := csDropDownList;
      DropDownCount := 15;
      Items.Add('Выберите...');
      for j := 0 to AlphaSubStrValue.Count - 1 do
        Items.Add(AlphaSubStrValue.Strings[j]);
      if Items.IndexOf(sAlphaValue.Text) <> -1 then
        ItemIndex := Items.IndexOf(sAlphaValue.Text)
      else
        ItemIndex := 0;
      OnSelect := @ClickAlphaSelectComboBox;
    end;
    end;
    Inc(i);
    end;
  until not sRE.ExecNext;
end;
sRE.Free;
RE.Free;
end;
end;

function SaveAlpha(SB: TScrollBox):string;
var
  i, j, l, k: integer;
  GB: TGroupBox;
  RE: TRegExpr;
  Edt: TSpinEdit;
  t: string;
  st: TStringList;
begin
RE := TRegExpr.Create;
st := TStringList.Create;
for i := 0 to SB.ControlCount - 1 do
begin
  if SB.Controls[i] is TGroupBox then
  begin
    GB := TGroupBox(SB.Controls[i]);
    for j := 0 to GB.ControlCount - 1 do
    begin
      if GB.Controls[j] is TSpinEdit then
      if Pos('sAlphaValue', GB.Controls[j].Name) > 0 then
      begin
        Edt := TSpinEdit(GB.Controls[j]);
        RE.Expression := '"' + Edt.Hint + '"(.*?)[\r\n]';
        if RE.Exec(alpha.Text) then
        begin
          t := IntToStr(Edt.Value);
          if TryStrToInt(t, k) then
             t := XCTuner_Form1.RecStartEnd(t)
          else
             t := '${"' + t + '"}';
          l := XCTuner_Form1.Search_Line(0, '"' + Edt.Hint + '"', alpha);
          alpha.Strings[l] := XCTuner_Form1.Smart_Replacing(Edt.Hint, alpha.Strings[l], t);
        end;
      end;
    end;
  end;
end;
alpha.SaveToFile(dir_xvm+alpha_name);
st.Free;
RE.Free;
end;

function SaveAlphaEx(sExpr: string; SB: TScrollBox):string;
var
  i, j, l, k, f: integer;
  GB: TGroupBox;
  RE, sRE: TRegExpr;
  s, t: string;
  st: TStringList;
begin
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
st := TStringList.Create;
RE.Expression := sExpr + ']';
l := XCTuner_Form1.Search_Line(0, sExpr, alpha);
k := 1;
for i := 0 to SB.ControlCount - 1 do
begin
  if SB.Controls[i] is TGroupBox then
  begin
    GB := TGroupBox(SB.Controls[i]);
    for j := 0 to GB.ControlCount - 1 do
    begin
      if GB.Controls[j] is TEdit then
      begin
        if pos('sEdit', TEdit(GB.Controls[j]).Name) > 0 then
           s := TEdit(GB.Controls[j]).TExt;
        if pos('sAlphaValue', TEdit(GB.Controls[j]).Name) > 0 then
           t := TEdit(GB.Controls[j]).Text;
        if (s <> '') and (t <> '') then
        begin
          if TryStrToInt(t, f) then
             t := XCTuner_Form1.RecStartEnd(t)
          else
             t := '${"' + t + '"}';
        alpha.Strings[l + k] := XCTuner_Form1.Smart_Replacing('value', alpha.Strings[l + k], s);
        alpha.Strings[l + k] := XCTuner_Form1.Smart_Replacing('alpha', alpha.Strings[l + k], t);
        s := '';
        t := '';
        Inc(k) ;
        end;
      end;
    end;
  end;
end;
alpha.SaveToFile(dir_xvm+alpha_name);
st.Free;
sRE.Free;
RE.Free;
end;

end.

