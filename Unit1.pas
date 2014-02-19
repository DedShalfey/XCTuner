unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, ComCtrls, StdCtrls, Spin, Unit2;
{$H+}

type

  { TXCTuner_Form1 }

  TXCTuner_Form1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitRefresh2: TBitBtn;
    BitRefresh3: TBitBtn;
    BitRefresh4: TBitBtn;
    BitSave2: TBitBtn;
    BitSave3: TBitBtn;
    BitSave4: TBitBtn;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    GroupBox23: TGroupBox;
    GroupBox24: TGroupBox;
    GroupBox25: TGroupBox;
    GroupBox26: TGroupBox;
    GroupBox27: TGroupBox;
    GroupBox28: TGroupBox;
    GroupBox29: TGroupBox;
    GroupBox30: TGroupBox;
    GroupBox31: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    RadioButton27: TRadioButton;
    RadioButton28: TRadioButton;
    RadioButton29: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton30: TRadioButton;
    RadioButton31: TRadioButton;
    RadioButton32: TRadioButton;
    RadioButton33: TRadioButton;
    RadioButton34: TRadioButton;
    RadioButton35: TRadioButton;
    RadioButton36: TRadioButton;
    RadioButton37: TRadioButton;
    RadioButton38: TRadioButton;
    RadioButton39: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton40: TRadioButton;
    RadioButton41: TRadioButton;
    RadioButton42: TRadioButton;
    RadioButton43: TRadioButton;
    RadioButton44: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit10: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    tAbout: TBitBtn;
    BitBtn3: TBitBtn;
    BitRefresh1: TBitBtn;
    BitSave1: TBitBtn;
    BtExit: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    PageControl1: TPageControl;
    Panel1: TPanel;
    RadioButton13: TRadioButton;
    RadioButton22: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitRefresh1Click(Sender: TObject);
    procedure BitRefresh2Click(Sender: TObject);
    procedure BitRefresh3Click(Sender: TObject);
    procedure BitRefresh4Click(Sender: TObject);
    procedure BitSave1Click(Sender: TObject);
    procedure BitSave2Click(Sender: TObject);
    procedure BitSave3Click(Sender: TObject);
    procedure BitSave4Click(Sender: TObject);
    procedure BtExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure tAboutClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
  private
    { private declarations }
  public
    procedure SearchLine_my();
    procedure SearchLine_my_2();
    procedure SearchLine_my_3();
    procedure xvm_info();
    procedure search_info();
    procedure xvm_loading();
    procedure battle_loading();
    procedure battle_save();
    procedure login_loading();
    procedure login_save();
    procedure hangar_loading();
    procedure hangar_save();
    procedure rating_loading();
    procedure rating_save();
    { public declarations }
  end;

var
  XCTuner_Form1: TXCTuner_Form1;
  xvm, battle, login, hangar, rating, temp_list: TStringList;
  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6, b_s7, b_s8, b_s7_2, b_s8_2: String;
  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_sN: String;
  login_s1, login_s2, login_s3, login_s4, login_s5, login_s6, login_s5_2, login_s6_2: string;

  hangar_s1, hangar_s2, hangar_s3, hangar_s4, hangar_s5, hangar_s6, hangar_s7: string;
  hangar_s8, hangar_s9, hangar_s10, hangar_s11, hangar_s12, hangar_s13: string;
  hangar_s8_2, hangar_s9_2, hangar_s10_2, hangar_s11_2, hangar_s12_2, hangar_s13_2: string;

  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;
  Search, search_sN: String;
  k, SearchLine: Integer;
  bs1_SL, bs2_SL, bs3_SL, bs4_SL, bs5_SL, bs6_SL, bs7_SL, bs8_SL: Integer;
  log1_SL, log2_SL, log3_SL, log4_SL, log5_SL, log6_SL: Integer;

  hgar1_SL, hgar2_SL, hgar3_SL, hgar4_SL, hgar5_SL, hgar6_SL, hgar7_SL: Integer;
  hgar8_SL, hgar9_SL, hgar10_SL, hgar11_SL, hgar12_SL, hgar13_SL: Integer;

  rat1_SL, rat2_SL, rat3_SL, rat4_SL, rat5_SL: Integer;

