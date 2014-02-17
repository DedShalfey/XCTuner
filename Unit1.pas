unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, About, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    GroupBox1: TGroupBox;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox4: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox6: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox7: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    GroupBox8: TGroupBox;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    BitBtn1: TBitBtn;
    Image1: TImage;
    BitBtn2: TBitBtn;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    GroupBox11: TGroupBox;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    GroupBox12: TGroupBox;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    GroupBox13: TGroupBox;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    GroupBox14: TGroupBox;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    TabSheet2: TTabSheet;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    GroupBox17: TGroupBox;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    GroupBox18: TGroupBox;
    RadioButton27: TRadioButton;
    RadioButton28: TRadioButton;
    GroupBox19: TGroupBox;
    RadioButton29: TRadioButton;
    RadioButton30: TRadioButton;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    RadioButton31: TRadioButton;
    RadioButton32: TRadioButton;
    GroupBox23: TGroupBox;
    RadioButton33: TRadioButton;
    RadioButton34: TRadioButton;
    GroupBox24: TGroupBox;
    RadioButton35: TRadioButton;
    RadioButton36: TRadioButton;
    GroupBox25: TGroupBox;
    RadioButton37: TRadioButton;
    RadioButton38: TRadioButton;
    GroupBox26: TGroupBox;
    RadioButton39: TRadioButton;
    RadioButton40: TRadioButton;
    GroupBox27: TGroupBox;
    RadioButton41: TRadioButton;
    RadioButton42: TRadioButton;
    GroupBox28: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    RadioButton43: TRadioButton;
    RadioButton44: TRadioButton;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    GroupBox20: TGroupBox;
    Label17: TLabel;
    TrackBar1: TTrackBar;
    Label22: TLabel;
    SpinEdit5: TSpinEdit;
    GroupBox29: TGroupBox;
    TrackBar2: TTrackBar;
    SpinEdit6: TSpinEdit;
    GroupBox30: TGroupBox;
    SpinEdit7: TSpinEdit;
    TrackBar3: TTrackBar;
    Label23: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SearchLine_my();
    procedure SearchLine_my_2();
    procedure SearchLine_my_3();
    procedure xvm_info();
    procedure battle_loading();
    procedure battle_save();
    procedure xvm_loading();
    procedure rating_loading();
    procedure rating_save();
    { Public declarations }
  end;

var
  Form1: TForm1;
  xvm, battle, rating, temp_list: TStringList;
  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6: String;
  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_sN: String;
  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;
  Search: String;
  k, SearchLine: Integer;
  bs1_SL, bs2_SL, bs3_SL, bs4_SL, bs5_SL, bs6_SL: Integer;
  rat1_SL, rat2_SL, rat3_SL, rat4_SL, rat5_SL: Integer;

implementation

{$R *.dfm}


//////////////////////////////////////////////////////////////////////////
/////////////////Проверка версии файла (программы)////////////////////////
//////////////////////////////////////////////////////////////////////////

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

/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////


procedure TForm1.FormCreate(Sender: TObject);
begin
  // вывод версии файла в заголовок
  Form1.Caption:=Form1.Caption + ' Версия - ' + MyVersion(ParamStr(0));
  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  rating:=TStringList.Create;
  temp_list:=TStringList.Create;
  // Проверяем присутствие файла @xvm.xc в директории с программой
  if ((FileExists(ExtractFilePath(ParamStr(0))+'@xvm.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'battle.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'rating.xc'))) then
    begin
      xvm.LoadFromFile(ExtractFilePath(ParamStr(0))+'@xvm.xc');
      battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
      rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
      xvm_loading();
      battle_loading();
      rating_loading();
    end
  else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файлы конфига не найдены или отсутствуют! Поместите программу в папку с файлами конфига или проверте присутствие всех файлов! Программа закроется!');
      xvm.Free;
      battle.Free;
      rating.Free;
      temp_list.Free;
      Application.Terminate;
    end;
