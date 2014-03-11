unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, VpCalendar, Forms, Controls, Graphics, Dialogs,
  Buttons, StdCtrls, Calendar, EditBtn;

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
    Label1: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
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
  xvm_s1_2:=xvm.Strings[xvm1_SL];
  xvm_s1_2:=StringReplace(xvm_s1_2, xvm_s1, Edit1.Text, []);
  xvm.Delete(xvm1_SL);
  xvm.Insert(xvm1_SL, xvm_s1_2);

  xvm_s2_2:=xvm.Strings[xvm2_SL];
  xvm_s2_2:=StringReplace(xvm_s2_2, xvm_s2, Edit2.Text, []);
  xvm.Delete(xvm2_SL);
  xvm.Insert(xvm2_SL, xvm_s2_2);

  xvm_s3_2:=xvm.Strings[xvm3_SL];
  xvm_s3_2:=StringReplace(xvm_s3_2, xvm_s3, Edit3.Text, []);
  xvm.Delete(xvm3_SL);
  xvm.Insert(xvm3_SL, xvm_s3_2);

  xvm_s4_2:=xvm.Strings[xvm4_SL];
  xvm_s4_2:=StringReplace(xvm_s4_2, xvm_s4, Edit4.Text, []);
  xvm.Delete(xvm4_SL);
  xvm.Insert(xvm4_SL, xvm_s4_2);

  xvm_s5_2:=xvm.Strings[xvm5_SL];
  xvm_s5_2:=StringReplace(xvm_s5_2, xvm_s5, Edit5.Text, []);
  xvm.Delete(xvm5_SL);
  xvm.Insert(xvm5_SL, xvm_s5_2);

  xvm_s6_2:=xvm.Strings[xvm6_SL];
  xvm_s6_2:=StringReplace(xvm_s6_2, xvm_s6, Edit6.Text, []);
  xvm.Delete(xvm6_SL);
  xvm.Insert(xvm6_SL, xvm_s6_2);

  xvm_s7_2:=xvm.Strings[xvm7_SL];
  xvm_s7_2:=StringReplace(xvm_s7_2, xvm_s7, DateEdit1.Text, []);
  xvm.Delete(xvm7_SL);
  xvm.Insert(xvm7_SL, xvm_s7_2);

  xvm_s8_2:=xvm.Strings[xvm8_SL];
  xvm_s8_2:=StringReplace(xvm_s8_2, xvm_s8, Edit7.Text, []);
  xvm.Delete(xvm8_SL);
  xvm.Insert(xvm8_SL, xvm_s8_2);

  xvm_s9_2:=xvm.Strings[xvm9_SL];
  xvm_s9_2:=StringReplace(xvm_s9_2, xvm_s9, Edit8.Text, []);
  xvm.Delete(xvm9_SL);
  xvm.Insert(xvm9_SL, xvm_s9_2);

  xvm.SaveToFile(dir_xvm+xvm_file_name);
  xvm.Clear;
  xvm.LoadFromFile(dir_xvm+xvm_file_name);
  XCTuner_Form1.xvm_loading();

  Close;
end;

end.