implementation

{$R *.lfm}

{ TXCTuner_Form1 }


procedure TXCTuner_Form1.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Font.Style:=[fsBold];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[];
  PageControl1.ActivePage:=TabSheet1;
end;

procedure TXCTuner_Form1.BitBtn2Click(Sender: TObject);
begin
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[fsBold];
  BitBtn3.Font.Style:=[];
  PageControl1.ActivePage:=TabSheet2;
end;

procedure TXCTuner_Form1.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[fsBold];
  PageControl1.ActivePage:=TabSheet3;
end;

procedure TXCTuner_Form1.BitRefresh1Click(Sender: TObject);
begin
  rating_loading();
end;

procedure TXCTuner_Form1.BitRefresh2Click(Sender: TObject);
begin
  battle_loading();
end;

procedure TXCTuner_Form1.BitRefresh3Click(Sender: TObject);
begin
  login_loading();
end;

procedure TXCTuner_Form1.BitRefresh4Click(Sender: TObject);
begin
  hangar_loading();
end;

procedure TXCTuner_Form1.BitSave1Click(Sender: TObject);
begin
  rating_save();
  rating.SaveToFile(ExtractFilePath(ParamStr(0))+'rating.xc');
  rating.Clear;
  rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
end;

procedure TXCTuner_Form1.BitSave2Click(Sender: TObject);
begin
  battle_save();
  battle.SaveToFile(ExtractFilePath(ParamStr(0))+'battle.xc');
  battle.Clear;
  battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
end;

procedure TXCTuner_Form1.BitSave3Click(Sender: TObject);
begin
  login_save();
  login.SaveToFile(ExtractFilePath(ParamStr(0))+'login.xc');
  login.Clear;
  login.LoadFromFile(ExtractFilePath(ParamStr(0))+'login.xc');
end;

procedure TXCTuner_Form1.BitSave4Click(Sender: TObject);
begin
  hangar_save();
  hangar.SaveToFile(ExtractFilePath(ParamStr(0))+'hangar.xc');
  hangar.Clear;
  hangar.LoadFromFile(ExtractFilePath(ParamStr(0))+'hangar.xc');
end;

procedure TXCTuner_Form1.BtExitClick(Sender: TObject);
begin
  XCTuner_Form1.Close;
end;

procedure TXCTuner_Form1.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  // При закрытие на всякий случай очищаем переменную xvm
  xvm.Free;
  battle.Free;
  login.Free;
  hangar.Free;
  rating.Free;
  temp_list.Free;
end;

procedure TXCTuner_Form1.FormCreate(Sender: TObject);
begin
  // вывод версии файла в заголовок
  XCTuner_Form1.Caption:=XCTuner_Form1.Caption + '   Версия - ' + '0.1.6.20';
  BitBtn1.Click;
  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  login:=TStringList.Create;
  hangar:=TStringList.Create;
  rating:=TStringList.Create;
  temp_list:=TStringList.Create;
  // Проверяем присутствие файла @xvm.xc в директории с программой
  if ((FileExists(ExtractFilePath(ParamStr(0))+'@xvm.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'battle.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'login.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'hangar.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'rating.xc'))) then
    begin
      xvm.LoadFromFile(ExtractFilePath(ParamStr(0))+'@xvm.xc');
      battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
      login.LoadFromFile(ExtractFilePath(ParamStr(0))+'login.xc');
      login.LoadFromFile(ExtractFilePath(ParamStr(0))+'hangar.xc');
      rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
      xvm_loading();
      battle_loading();
      login_loading();
      hangar_loading();
      rating_loading();
    end
  else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файлы конфига не найдены или отсутствуют! Поместите программу в папку с файлами конфига или проверте присутствие всех файлов! Программа закроется!');
      xvm.Free;
      battle.Free;
      login.Free;
      rating.Free;
      temp_list.Free;
      Application.Terminate;
    end;
end;

procedure TXCTuner_Form1.SpinEdit10Change(Sender: TObject);
begin
  TrackBar1.Position:=SpinEdit10.Value;
end;