end;


procedure TForm1.battle_loading();
begin
  // загрузка данных из файла battle.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=battle.Text;

  Search:='"mirroredVehicleIcons"';
  SearchLine_my();
  b_s1:=battle.Strings[SearchLine].TrimRight;
  bs1_SL:=SearchLine;

  Search:='"showPostmortemTips"';
  SearchLine_my();
  b_s2:=battle.Strings[SearchLine].TrimRight;
  bs2_SL:=SearchLine;

  Search:='"removePanelsModeSwitcher"';
  SearchLine_my();
  b_s3:=battle.Strings[SearchLine].TrimRight;
  bs3_SL:=SearchLine;

  Search:='"highlightVehicleIcon"';
  SearchLine_my();
  b_s4:=battle.Strings[SearchLine].TrimRight;
  bs4_SL:=SearchLine;

  Search:='"useStandardMarkers"';
  SearchLine_my();
  b_s5:=battle.Strings[SearchLine].TrimRight;
  bs5_SL:=SearchLine;

  Search:='"hideTeamTextFields"';
  SearchLine_my();
  b_s6:=battle.Strings[SearchLine].TrimRight;
  bs6_SL:=SearchLine;

  if pos('false', b_s1)>0 then
  RadioButton1.Checked:=True else RadioButton2.Checked:=True;

  if pos('false', b_s2)>0 then
  RadioButton4.Checked:=True else RadioButton3.Checked:=True;

  if pos('false', b_s3)>0 then
  RadioButton5.Checked:=True else RadioButton6.Checked:=True;

  if pos('true', b_s4)>0 then
  RadioButton7.Checked:=True else RadioButton8.Checked:=True;

  if pos('false', b_s5)>0 then
  RadioButton10.Checked:=True else RadioButton9.Checked:=True;

  if pos('false', b_s6)>0 then
  RadioButton11.Checked:=True else RadioButton12.Checked:=True;

end;

procedure TForm1.battle_save;
begin
  // процедура подготовки изменений для сохранения в файл battle.xc
  if (RadioButton1.Checked=True) then
    b_s1:=StringReplace(b_s1, 'true', 'false', []) else b_s1:=StringReplace(b_s1, 'false', 'true', []);

  if (RadioButton4.Checked=True) then
    b_s2:=StringReplace(b_s2, 'true', 'false', []) else b_s2:=StringReplace(b_s2, 'false', 'true', []);

  if (RadioButton5.Checked=True) then
    b_s3:=StringReplace(b_s3, 'true', 'false', []) else b_s3:=StringReplace(b_s3, 'false', 'true', []);

  if (RadioButton7.Checked=True) then
    b_s4:=StringReplace(b_s4, 'false', 'true', []) else b_s4:=StringReplace(b_s4, 'true', 'false', []);

  if (RadioButton10.Checked=True) then
    b_s5:=StringReplace(b_s5, 'true', 'false', []) else b_s5:=StringReplace(b_s5, 'false', 'true', []);

  if (RadioButton11.Checked=True) then
    b_s6:=StringReplace(b_s6, 'true', 'false', []) else b_s6:=StringReplace(b_s6, 'false', 'true', []);

  battle.Delete(bs1_SL);
  battle.Insert(bs1_SL, b_s1);

  battle.Delete(bs2_SL);
  battle.Insert(bs2_SL, b_s2);

  battle.Delete(bs3_SL);
  battle.Insert(bs3_SL, b_s3);

  battle.Delete(bs4_SL);
  battle.Insert(bs4_SL, b_s4);

  battle.Delete(bs5_SL);
  battle.Insert(bs5_SL, b_s5);

  battle.Delete(bs6_SL);
  battle.Insert(bs6_SL, b_s6);
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
battle_save();
battle.SaveToFile(ExtractFilePath(ParamStr(0))+'battle.xc');
battle.Clear;
battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
battle_loading();
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
rating_loading();
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
rating_save();
rating.SaveToFile(ExtractFilePath(ParamStr(0))+'rating.xc');
rating.Clear;
rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // При закрытие на всякий случай очищаем переменную xvm
  xvm.Free;
  battle.Free;
  rating.Free;
  temp_list.Free;
