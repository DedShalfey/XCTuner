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
    BitSave2: TBitBtn;
    BitSave3: TBitBtn;
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
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitRefresh1Click(Sender: TObject);
    procedure BitRefresh2Click(Sender: TObject);
    procedure BitRefresh3Click(Sender: TObject);
    procedure BitSave1Click(Sender: TObject);
    procedure BitSave2Click(Sender: TObject);
    procedure BitSave3Click(Sender: TObject);
    procedure BtExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tAboutClick(Sender: TObject);
  private
    { private declarations }
  public
    procedure SearchLine_my();
    procedure SearchLine_my_2();
    procedure SearchLine_my_3();
    procedure xvm_info();
    procedure search_info();
    procedure battle_loading();
    procedure login_loading();
    procedure login_save();
    procedure battle_save();
    procedure xvm_loading();
    procedure rating_loading();
    procedure rating_save();
    { public declarations }
  end;

var
  XCTuner_Form1: TXCTuner_Form1;
  xvm, battle, login, rating, temp_list: TStringList;
  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6: String;
  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_sN: String;
  login_s1, login_s2, login_s3, login_s4, login_s5, login_s6, login_s5_2, login_s6_2: string;
  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;
  Search, search_sN: String;
  k, SearchLine: Integer;
  bs1_SL, bs2_SL, bs3_SL, bs4_SL, bs5_SL, bs6_SL: Integer;
  log1_SL, log2_SL, log3_SL, log4_SL, log5_SL, log6_SL: Integer;
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
  rating.Free;
  temp_list.Free;
end;

procedure TXCTuner_Form1.FormCreate(Sender: TObject);
begin
  // вывод версии файла в заголовок
  XCTuner_Form1.Caption:=XCTuner_Form1.Caption + '   Версия - ' + '0.1.5.4';
  BitBtn1.Click;
  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  login:=TStringList.Create;
  rating:=TStringList.Create;
  temp_list:=TStringList.Create;
  // Проверяем присутствие файла @xvm.xc в директории с программой
  if ((FileExists(ExtractFilePath(ParamStr(0))+'@xvm.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'battle.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'rating.xc'))) then
    begin
      xvm.LoadFromFile(ExtractFilePath(ParamStr(0))+'@xvm.xc');
      battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'battle.xc');
      login.LoadFromFile(ExtractFilePath(ParamStr(0))+'login.xc');
      rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'rating.xc');
      xvm_loading();
      battle_loading();
      login_loading();
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

procedure TXCTuner_Form1.tAboutClick(Sender: TObject);
begin
  About.ShowModal;
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

