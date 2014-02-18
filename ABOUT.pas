unit About;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}


function MyVersion(Files: string): string;
var
  Buffer: string;
  fInfoSize: DWORD;
  function InitVersion: boolean;
  var
    FilenamePointer: PChar;
  begin
    Result := True;
    FilenamePointer := PChar(Files);
    fInfoSize := GetFileVersionInfoSize(FilenamePointer, fInfoSize);
    if fInfoSize > 0 then
    begin
      SetLength(Buffer, fInfoSize);
      if not GetFileVersionInfo(FilenamePointer, 0, fInfoSize, PChar(Buffer))
        then
      begin
        Result := False;
      end;
    end; //if
  end; //InitVersion

  function GetVersion(whatToGet: string): string;
  var
    tmpVersion: string;
    Len, Len2: DWORD;
    Value: PChar;
    temp: PLongInt;
    tempStr: string;
  begin
    Result := '';
    if fInfoSize > 0 then
    begin
      SetLength(tmpVersion, 200);
      Value := @tmpVersion;
      VerQueryValue(PChar(Buffer), '\VarFileInfo\Translation', Pointer(temp),
        Len2);
      tempStr := Format('%s%.4x%.4x\%s%s', ['\StringFileInfo\', LoWord(temp^),
        HiWord(temp^), whattoget, #0]);
      if VerQueryValue(PChar(Buffer), PChar(tempStr), Pointer(Value), Len) then
        Result := Value;
    end; // if
  end; //getversion
begin
  Buffer := '';
  try
    InitVersion;
    result := GetVersion('FileVersion');
  except
    Result := '';
  end;
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
Version.Caption:='Версия - ' + MyVersion(ParamStr(0));
end;

end.

