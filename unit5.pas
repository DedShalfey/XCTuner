unit Unit5;

{$mode objfpc}{$H+}

interface

uses
 Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
 Buttons;

type

 { TPromtForm }

 TPromtForm = class(TForm)
  BitBtn1: TBitBtn;
  BitBtn2: TBitBtn;
  Button1: TButton;
  Edit1: TEdit;
  Label1: TLabel;
  SelectDirectoryDialog1: TSelectDirectoryDialog;
  procedure BitBtn1Click(Sender: TObject);
  procedure Button1Click(Sender: TObject);
 private
  { private declarations }
 public
  { public declarations }
 end;

var
 PromtForm: TPromtForm;

implementation

{$R *.lfm}

{ TPromtForm }

procedure TPromtForm.Button1Click(Sender: TObject);
begin
 if SelectDirectoryDialog1.Execute then
    if FileExists(UTF8ToSys(SelectDirectoryDialog1.FileName) + '\xvm.xc') then
      Edit1.Text := SelectDirectoryDialog1.FileName
    else
      ShowMessage('В указанной папке отсутствует файл xvm.xc!');
end;

procedure TPromtForm.BitBtn1Click(Sender: TObject);
begin
 if Edit1.Text = '' then Close;
end;

end.