procedure TXCTuner_Form1.SpinEdit8Change(Sender: TObject);
begin
  TrackBar2.Position:=SpinEdit8.Value;
end;

procedure TXCTuner_Form1.SpinEdit9Change(Sender: TObject);
begin
  TrackBar3.Position:=SpinEdit9.Value;
end;

procedure TXCTuner_Form1.tAboutClick(Sender: TObject);
begin
  About.ShowModal;
end;

procedure TXCTuner_Form1.TrackBar1Change(Sender: TObject);
begin
  SpinEdit10.Value:=TrackBar1.Position;
end;

procedure TXCTuner_Form1.TrackBar2Change(Sender: TObject);
begin
  SpinEdit8.Value:=TrackBar2.Position;
end;

procedure TXCTuner_Form1.TrackBar3Change(Sender: TObject);
begin
  SpinEdit9.Value:=TrackBar3.Position;
end;

procedure TXCTuner_Form1.SearchLine_my;
// процедура поиска нужного слова // выводит номер строки где найдено это слово
begin
  for k := 0 to (temp_list.Count - 1) do
    if pos(Search, temp_list.Strings[k])>0 then
    begin
    SearchLine:= k;
    Exit;
    end;
end;

procedure TXCTuner_Form1.SearchLine_my_2;
// процедура нахождения слов во вложенных конструкциях 1 уровня
begin
  for k := SearchLine to (temp_list.Count - 1) do
    if pos(Search, temp_list.Strings[k])>0 then
    begin
    SearchLine:= k;
    Exit;
    end;
end;

procedure TXCTuner_Form1.SearchLine_my_3;
// процедура нахождения слов во вложенных конструкциях 2 уровня
begin
//
end;

// процедура удаления лишних сиволов и пробелов в обработчике загр. информации из xvm
procedure TXCTuner_Form1.xvm_info;
begin
  if xvm_sN[Length(xvm_sN)]='"' then
    Delete(xvm_sN, Length(xvm_sN), 1)
    else
      begin
        Delete(xvm_sN, Length(xvm_sN)-1, 2);
      end;
  Delete(xvm_sN, 1, Pos(':', xvm_sN));
  xvm_sN:=TrimLeft(xvm_sN);
  Delete(xvm_sN, 1, 1);
end;

// процедура удаления лишних сиволов и пробелов в обработчике загр. информации из файлов xvm
procedure TXCTuner_Form1.search_info;
begin
  if search_sN[Length(search_sN)]=',' then
    begin
      Delete(search_sN, Length(search_sN), 1);
      Delete(search_sN, 1, Pos(':', search_sN));
      search_sN:=Trim(search_sN);
    end
    else
      begin
        Delete(search_sN, 1, Pos(':', search_sN));
        search_sN:=Trim(search_sN);
      end;
end;

procedure TXCTuner_Form1.battle_loading;
begin
  battle.Clear;
  battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
  // загрузка данных из файла battle.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=battle.Text;

  Search:='"mirroredVehicleIcons"';
  SearchLine_my();
  b_s1:=TrimRight(battle.Strings[SearchLine]);
  bs1_SL:=SearchLine;

  Search:='"showPostmortemTips"';
  SearchLine_my();
  b_s2:=TrimRight(battle.Strings[SearchLine]);
  bs2_SL:=SearchLine;

  Search:='"removePanelsModeSwitcher"';
  SearchLine_my();
  b_s3:=TrimRight(battle.Strings[SearchLine]);
  bs3_SL:=SearchLine;

  Search:='"highlightVehicleIcon"';
  SearchLine_my();
  b_s4:=TrimRight(battle.Strings[SearchLine]);
  bs4_SL:=SearchLine;

  Search:='"useStandardMarkers"';
  SearchLine_my();
  b_s5:=TrimRight(battle.Strings[SearchLine]);
  bs5_SL:=SearchLine;

  Search:='"hideTeamTextFields"';
  SearchLine_my();
  b_s6:=TrimRight(battle.Strings[SearchLine]);
  bs6_SL:=SearchLine;

  Search:='"expertPanel"';
  SearchLine_my();
  Search:='"delay"';
  SearchLine_my_2();
  b_s7:=TrimRight(battle.Strings[SearchLine]);
  bs7_SL:=SearchLine;
  search_sN:=b_s7;
  search_info();
  b_s7:=search_sN;
  SpinEdit1.Value:=StrToInt(b_s7);

  Search:='"expertPanel"';
  SearchLine_my();
  Search:='"scale"';
  SearchLine_my_2();
  b_s8:=TrimRight(battle.Strings[SearchLine]);
  bs8_SL:=SearchLine;
  search_sN:=b_s8;
  search_info();
  b_s8:=search_sN;
  SpinEdit2.Value:=StrToInt(b_s8);

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

