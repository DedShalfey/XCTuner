unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SLHColorPicker, mbColorPreview, Forms, Controls,
  Graphics, Dialogs, Buttons;

type

  { TColorSelectMy }

  TColorSelectMy = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    mbColorPreview1: TmbColorPreview;
    SLHColorPicker1: TSLHColorPicker;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SLHColorPicker1Change(Sender: TObject);
  private
    function ColorToHexMy(rgb:TColor):String;
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

procedure TColorSelectMy.BitBtn2Click(Sender: TObject);
begin
  ColorSelectMy.Close;
end;

procedure TColorSelectMy.BitBtn1Click(Sender: TObject);
var rgb: TColor;
begin
  rgb:=SLHColorPicker1.SelectedColor;
  case ColorSelect of
    1:
      begin

        XCTuner_Form1.mbColorPreview1.Color:=SLHColorPicker1.SelectedColor;
        XCTuner_Form1.Edit3.Text:=ColorToHexMy(rgb);
      end;
    2:
      begin
        XCTuner_Form1.mbColorPreview2.Color:=SLHColorPicker1.SelectedColor;
        XCTuner_Form1.Edit4.Text:=ColorToHexMy(rgb);
      end;
    3:
      begin
        XCTuner_Form1.mbColorPreview3.Color:=SLHColorPicker1.SelectedColor;
        XCTuner_Form1.Edit5.Text:=ColorToHexMy(rgb);
      end;
    4:
      begin
        XCTuner_Form1.mbColorPreview4.Color:=SLHColorPicker1.SelectedColor;
        XCTuner_Form1.Edit6.Text:=ColorToHexMy(rgb);
      end;
    5:
      begin
        XCTuner_Form1.mbColorPreview5.Color:=SLHColorPicker1.SelectedColor;
        XCTuner_Form1.Edit2.Text:=ColorToHexMy(rgb);
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
end;

function TColorSelectMy.ColorToHexMy(rgb:TColor): String;
begin
  Result:=Format('#%.2x%.2x%.2x', [byte(rgb),byte(rgb shr 8),byte(rgb shr 16)]);
end;

end.

