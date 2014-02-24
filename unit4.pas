unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, cyColorGrid, SLHColorPicker, mbColorPreview,
  Forms, Controls, Graphics, Dialogs, Buttons, StdCtrls;

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

procedure TColorSelectMy.cyColorGrid1BoxClick(Sender: TObject; aRow: integer;
  aCol: integer; aColor: TColor);
begin
  SLHColorPicker1.SelectedColor:=cyColorGrid1.Selection;
  mbColorPreview1.Color:=cyColorGrid1.Selection;
  Label2.Caption:='Значение: ' + ColorToHexMy(cyColorGrid1.Selection);
end;

procedure TColorSelectMy.BitBtn1Click(Sender: TObject);
var rgb: TColor;
begin
  rgb:=mbColorPreview1.Color;
  case ColorSelect of
    1:
      begin
        XCTuner_Form1.mbColorPreview1.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit3.Text:=ColorToHexMy(rgb);
      end;
    2:
      begin
        XCTuner_Form1.mbColorPreview2.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit4.Text:=ColorToHexMy(rgb);
      end;
    3:
      begin
        XCTuner_Form1.mbColorPreview3.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit5.Text:=ColorToHexMy(rgb);
      end;
    4:
      begin
        XCTuner_Form1.mbColorPreview4.Color:=mbColorPreview1.Color;
        XCTuner_Form1.Edit6.Text:=ColorToHexMy(rgb);
      end;
    5:
      begin
        XCTuner_Form1.mbColorPreview5.Color:=mbColorPreview1.Color;
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
  Label2.Caption:='Значение: ' + ColorToHexMy(SLHColorPicker1.SelectedColor);
end;

function TColorSelectMy.ColorToHexMy(rgb:TColor): String;
begin
  Result:=Format('#%.2x%.2x%.2x', [byte(rgb),byte(rgb shr 8),byte(rgb shr 16)]);
end;

end.