procedure TXCTuner_Form1.login_loading;
// загрузка из файла login.xc и обработка данных
begin
  login.Clear;
  login.LoadFromFile(ExtractFilePath(ParamStr(0))+'login.xc');

  temp_list.Clear;
  temp_list.Text:=login.Text;

  Search:='"skipIntro"';
  SearchLine_my();
  login_s1:=TrimRight(login.Strings[SearchLine]);
  log1_SL:=SearchLine;

  Search:='"autologin"';
  SearchLine_my();
  login_s2:=TrimRight(login.Strings[SearchLine]);
  log2_SL:=SearchLine;


  Search:='"confirmOldReplays"';
  SearchLine_my();
  login_s3:=TrimRight(login.Strings[SearchLine]);
  log3_SL:=SearchLine;

  Search:='"pingServers"';
  SearchLine_my();
  Search:='"enabled"';
  SearchLine_my_2();
  login_s4:=TrimRight(login.Strings[SearchLine]);
  log4_SL:=SearchLine;

  Search:='"pingServers"';
  SearchLine_my();
  Search:='"x"';
  SearchLine_my_2();
  login_s5:=TrimRight(login.Strings[SearchLine]);
  log5_SL:=SearchLine;
  search_sN:=login_s5;
  search_info();
  login_s5:=search_sN;
  SpinEdit3.Value:=StrToInt(login_s5);

  Search:='"pingServers"';
  SearchLine_my();
  Search:='"y"';
  SearchLine_my_2();
  login_s6:=TrimRight(login.Strings[SearchLine]);
  log6_SL:=SearchLine;
  search_sN:=login_s6;
  search_info();
  login_s6:=search_sN;
  SpinEdit4.Value:=StrToInt(login_s6);


  if pos('true', login_s1)>0 then
  RadioButton23.Checked:=True else RadioButton24.Checked:=True;

  if pos('true', login_s2)>0 then
  RadioButton25.Checked:=True else RadioButton26.Checked:=True;

  if pos('true', login_s3)>0 then
  RadioButton27.Checked:=True else RadioButton28.Checked:=True;

  if pos('true', login_s4)>0 then
  RadioButton29.Checked:=True else RadioButton30.Checked:=True;

end;

procedure TXCTuner_Form1.login_save;
begin
  // сохранение изменений в файл login.xc
  if (RadioButton23.Checked=True) then
    login_s1:=StringReplace(login_s1, 'false', 'true', []) else login_s1:=StringReplace(login_s1, 'true', 'false', []);

  if (RadioButton25.Checked=True) then
    login_s2:=StringReplace(login_s2, 'false', 'true', []) else login_s2:=StringReplace(login_s2, 'true', 'false', []);

  if (RadioButton27.Checked=True) then
    login_s3:=StringReplace(login_s3, 'false', 'true', []) else login_s3:=StringReplace(login_s3, 'true', 'false', []);

  if (RadioButton29.Checked=True) then
    login_s4:=StringReplace(login_s4, 'false', 'true', []) else login_s4:=StringReplace(login_s4, 'true', 'false', []);


  login.Delete(log1_SL);
  login.Insert(log1_SL, login_s1);

  login.Delete(log2_SL);
  login.Insert(log2_SL, login_s2);

  login.Delete(log3_SL);
  login.Insert(log3_SL, login_s3);

  login.Delete(log4_SL);
  login.Insert(log4_SL, login_s4);

  login_s5_2:=login.Strings[log5_SL];
  login_s5_2:=StringReplace(login_s5_2, login_s5, IntToStr(SpinEdit3.Value), []);
  login.Delete(log5_SL);
  login.Insert(log5_SL, login_s5_2);

  login_s6_2:=login.Strings[log6_SL];
  login_s6_2:=StringReplace(login_s6_2, login_s6, IntToStr(SpinEdit4.Value), []);
  login.Delete(log6_SL);
  login.Insert(log6_SL, login_s6_2);
