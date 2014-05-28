unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  ExtCtrls, StdCtrls, ShellApi;

type

  { TAbout }

  TAbout = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Label4Click(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Label6Click(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label6MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.lfm}

{ TAbout }

procedure TAbout.Label4Click(Sender: TObject);
var url: String;
begin
  url:='http://www.koreanrandom.com/forum/topic/12494-xctuner-настройщик-конфигов-версия-01847-дата-110314-статус-beta/';
  ShellExecute(0,PChar('open'),PChar('explorer'),PChar(url),nil,5);
end;

procedure TAbout.Label4MouseLeave(Sender: TObject);
begin
  Label4.Font.Style:=Label4.Font.Style-[fsUnderLine];
end;


procedure TAbout.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label4.Font.Style:=Label4.Font.Style+[fsUnderLine];
end;

procedure TAbout.Label6Click(Sender: TObject);
var url: String;
begin
  url:='http://shalfey-lab.ru/testirovanie/';
  ShellExecute(0,PChar('open'),PChar('explorer'),PChar(url),nil,5);
end;

procedure TAbout.Label6MouseLeave(Sender: TObject);
begin
  Label6.Font.Style:=Label6.Font.Style-[fsUnderLine];
end;

procedure TAbout.Label6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  Label6.Font.Style:=Label6.Font.Style+[fsUnderLine];
end;

end.