end;



procedure TForm1.Image1Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;



procedure TForm1.rating_loading;
begin
  // загрузка данных из файла rating.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=rating.Text;

  Search:='"showPlayersStatistics"';
  SearchLine_my();
  rating_s1:=rating.Strings[SearchLine].TrimRight;
  rat1_SL:=SearchLine;

  Search:='"enableUserInfoStatistics"';
  SearchLine_my();
  rating_s2:=rating.Strings[SearchLine].TrimRight;
  rat2_SL:=SearchLine;

  Search:='"enableCompanyStatistics"';
  SearchLine_my();
  rating_s3:=rating.Strings[SearchLine].TrimRight;
  rat3_SL:=SearchLine;

  Search:='"loadEnemyStatsInFogOfWar"';
  SearchLine_my();
  rating_s4:=rating.Strings[SearchLine].TrimRight;
  rat4_SL:=SearchLine;

  Search:='"enableStatisticsLog"';
  SearchLine_my();
  rating_s5:=rating.Strings[SearchLine].TrimRight;
  rat5_SL:=SearchLine;

  if pos('true', rating_s1)>0 then
  RadioButton13.Checked:=True else RadioButton14.Checked:=True;

  if pos('true', rating_s2)>0 then
  RadioButton15.Checked:=True else RadioButton16.Checked:=True;

  if pos('true', rating_s3)>0 then
  RadioButton17.Checked:=True else RadioButton18.Checked:=True;

  if pos('true', rating_s4)>0 then
  RadioButton19.Checked:=True else RadioButton20.Checked:=True;

  if pos('true', rating_s5)>0 then
  RadioButton21.Checked:=True else RadioButton22.Checked:=True;

end;

procedure TForm1.rating_save;
begin
    // процедура подготовки изменений для сохранения в файл rating.xc
  if (RadioButton13.Checked=True) then
    rating_s1:=StringReplace(rating_s1, 'false', 'true', []) else rating_s1:=StringReplace(rating_s1, 'true', 'false', []);

  if (RadioButton15.Checked=True) then
    rating_s2:=StringReplace(rating_s2, 'false', 'true', []) else rating_s2:=StringReplace(rating_s2, 'true', 'false', []);

  if (RadioButton17.Checked=True) then
    rating_s3:=StringReplace(rating_s3, 'false', 'true', []) else rating_s3:=StringReplace(rating_s3, 'true', 'false', []);

  if (RadioButton19.Checked=True) then
    rating_s4:=StringReplace(rating_s4, 'false', 'true', []) else rating_s4:=StringReplace(rating_s4, 'true', 'false', []);

  if (RadioButton21.Checked=True) then
    rating_s5:=StringReplace(rating_s5, 'false', 'true', []) else rating_s5:=StringReplace(rating_s5, 'true', 'false', []);

  rating.Delete(rat1_SL);
  rating.Insert(rat1_SL, rating_s1);

  rating.Delete(rat2_SL);
  rating.Insert(rat2_SL, rating_s2);

  rating.Delete(rat3_SL);
  rating.Insert(rat3_SL, rating_s3);

  rating.Delete(rat4_SL);
  rating.Insert(rat4_SL, rating_s4);

  rating.Delete(rat5_SL);
  rating.Insert(rat5_SL, rating_s5);

end;


procedure TForm1.SearchLine_my;
// процедура поиска нужного слова // выводит номер строки где найдено это слово
begin
  for k := 0 to (temp_list.Count - 1) do
    if pos(Search, temp_list.Strings[k])>0 then
    begin
    SearchLine:= k;
    Exit;
    end;