end;

// загрузка из файла hangar
procedure TXCTuner_Form1.hangar_loading;
begin
  hangar.Clear;
  hangar.LoadFromFile(ExtractFilePath(ParamStr(0))+'hangar.xc');
  // загрузка данных из файла hangar.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=hangar.Text;

  Search:='"hideTutorial"';
  SearchLine_my();
  hangar_s1:=TrimRight(hangar.Strings[SearchLine]);
  hgar1_SL:=SearchLine;

  Search:='"xwnInCompany"';
  SearchLine_my();
  hangar_s2:=TrimRight(hangar.Strings[SearchLine]);
  hgar2_SL:=SearchLine;

  Search:='"masteryMarkInTankCarousel"';
  SearchLine_my();
  hangar_s3:=TrimRight(hangar.Strings[SearchLine]);
  hgar3_SL:=SearchLine;

  Search:='"masteryMarkInTechTree"';
  SearchLine_my();
  hangar_s4:=TrimRight(hangar.Strings[SearchLine]);
  hgar4_SL:=SearchLine;

  Search:='"hidePricesInTechTree"';
  SearchLine_my();
  hangar_s5:=TrimRight(hangar.Strings[SearchLine]);
  hgar5_SL:=SearchLine;

  Search:='"widgetsEnabled"';
  SearchLine_my();
  hangar_s6:=TrimRight(hangar.Strings[SearchLine]);
  hgar6_SL:=SearchLine;

  Search:='"pingServers"';
  SearchLine_my();
  Search:='"enabled"';
  SearchLine_my_2();
  hangar_s7:=TrimRight(hangar.Strings[SearchLine]);
  hgar7_SL:=SearchLine;

  // интервал обновления пинга
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"updateInterval"';
  SearchLine_my_2();
  hangar_s8:=TrimRight(hangar.Strings[SearchLine]);
  hgar8_SL:=SearchLine;
  search_sN:=hangar_s8;
  search_info();
  hangar_s8:=search_sN;
  TrackBar1.Position:=StrToInt(hangar_s8);
  SpinEdit10.Value:=StrToInt(hangar_s8);

  // положение поля по x
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"x"';
  SearchLine_my_2();
  hangar_s9:=TrimRight(hangar.Strings[SearchLine]);
  hgar9_SL:=SearchLine;
  search_sN:=hangar_s9;
  search_info();
  hangar_s9:=search_sN;
  SpinEdit5.Value:=StrToInt(hangar_s9);

  // положение поля по y
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"y"';
  SearchLine_my_2();
  hangar_s10:=TrimRight(hangar.Strings[SearchLine]);
  hgar10_SL:=SearchLine;
  search_sN:=hangar_s10;
  search_info();
  hangar_s10:=search_sN;
  SpinEdit6.Value:=StrToInt(hangar_s10);

  // прозрачность поля
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"alpha"';
  SearchLine_my_2();
  hangar_s11:=TrimRight(hangar.Strings[SearchLine]);
  hgar11_SL:=SearchLine;
  search_sN:=hangar_s11;
  search_info();
  hangar_s11:=search_sN;
  SpinEdit7.Value:=StrToInt(hangar_s11);

  // максимальное количество строк одной колонки
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"maxRows"';
  SearchLine_my_2();
  hangar_s12:=TrimRight(hangar.Strings[SearchLine]);
  hgar12_SL:=SearchLine;
  search_sN:=hangar_s12;
  search_info();
  hangar_s12:=search_sN;
  TrackBar2.Position:=StrToInt(hangar_s12);
  SpinEdit8.Value:=StrToInt(hangar_s12);

  // пространство между колонками
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"columnGap"';
  SearchLine_my_2();
  hangar_s13:=TrimRight(hangar.Strings[SearchLine]);
  hgar13_SL:=SearchLine;
  search_sN:=hangar_s13;
  search_info();
  hangar_s13:=search_sN;
  TrackBar3.Position:=StrToInt(hangar_s13);
  SpinEdit9.Value:=StrToInt(hangar_s13);

  // идет вывод в переключатели
  if pos('false', hangar_s1)>0 then
  RadioButton31.Checked:=True else RadioButton32.Checked:=True;

  if pos('true', hangar_s2)>0 then
  RadioButton33.Checked:=True else RadioButton34.Checked:=True;

  if pos('true', hangar_s3)>0 then
  RadioButton35.Checked:=True else RadioButton36.Checked:=True;

  if pos('true', hangar_s4)>0 then
  RadioButton37.Checked:=True else RadioButton38.Checked:=True;

  if pos('false', hangar_s5)>0 then
  RadioButton39.Checked:=True else RadioButton40.Checked:=True;

  if pos('true', hangar_s6)>0 then
  RadioButton41.Checked:=True else RadioButton42.Checked:=True;

  if pos('true', hangar_s7)>0 then
  RadioButton43.Checked:=True else RadioButton44.Checked:=True;

