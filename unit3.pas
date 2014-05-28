unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, VpCalendar, Forms, Controls, Graphics, Dialogs,
  Buttons, StdCtrls, EditBtn;

type

  { TEdit_XVM }

  TEdit_XVM = class(TForm)
    BSave1: TBitBtn;
    BCancel: TBitBtn;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label1: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    procedure BCancelClick(Sender: TObject);
    procedure BSave1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Edit_XVM: TEdit_XVM;

implementation

uses Unit1;

{$R *.lfm}

{ TEdit_XVM }

procedure TEdit_XVM.BCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TEdit_XVM.BSave1Click(Sender: TObject);
begin
  xvm_s1:=xvm.Strings[xvm1_SL];
  xvm_s1:=XCTuner_Form1.Smart_Replacing('"configVersion"', xvm_s1, XCTuner_Form1.RecStartEnd(Edit1.Text));
  xvm.Delete(xvm1_SL);
  xvm.Insert(xvm1_SL, xvm_s1);

  xvm_s2:=xvm.Strings[xvm2_SL];
  xvm_s2:=XCTuner_Form1.Smart_Replacing('"editorVersion"', xvm_s2, XCTuner_Form1.RecStartEnd(Edit2.Text));
  xvm.Delete(xvm2_SL);
  xvm.Insert(xvm2_SL, xvm_s2);

  xvm_s3:=xvm.Strings[xvm3_SL];
  xvm_s3:=XCTuner_Form1.Smart_Replacing('"language"', xvm_s3, XCTuner_Form1.RecStartEnd(Edit3.Text));
  xvm.Delete(xvm3_SL);
  xvm.Insert(xvm3_SL, xvm_s3);

  xvm_s4:=xvm.Strings[xvm4_SL];
  xvm_s4:=XCTuner_Form1.Smart_Replacing('"region"', xvm_s4, XCTuner_Form1.RecStartEnd(Edit4.Text));
  xvm.Delete(xvm4_SL);
  xvm.Insert(xvm4_SL, xvm_s4);

  xvm_s5:=xvm.Strings[xvm5_SL];
  xvm_s5:=XCTuner_Form1.Smart_Replacing('"author"', xvm_s5, XCTuner_Form1.RecStartEnd(Edit5.Text));
  xvm.Delete(xvm5_SL);
  xvm.Insert(xvm5_SL, xvm_s5);

  xvm_s6:=xvm.Strings[xvm6_SL];
  xvm_s6:=XCTuner_Form1.Smart_Replacing('"description"', xvm_s6, XCTuner_Form1.RecStartEnd(Edit6.Text));
  xvm.Delete(xvm6_SL);
  xvm.Insert(xvm6_SL, xvm_s6);

  xvm_s7:=xvm.Strings[xvm7_SL];
  xvm_s7:=XCTuner_Form1.Smart_Replacing('"date"', xvm_s7, XCTuner_Form1.RecStartEnd(DateEdit1.Text));
  xvm.Delete(xvm7_SL);
  xvm.Insert(xvm7_SL, xvm_s7);

  xvm_s8:=xvm.Strings[xvm8_SL];
  xvm_s8:=XCTuner_Form1.Smart_Replacing('"gameVersion"', xvm_s8, XCTuner_Form1.RecStartEnd(Edit7.Text));
  xvm.Delete(xvm8_SL);
  xvm.Insert(xvm8_SL, xvm_s8);

  xvm_s9:=xvm.Strings[xvm9_SL];
  xvm_s9:=XCTuner_Form1.Smart_Replacing('"url"', xvm_s9, XCTuner_Form1.RecStartEnd(Edit8.Text));
  xvm.Delete(xvm9_SL);
  xvm.Insert(xvm9_SL, xvm_s9);

  xvm_s10:=xvm.Strings[xvm10_SL];
  xvm_s10:=XCTuner_Form1.Smart_Replacing('"modMinVersion"', xvm_s10, XCTuner_Form1.RecStartEnd(Edit9.Text));
  xvm.Delete(xvm10_SL);
  xvm.Insert(xvm10_SL, xvm_s10);

  xvm.SaveToFile(dir_xvm+xvm_file_name);
  xvm.Clear;
  xvm.LoadFromFile(dir_xvm+xvm_file_name);
  XCTuner_Form1.xvm_loading();

  Close;
end;

end.