end;

procedure TForm1.SearchLine_my_2;
// процедура нахождения слов во вложенных конструкциях 1 уровня
begin
//
end;

procedure TForm1.SearchLine_my_3;
// процедура нахождения слов во вложенных конструкциях 2 уровня
begin
//
end;

procedure TForm1.SpinEdit6Change(Sender: TObject);
begin
TrackBar2.Position:=SpinEdit6.Value;
end;

procedure TForm1.SpinEdit7Change(Sender: TObject);
begin
TrackBar3.Position:=SpinEdit7.Value;
end;

// процедура удаления лишних сиволов и пробелов в обработчике загр. информации из xvm
procedure TForm1.xvm_info;
begin
    if xvm_sN[Length(xvm_sN)]='"' then
    Delete(xvm_sN, Length(xvm_sN), 1)
    else
      begin
        Delete(xvm_sN, Length(xvm_sN)-1, 2);
      end;
  Delete(xvm_sN, 1, Pos(':', xvm_sN));
  xvm_sN:=xvm_sN.TrimLeft;
  Delete(xvm_sN, 1, 1);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
Label17.Caption:=IntToStr(TrackBar1.Position) + ' мс';
end;

procedure TForm1.TrackBar2Change(Sender: TObject);
begin
SpinEdit6.Value:=TrackBar2.Position;
end;

procedure TForm1.TrackBar3Change(Sender: TObject);
begin
SpinEdit7.Value:=TrackBar3.Position;
end;

procedure TForm1.xvm_loading;
begin
// загрузка данных из файла @xvm.xc
  temp_list.Clear;
  temp_list.Text:=xvm.Text;

  Search:='"configVersion"';
  SearchLine_my();
  xvm_s1:=xvm.Strings[SearchLine].Trim;

  Search:='"editorVersion"';
  SearchLine_my();
  xvm_s2:=xvm.Strings[SearchLine].Trim;

  Search:='"language"';
  SearchLine_my();
  xvm_s3:=xvm.Strings[SearchLine].Trim;

  Search:='"region"';
  SearchLine_my();
  xvm_s4:=xvm.Strings[SearchLine].Trim;

  Search:='"author"';
  SearchLine_my();
  xvm_s5:=xvm.Strings[SearchLine].Trim;

  Search:='"description"';
  SearchLine_my();
  xvm_s6:=xvm.Strings[SearchLine].Trim;

  Search:='"date"';
  SearchLine_my();
  xvm_s7:=xvm.Strings[SearchLine].Trim;

  Search:='"gameVersion"';
  SearchLine_my();
  xvm_s8:=xvm.Strings[SearchLine].Trim;

  // Обработка строк и вывод их в программу

  xvm_sN:=xvm_s1;
  xvm_info();
  xvm_s1:=xvm_sN;
  Label2.Caption:=xvm_s1;

  xvm_sN:=xvm_s2;
  xvm_info();
  xvm_s2:=xvm_sN;
  Label4.Caption:=xvm_s2;

  xvm_sN:=xvm_s3;
  xvm_info();
  xvm_s3:=xvm_sN;
  Label6.Caption:=xvm_s3;

  xvm_sN:=xvm_s4;
  xvm_info();
  xvm_s4:=xvm_sN;
  Label8.Caption:=xvm_s4;

  xvm_sN:=xvm_s5;
  xvm_info();
  xvm_s5:=xvm_sN;
  Label10.Caption:=xvm_s5;

  xvm_sN:=xvm_s6;
  xvm_info();
  xvm_s6:=xvm_sN;
  Label12.Caption:=xvm_s6;

  xvm_sN:=xvm_s7;
  xvm_info();
  xvm_s7:=xvm_sN;
  Label14.Caption:=xvm_s7;

  xvm_sN:=xvm_s8;
  xvm_info();
  xvm_s8:=xvm_sN;
  Label16.Caption:=xvm_s8;

end;





end.