end;

// сохранение параметров в файл hangar.xc
procedure TXCTuner_Form1.hangar_save;
begin
  if (RadioButton32.Checked=True) then
    hangar_s1:=StringReplace(hangar_s1, 'false', 'true', []) else hangar_s1:=StringReplace(hangar_s1, 'true', 'false', []);
  if (RadioButton33.Checked=True) then
    hangar_s2:=StringReplace(hangar_s2, 'false', 'true', []) else hangar_s2:=StringReplace(hangar_s2, 'true', 'false', []);
  if (RadioButton35.Checked=True) then
    hangar_s3:=StringReplace(hangar_s3, 'false', 'true', []) else hangar_s3:=StringReplace(hangar_s3, 'true', 'false', []);
  if (RadioButton37.Checked=True) then
    hangar_s4:=StringReplace(hangar_s4, 'false', 'true', []) else hangar_s4:=StringReplace(hangar_s4, 'true', 'false', []);
  if (RadioButton40.Checked=True) then
    hangar_s5:=StringReplace(hangar_s5, 'false', 'true', []) else hangar_s5:=StringReplace(hangar_s5, 'true', 'false', []);
  if (RadioButton41.Checked=True) then
    hangar_s6:=StringReplace(hangar_s6, 'false', 'true', []) else hangar_s6:=StringReplace(hangar_s6, 'true', 'false', []);
  if (RadioButton43.Checked=True) then
    hangar_s7:=StringReplace(hangar_s7, 'false', 'true', []) else hangar_s7:=StringReplace(hangar_s7, 'true', 'false', []);




  hangar.Delete(hgar1_SL);
  hangar.Insert(hgar1_SL, hangar_s1);

  hangar.Delete(hgar2_SL);
  hangar.Insert(hgar2_SL, hangar_s2);

  hangar.Delete(hgar3_SL);
  hangar.Insert(hgar3_SL, hangar_s3);

  hangar.Delete(hgar4_SL);
  hangar.Insert(hgar4_SL, hangar_s4);

  hangar.Delete(hgar5_SL);
  hangar.Insert(hgar5_SL, hangar_s5);

  hangar.Delete(hgar6_SL);
  hangar.Insert(hgar6_SL, hangar_s6);

  hangar.Delete(hgar7_SL);
  hangar.Insert(hgar7_SL, hangar_s7);


  hangar_s8_2:=hangar.Strings[hgar8_SL];
  hangar_s8_2:=StringReplace(hangar_s8_2, hangar_s8, IntToStr(SpinEdit10.Value), []);
  hangar.Delete(hgar8_SL);
  hangar.Insert(hgar8_SL, hangar_s8_2);

  hangar_s9_2:=hangar.Strings[hgar9_SL];
  hangar_s9_2:=StringReplace(hangar_s9_2, hangar_s9, IntToStr(SpinEdit5.Value), []);
  hangar.Delete(hgar9_SL);
  hangar.Insert(hgar9_SL, hangar_s9_2);

  hangar_s10_2:=hangar.Strings[hgar10_SL];
  hangar_s10_2:=StringReplace(hangar_s10_2, hangar_s10, IntToStr(SpinEdit6.Value), []);
  hangar.Delete(hgar10_SL);
  hangar.Insert(hgar10_SL, hangar_s10_2);

  hangar_s11_2:=hangar.Strings[hgar11_SL];
  hangar_s11_2:=StringReplace(hangar_s11_2, hangar_s11, IntToStr(SpinEdit7.Value), []);
  hangar.Delete(hgar11_SL);
  hangar.Insert(hgar11_SL, hangar_s11_2);

  hangar_s12_2:=hangar.Strings[hgar12_SL];
  hangar_s12_2:=StringReplace(hangar_s12_2, hangar_s12, IntToStr(SpinEdit8.Value), []);
  hangar.Delete(hgar12_SL);
  hangar.Insert(hgar12_SL, hangar_s12_2);

  hangar_s13_2:=hangar.Strings[hgar13_SL];
  hangar_s13_2:=StringReplace(hangar_s13_2, hangar_s13, IntToStr(SpinEdit9.Value), []);
  hangar.Delete(hgar13_SL);
  hangar.Insert(hgar13_SL, hangar_s13_2);


