unit ColorsTabUnit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, RegExpr, StdCtrls, mbColorPreview, Buttons, ExtCtrls,
  Graphics, Controls, Dialogs;

  function LoadColorsTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
  function LoadColorsTabEx(FindExpr: string; GB: TScrollBox):string;
  function SaveColors(SB: TScrollBox):string;
  function SaveColorsEx(sExpr: string; SB: TScrollBox):string;

implementation

uses Unit1;

function LoadColorsTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sEdit, sSubstEdit: TEdit;
  sCP: TmbColorPreview;
  sBitBtn: TBitBtn;
  sCaption, sValue, sName, s1: string;
  sSubstLabel, sColorSelectLabel: TLabel;
  sBool: TRadioGroup;
  sColorSubStrValue: TComboBox;
  i, j: integer;
  isBoolean: Boolean;
begin
with XCTuner_Form1 do
begin
colors.Clear;
colors.LoadFromFile(dir_xvm + colors_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(colors.Text) then
begin
  sRE.Expression := '[ \/]"(.*?)":(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    s1 := Trim(sRE.Substitute('$2'));
    s1 := StringReplace(s1, '  ', ' ', [rfIgnoreCase,rfReplaceAll]);
    sName := sRE.Substitute('$1');
    sCaption := lang_config.ReadString('colors', sName, '');
    isBoolean := False;
    if (s1 = 'false') or (s1 = 'true') then
    begin
      isBoolean := True;
      sValue := s1;
    end
    else
    begin
      sValue := Trim(GetWord(s1, '"', 2));
      if Pos('$', s1) = 0 then
        sValue := RecStartEnd(sValue);
      sValue := StringReplace(sValue, ',', '', [rfIgnoreCase, rfReplaceAll]);
    end;

    if (IsBoolean) and (TRadioGroup(GB.FindChildControl('sBool' + GB.Name + IntToStr(i))) <> nil) then
    begin
      if sValue = 'false' then
         sValue := '1'
      else
         sValue := '0';
       TRadioGroup(GB.FindChildControl('sBool' + GB.Name + IntToStr(i))).ItemIndex := StrToInt(sValue);
    end;

    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sLabel.Caption := sCaption;
      sEdit := TEdit(sLabel.FindChildControl('sColorValue' + GB.Name + IntToStr(i)));
      sCP := TmbColorPreview(sLabel.FindChildControl('sColorValuePreview' + GB.Name + IntToStr(i)));
      if Pos('$', s1) > 0 then
      begin
        sEdit.Text := sValue;
        sCP.Color := clWhite;
      end
      else
      begin
        sEdit.Text := '#' + DelStartEnd(sValue);
        sCP.Color := HexToTColor(Copy(sEdit.Text, 2, MaxInt));
      end;
      if ShowSub then
      begin
        sColorSubStrValue := TComboBox(sLabel.FindChildControl('sColorSubStrValue' + GB.Name + IntToStr(i)));
        sColorSubStrValue.Items.Clear;
        sColorSubStrValue.Items.Add('Выберите...');
        for j := 0 to ColorSubStrValue.Count - 1 do
          sColorSubStrValue.Items.Add(GetWord(ColorSubStrValue.Strings[j], '=', 1));

        if sColorSubStrValue.Items.IndexOf(Copy(ColorSubStrValue.Text, Pos(sEdit.Text, ColorSubStrValue.Text), Length(sEdit.Text))) <> -1 then
        begin
          sColorSubStrValue.ItemIndex := sColorSubStrValue.Items.IndexOf(sEdit.Text);
          sCP.Color := HexToTColor(Copy(ColorSubStrValue.Text, Pos(sEdit.Text, ColorSubStrValue.Text) + Length(sEdit.Text) + 2, 6));
        end
        else
          sColorSubStrValue.ItemIndex := 0;
      end;
      if s <> '' then
        TEdit(sLabel.FindChildControl('sSubstEdit' + GB.Name + IntToStr(i))).Text := s + sName;
    end
    else
    begin
      if (IsBoolean) then
      begin
      if (TRadioGroup(GB.FindChildControl('sBool' + GB.Name + IntToStr(i))) = nil) then
      begin
        sBool := TRadioGroup.Create(nil);
        with sBool do
        begin
          Name := 'sBool' + GB.Name + IntToStr(i);
          Caption := sCaption;
          Columns := 2;
          Width := 350;
          Height := 60;
          Left := 10;
          Hint := sName;
          Top := GB.Controls[GB.ControlCount - 1].Top + GB.Controls[GB.ControlCount - 1].Height + 3;
          Parent := GB;
          with Items do
          begin
          Add('Включить');
          Add('Выключить');
          end;
          if sValue = 'false' then
             sValue := '1'
          else
             sValue := '0';
          ItemIndex := StrToInt(sValue);
        end;
        end;
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

    sEdit := TEdit.Create(nil);
    with sEdit do
    begin
      Parent := sLabel;
      Hint := sName;
      Alignment := taCenter;
      Name := 'sColorValue' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 100;
      Left := 18;
      if (Pos('$', s1) > 0) then
         Text := sValue
      else
         Text := '#' + DelStartEnd(sValue);
    end;

    sCP := TmbColorPreview.Create(nil);
    with sCP do
    begin
      Parent := sLabel;
      Hint := sName;
      Name := 'sColorValuePreview' + GB.Name + IntToStr(i);
      Top := sEdit.Top;
      Left := sEdit.Left + sEdit.Width + 6;
      Width := 23;
      Height := 23;
      if Pos('$', s1) > 0 then
         Color := clWhite
      else
         Color := HexToTColor(Copy(sEdit.Text, 2, MaxInt));
    end;

    sBitBtn := TBitBtn.Create(nil);
    with sBitBtn do
    begin
      Parent := sLabel;
      Hint := sName;
      Name := 'sBitBtn' + GB.Name + IntToStr(i);
      Top := sCP.Top - 6;
      Left := sCP.Left + sCP.Width + 6;
      Height := 34;
      Width := 54;
      Caption := '';
      Glyph.LoadFromResourceName(HINSTANCE, 'COLORSELECT');
      Hint := 'Выбрать цвет';
      ShowHint := True;
      Cursor := crHandPoint;
      OnClick := @OnClickColorButton;
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
        Left := sBitBtn.Left + sBitBtn.Width + 18;
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
        ColorSubStrValue.Add(Text + '=' + sEdit.Text);
        Alignment := taCenter;
      end;
    end;

    if ShowSub then
    begin
      sColorSelectLabel := TLabel.Create(nil);
      with sColorSelectLabel do
      begin
        Parent := sLabel;
        Name := 'sColorSelectLabel' + GB.Name + IntToStr(i);
        Width := 75;
        Caption := 'Подстановка: ';
        Top := sEdit.Top + 4;
        Left := sBitBtn.Left + sBitBtn.Width + 18;
      end;

      sColorSubStrValue := TComboBox.Create(nil);
      with sColorSubStrValue do
      begin
        Parent := sLabel;
        Name := 'sColorSubStrValue' + GB.Name + IntToStr(i);
        Top := sEdit.Top;
        Width := 200;
        Left := sColorSelectLabel.Left + sColorSelectLabel.Width + 3;
        Style := csDropDownList;
        Items.Add('Выберите...');
        for j := 0 to ColorSubStrValue.Count - 1 do
          Items.Add(GetWord(ColorSubStrValue.Strings[j], '=', 1));

        if Items.IndexOf(Copy(ColorSubStrValue.Text, Pos(sEdit.Text, ColorSubStrValue.Text), Length(sEdit.Text))) <> -1 then
        begin
          ItemIndex := Items.IndexOf(sEdit.Text);
          sCP.Color := HexToTColor(Copy(ColorSubStrValue.Text, Pos(sEdit.Text, ColorSubStrValue.Text) + Length(sEdit.Text) + 2, 6));
        end
        else
          ItemIndex := 0;
        OnSelect := @ClickColorSelectComboBox;
      end;
    end;
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

function LoadColorsTabEx(FindExpr: string; GB: TScrollBox):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sValueName, sColorName, sColorSelectLabel: TLabel;
  sValue, sColorValue: tEdit;
  sColorValuePreview: TmbColorPreview;
  sBitBtn: TBitBtn;
  sColorSubStrValue: TComboBox;
  fValueName, fValue, fColorValue: string;
  i, j: integer;
begin
with XCTuner_Form1 do
begin
colors.Clear;
colors.LoadFromFile(dir_xvm + colors_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(colors.Text) then
begin
  sRE.Expression := '[ \/]"(.*?)":(.*?),(.*?)"(.*?)":(.*?)"(.*?)"(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    fValueName := sRE.Substitute('$1');
    fValue := Trim(sRE.Substitute('$2'));
    fColorValue := sRE.Substitute('$6');
    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sValue := TEdit(sLabel.FindChildControl('sEdit' + GB.Name + IntToStr(i)));
      sValue.Text := fValue;
      sColorValue := TEdit(sLabel.FindChildControl('sColorValue' + GB.Name + IntToStr(i)));
      sColorValuePreview := TmbColorPreview(sLabel.FindChildControl('sColorValuePreview' + GB.Name + IntToStr(i)));
      if Pos('0x', fColorValue) = 0 then
      begin
        sColorValue.Text := fColorValue;
        sColorValuePreview.Color := clWhite;
      end
      else
      begin
        sColorValue.Text := '#' + DelStartEnd(RecStartEnd(fColorValue));
        sColorValuePreview.Color := HexToTColor(Copy(sColorValue.Text, 2, MaxInt));
      end;
      sColorSubStrValue := TComboBox(sLabel.FindChildControl('sColorSubStrValue' + GB.Name + IntToStr(i)));
      sColorSubStrValue.Items.Clear;
      sColorSubStrValue.Items.Add('Выберите...');

      for j := 0 to ColorSubStrValue.Count - 1 do
        sColorSubStrValue.Items.Add(GetWord(ColorSubStrValue.Strings[j], '=', 1));

      if sColorSubStrValue.Items.IndexOf(Copy(ColorSubStrValue.Text, Pos(sColorValue.Text, ColorSubStrValue.Text), Length(sColorValue.Text))) <> -1 then
      begin
        sColorSubStrValue.ItemIndex := sColorSubStrValue.Items.IndexOf(sColorValue.Text);
        sColorValuePreview.Color := HexToTColor(Copy(ColorSubStrValue.Text, Pos(sColorValue.Text, ColorSubStrValue.Text) + Length(sColorValue.Text) + 2, 6));
      end
      else
        sColorSubStrValue.ItemIndex := 0;
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

    sColorName := TLabel.Create(nil);
    with sColorName do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sColorName' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 35;
      Left := sValue.Left + sValue.Width + 6;
      Caption := 'Цвет: ';
    end;

    sColorValue := TEdit.Create(nil);
    with sColorValue do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Alignment := taCenter;
      Name := 'sColorValue' + GB.Name + IntToStr(i);
      Top := sValue.Top;
      Width := 150;
      Left := sColorName.Left + sColorName.Width + 3;
      if Pos('0x', fColorValue) = 0 then
        Text := fColorValue
      else
        Text := '#' + DelStartEnd(RecStartEnd(fColorValue));
    end;

    sColorValuePreview := TmbColorPreview.Create(nil);
    with sColorValuePreview do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sColorValuePreview' + GB.Name + IntToStr(i);
      Top := sColorValue.Top;
      Left := sColorValue.Left + sColorValue.Width + 6;
      Width := 23;
      Height := 23;
      if Pos('#', sColorValue.Text) = 0 then
         Color := clWhite
      else
         Color := HexToTColor(Copy(sColorValue.Text, 2, MaxInt));
    end;

    sBitBtn := TBitBtn.Create(nil);
    with sBitBtn do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sBitBtn' + GB.Name + IntToStr(i);
      Top := sColorValuePreview.Top - 6;
      Left := sColorValuePreview.Left + sColorValuePreview.Width + 6;
      Height := 34;
      Width := 54;
      Caption := '';
      Glyph.LoadFromResourceName(HINSTANCE, 'COLORSELECT');
      Hint := 'Выбрать цвет';
      Cursor := crHandPoint;
      ShowHint := True;
      OnClick := @OnClickColorButton;
    end;

    sColorSelectLabel := TLabel.Create(nil);
    with sColorSelectLabel do
    begin
      Parent := sLabel;
      Name := 'sColorSelectLabel' + GB.Name + IntToStr(i);
      Width := 75;
      Caption := 'Подстановка: ';
      Top := sBitBtn.Top - 4;
      Left := sBitBtn.Left + sBitBtn.Width + 6;
    end;

    sColorSubStrValue := TComboBox.Create(nil);
    with sColorSubStrValue do
    begin
      Parent := sLabel;
      Name := 'sColorSubStrValue' + GB.Name + IntToStr(i);
      Top := sColorSelectLabel.Top + sColorSelectLabel.Height;
      Width := 160;
      Left := sColorSelectLabel.Left;
      Style := csDropDownList;
      DropDownCount := 15;
      Items.Add('Выберите...');
      for j := 0 to ColorSubStrValue.Count - 1 do
        Items.Add(GetWord(ColorSubStrValue.Strings[j], '=', 1));

      if Items.IndexOf(Copy(ColorSubStrValue.Text, Pos(sColorValue.Text, ColorSubStrValue.Text), Length(sColorValue.Text))) <> -1 then
      begin
        ItemIndex := Items.IndexOf(sColorValue.Text);
        sColorValuePreview.Color := HexToTColor(Copy(ColorSubStrValue.Text, Pos(sColorValue.Text, ColorSubStrValue.Text) + Length(sColorValue.Text) + 2, 6));
      end
      else
        ItemIndex := 0;

      OnSelect := @ClickColorSelectComboBox;
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

function SaveColors(SB: TScrollBox):string;
var
  i, j, l: integer;
  GB: TGroupBox;
  RE: TRegExpr;
  Edt: TEdit;
  RG: TRadioGroup;
  s, t: string;
  Index: Integer;
  st: TStringList;
begin
with XCTuner_Form1 do
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
      if GB.Controls[j] is TEdit then
      if Pos('sColorValue', GB.Controls[j].Name) > 0 then
      begin
        Edt := TEdit(GB.Controls[j]);
        RE.Expression := '"' + Edt.Hint + '"(.*?)[\r\n]';
        if RE.Exec(colors.Text) then
        begin
          s := GetWord(RE.Substitute('$1'), ' ', 2);
          t := Edt.Text;
          if Pos('#', t) > 0 then
          begin
            t := StringReplace(t, '#', '0x', []);
            t := '"' + t + '"';
          end
          else
            t := '${"' + t + '"}';
          l := Search_Line(0, Edt.Hint, colors);
          colors.Strings[l] := Smart_Replacing(Edt.Hint, colors.Strings[l], t);
        end;
      end;
    end;
  end;
    if SB.Controls[i] is TRadioGroup then
    begin
      RG := TRadioGroup(SB.Controls[i]);
      RE.Expression := '"' + RG.Hint + '"(.*?)[\r\n]';
      if RE.Exec(colors.Text) then
      begin
        s := GetWord(RE.Substitute('$1'), ' ', 2);
        Index := RG.ItemIndex;
        case Index of
          0: t := 'true';
          1: t := 'false';
        end;
        l := Search_Line(0, RG.Hint, colors);
        colors.Strings[l] := StringReplace(colors.Strings[l], s, t, []);
      end;
    end;
end;
colors.SaveToFile(dir_xvm+colors_name);
st.Free;
RE.Free;
end;
end;

function SaveColorsEx(sExpr: string; SB: TScrollBox):string;
var
  i, j, l, k: integer;
  GB: TGroupBox;
  RE, sRE: TRegExpr;
  s, t: string;
  st: TStringList;
begin
with XCTuner_Form1 do
begin
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
st := TStringList.Create;
RE.Expression := sExpr + ']';
l := Search_Line(0, sExpr, colors);
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
        if pos('sColorValue', TEdit(GB.Controls[j]).Name) > 0 then
           t := TEdit(GB.Controls[j]).Text;
        if (s <> '') and (t <> '') then
        begin
          if Pos('#', t) > 0 then
             t := RecStartEnd(t)
          else
             t := '${"' + t + '"}';
        colors.Strings[l + k] := Smart_Replacing('value', colors.Strings[l + k], s);
        colors.Strings[l + k] := Smart_Replacing('color', colors.Strings[l + k], t);
        s := '';
        t := '';
        Inc(k) ;
        end;
      end;
    end;
  end;
end;
colors.SaveToFile(dir_xvm+colors_name);
st.Free;
sRE.Free;
RE.Free;
end;
end;

end.

