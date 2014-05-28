unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, cyColorGrid, SLHColorPicker, mbColorPreview,
  Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls, ComCtrls;

type

  { TColorSelectMy }

  TColorSelectMy = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cyColorGrid1: TcyColorGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mbColorPreview1: TmbColorPreview;
    SLHColorPicker1: TSLHColorPicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cyColorGrid1BoxClick(Sender: TObject; aRow: integer;
      aCol: integer; aColor: TColor);
    procedure FormActivate(Sender: TObject);
    procedure SLHColorPicker1Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  ColorSelectMy: TColorSelectMy;

implementation

{$R *.lfm}

uses Unit1;

{ TColorSelectMy }

function GetColorBtn: TmbColorPreview;
var
  MP, SP: TTabSheet;
  SB: TScrollBox;
  GB: TGroupBox;
  mbP: TmbColorPreview;
  i: integer;
begin
  MP := TTabSheet(XCTuner_Form1.PageControl11.ActivePage);
  for i := 0 to MP.ControlCount - 1 do
  if MP.Controls[i] is TPageControl then
    SP := TTabSheet(TPageControl(MP.Controls[i]).ActivePage);
  SB := TScrollBox(SP.FindChildControl(SBSelect));
  GB := TGroupBox(SB.FindChildControl(GBSelect));
  mbP := TmbColorPreview(GB.FindChildControl(ColSelectBtn));
  Result := mbp;
end;

function GetColorEdit: TEdit;
var
  MP, SP: TTabSheet;
  SB: TScrollBox;
  GB: TGroupBox;
  Edt: TEdit;
  i: integer;
begin
  MP := TTabSheet(XCTuner_Form1.PageControl11.ActivePage);
  for i := 0 to MP.ControlCount - 1 do
  if MP.Controls[i] is TPageControl then
    SP := TTabSheet(TPageControl(MP.Controls[i]).ActivePage);
  SB := TScrollBox(SP.FindChildControl(SBSelect));
  GB := TGroupBox(SB.FindChildControl(GBSelect));
  Edt := TEdit(GB.FindChildControl(ColSelectEdit));
  Result := Edt;
end;

procedure TColorSelectMy.BitBtn2Click(Sender: TObject);
begin
  ColorSelectMy.Close;
end;

procedure TColorSelectMy.cyColorGrid1BoxClick(Sender: TObject; aRow: integer;
  aCol: integer; aColor: TColor);
begin
  SLHColorPicker1.SelectedColor:=cyColorGrid1.Selection;
  mbColorPreview1.Color:=cyColorGrid1.Selection;
  Label2.Caption:='Значение: ' + XCTuner_Form1.ColorToHex(cyColorGrid1.Selection);
end;

procedure TColorSelectMy.BitBtn1Click(Sender: TObject);
var rgb: TColor;
begin
  rgb:=mbColorPreview1.Color;
  case ColorSelect of
    1:
      begin
        XCTuner_Form1.mbColorPreview1.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit3.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    2:
      begin
        XCTuner_Form1.mbColorPreview2.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit4.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    3:
      begin
        XCTuner_Form1.mbColorPreview3.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit5.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    4:
      begin
        XCTuner_Form1.mbColorPreview4.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit6.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    5:
      begin
        XCTuner_Form1.mbColorPreview5.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit2.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    6:
      begin
        XCTuner_Form1.mbColorPreview6.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit48.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    7:
      begin
        XCTuner_Form1.mbColorPreview7.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit53.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    8:
      begin
        XCTuner_Form1.mbColorPreview8.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit54.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    9:
      begin
        XCTuner_Form1.mbColorPreview9.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit55.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    10:
      begin
        XCTuner_Form1.mbColorPreview10.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit56.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    11:
      begin
        XCTuner_Form1.mbColorPreview11.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit57.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    12:
      begin
        XCTuner_Form1.mbColorPreview12.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit58.Text:=XCTuner_Form1.ColorToHex(rgb);
      end;
    13:
      begin
        GetColorBtn.Color := mbColorPreview1.Color;
        GetColorEdit.Text := XCTuner_Form1.ColorToHex(rgb);
      end;
  end;
  ColorSelectMy.Close;
end;

procedure TColorSelectMy.FormActivate(Sender: TObject);
begin
 mbColorPreview1.Color:=SLHColorPicker1.SelectedColor;
end;

procedure TColorSelectMy.SLHColorPicker1Change(Sender: TObject);
begin
  mbColorPreview1.Color:=SLHColorPicker1.SelectedColor;
  Label2.Caption:='Значение: ' + XCTuner_Form1.ColorToHex(SLHColorPicker1.SelectedColor);
end;

end.