end;

procedure TXCTuner_Form1.battle_save;
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

  b_s7_2:=battle.Strings[bs7_SL];
  b_s7_2:=StringReplace(b_s7_2, b_s7, IntToStr(SpinEdit1.Value), []);
  battle.Delete(bs7_SL);
  battle.Insert(bs7_SL, b_s7_2);

  b_s8_2:=battle.Strings[bs8_SL];
  b_s8_2:=StringReplace(b_s8_2, b_s8, IntToStr(SpinEdit2.Value), []);
  battle.Delete(bs8_SL);
  battle.Insert(bs8_SL, b_s8_2);

end;

procedure TXCTuner_Form1.xvm_loading;
begin
  // загрузка данных из файла @xvm.xc
    temp_list.Clear;
    temp_list.Text:=xvm.Text;

    Search:='"configVersion"';
    SearchLine_my();
    xvm_s1:=Trim(xvm.Strings[SearchLine]);

    Search:='"editorVersion"';
    SearchLine_my();
    xvm_s2:=Trim(xvm.Strings[SearchLine]);

    Search:='"language"';
    SearchLine_my();
    xvm_s3:=Trim(xvm.Strings[SearchLine]);

    Search:='"region"';
    SearchLine_my();
    xvm_s4:=Trim(xvm.Strings[SearchLine]);

    Search:='"author"';
    SearchLine_my();
    xvm_s5:=Trim(xvm.Strings[SearchLine]);

    Search:='"description"';
    SearchLine_my();
    xvm_s6:=Trim(xvm.Strings[SearchLine]);

    Search:='"date"';
    SearchLine_my();
    xvm_s7:=Trim(xvm.Strings[SearchLine]);

    Search:='"gameVersion"';
    SearchLine_my();
    xvm_s8:=Trim(xvm.Strings[SearchLine]);

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

procedure TXCTuner_Form1.rating_loading;
begin
  rating.Clear;
  rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
  // загрузка данных из файла rating.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=rating.Text;

  Search:='"showPlayersStatistics"';
  SearchLine_my();
  rating_s1:=TrimRight(rating.Strings[SearchLine]);
  rat1_SL:=SearchLine;

  Search:='"enableUserInfoStatistics"';
  SearchLine_my();
  rating_s2:=TrimRight(rating.Strings[SearchLine]);
  rat2_SL:=SearchLine;

  Search:='"enableCompanyStatistics"';
  SearchLine_my();
  rating_s3:=TrimRight(rating.Strings[SearchLine]);
  rat3_SL:=SearchLine;

  Search:='"loadEnemyStatsInFogOfWar"';
  SearchLine_my();
  rating_s4:=TrimRight(rating.Strings[SearchLine]);
  rat4_SL:=SearchLine;

  Search:='"enableStatisticsLog"';
  SearchLine_my();
  rating_s5:=TrimRight(rating.Strings[SearchLine]);
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

procedure TXCTuner_Form1.rating_save;
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



end.

