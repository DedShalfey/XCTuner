﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, About;

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
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure battle_loading();
    procedure battle_save();
    procedure xvm_loading();
    procedure rating_loading();
    procedure rating_save();
    { Public declarations }
  end;

var
  Form1: TForm1;
  xvm, battle, rating: TStringList;
  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6: String;
  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8: String;
  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;

implementation

{$R *.dfm}


procedure TForm1.battle_loading();
begin
  // загрузка данных из файла battle.xc в интерфейс
  b_s1:=battle.Strings[8].Trim;
  b_s2:=battle.Strings[11].Trim;
  b_s3:=battle.Strings[14].Trim;
  b_s4:=battle.Strings[17].Trim;
  b_s5:=battle.Strings[24].Trim;
  b_s6:=battle.Strings[37].Trim;

  if (b_s1='"mirroredVehicleIcons": false,') then
  RadioButton1.Checked:=True else RadioButton2.Checked:=True;

  if (b_s2='"showPostmortemTips": false,') then
  RadioButton4.Checked:=True else RadioButton2.Checked:=True;

  if (b_s3='"removePanelsModeSwitcher": false,') then
  RadioButton5.Checked:=True else RadioButton6.Checked:=True;

  if (b_s4='"highlightVehicleIcon": true,') then
  RadioButton7.Checked:=True else RadioButton8.Checked:=True;

  if (b_s5='"useStandardMarkers": false,') then
  RadioButton10.Checked:=True else RadioButton9.Checked:=True;

  if (b_s6='"hideTeamTextFields": true') then
  RadioButton11.Checked:=True else RadioButton12.Checked:=True;

end;

procedure TForm1.battle_save;
begin
  // процедура подготовки изменений для сохранения в файл battle.xc
  if (RadioButton1.Checked=True) then
    b_s1:='    "mirroredVehicleIcons": false,' else b_s1:='    "mirroredVehicleIcons": true,';

  if (RadioButton4.Checked=True) then
    b_s2:='    "showPostmortemTips": false,' else b_s2:='    "showPostmortemTips": true,';

  if (RadioButton5.Checked=True) then
    b_s3:='    "removePanelsModeSwitcher": false,' else b_s3:='    "removePanelsModeSwitcher": true,';

  if (RadioButton7.Checked=True) then
    b_s4:='    "highlightVehicleIcon": true,' else b_s4:='    "highlightVehicleIcon": false,';

  if (RadioButton10.Checked=True) then
    b_s5:='    "useStandardMarkers": false,' else b_s5:='    "useStandardMarkers": true,';

  if (RadioButton11.Checked=True) then
    b_s6:='    "hideTeamTextFields": true' else b_s6:='    "hideTeamTextFields": false';

  battle.Delete(8);
  battle.Insert(8, b_s1);

  battle.Delete(11);
  battle.Insert(11, b_s2);

  battle.Delete(14);
  battle.Insert(14, b_s3);

  battle.Delete(17);
  battle.Insert(17, b_s4);

  battle.Delete(24);
  battle.Insert(24, b_s5);

  battle.Delete(37);
  battle.Insert(37, b_s6);
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
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  rating:=TStringList.Create;
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
      ShowMessage('Файлы конфига не найден или отсутствуют! Поместите программу в папку с конфигом или проверте присутствие всех файлов! Программа закроется!');
      xvm.Free;
      battle.Free;
      rating.Free;
      Application.Terminate;
    end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
AboutBox.ShowModal;
end;



procedure TForm1.rating_loading;
begin
  // загрузка данных из файла rating.xc в интерфейс
  rating_s1:=rating.Strings[8].Trim;
  rating_s2:=rating.Strings[11].Trim;
  rating_s3:=rating.Strings[14].Trim;
  rating_s4:=rating.Strings[17].Trim;
  rating_s5:=rating.Strings[20].Trim;

  if (rating_s1='"showPlayersStatistics": true,') then
  RadioButton13.Checked:=True else RadioButton14.Checked:=True;

  if (rating_s2='"enableUserInfoStatistics": true,') then
  RadioButton15.Checked:=True else RadioButton16.Checked:=True;

  if (rating_s3='"enableCompanyStatistics": true,') then
  RadioButton17.Checked:=True else RadioButton18.Checked:=True;

  if (rating_s4='"loadEnemyStatsInFogOfWar": true,') then
  RadioButton19.Checked:=True else RadioButton20.Checked:=True;

  if (rating_s5='"enableStatisticsLog": true') then
  RadioButton21.Checked:=True else RadioButton22.Checked:=True;

end;

procedure TForm1.rating_save;
begin
    // процедура подготовки изменений для сохранения в файл rating.xc
  if (RadioButton13.Checked=True) then
    rating_s1:='    "showPlayersStatistics": true,' else rating_s1:='    "showPlayersStatistics": false,';

  if (RadioButton15.Checked=True) then
    rating_s2:='    "enableUserInfoStatistics": true,' else rating_s2:='    "enableUserInfoStatistics": false,';

  if (RadioButton17.Checked=True) then
    rating_s3:='    "enableCompanyStatistics": true,' else rating_s3:='    "enableCompanyStatistics": false,';

  if (RadioButton19.Checked=True) then
    rating_s4:='    "loadEnemyStatsInFogOfWar": true,' else rating_s4:='    "loadEnemyStatsInFogOfWar": false,';

  if (RadioButton21.Checked=True) then
    rating_s5:='    "enableStatisticsLog": true' else rating_s5:='    "enableStatisticsLog": false';

  rating.Delete(8);
  rating.Insert(8, rating_s1);

  rating.Delete(11);
  rating.Insert(11, rating_s2);

  rating.Delete(14);
  rating.Insert(14, rating_s3);

  rating.Delete(17);
  rating.Insert(17, rating_s4);

  rating.Delete(20);
  rating.Insert(20, rating_s5);

end;

procedure TForm1.xvm_loading;
begin
// загрузка данных из файла @xvm.xc
  xvm_s1:=xvm.Strings[25].Trim;
  xvm_s2:=xvm.Strings[29].Trim;
  xvm_s3:=xvm.Strings[37].Trim;
  xvm_s4:=xvm.Strings[45].Trim;
  xvm_s5:=xvm.Strings[52].Trim;
  xvm_s6:=xvm.Strings[56].Trim;
  xvm_s7:=xvm.Strings[64].Trim;
  xvm_s8:=xvm.Strings[68].Trim;

  delete(xvm_s1, 1, Pos(': ', xvm_s1));
  delete(xvm_s1, Length(xvm_s1) - 1, 2);
  delete(xvm_s1, 2, 1);
  label2.Caption:=xvm_s1.Trim;

  delete(xvm_s2, 1, Pos(': ', xvm_s2));
  delete(xvm_s2, Length(xvm_s2) - 1, 2);
  delete(xvm_s2, 2, 1);
  label4.Caption:=xvm_s2.Trim;

  delete(xvm_s3, 1, Pos(': ', xvm_s3));
  delete(xvm_s3, Length(xvm_s3) - 1, 2);
  delete(xvm_s3, 2, 1);
  label6.Caption:=xvm_s3.Trim;

  delete(xvm_s4, 1, Pos(': ', xvm_s4));
  delete(xvm_s4, Length(xvm_s4) - 1, 2);
  delete(xvm_s4, 2, 1);
  label8.Caption:=xvm_s4.Trim;

  delete(xvm_s5, 1, Pos(': ', xvm_s5));
  delete(xvm_s5, Length(xvm_s5) - 1, 2);
  delete(xvm_s5, 2, 1);
  label10.Caption:=xvm_s5.Trim;

  delete(xvm_s6, 1, Pos(': ', xvm_s6));
  delete(xvm_s6, Length(xvm_s6) - 1, 2);
  delete(xvm_s6, 2, 1);
  label12.Caption:=xvm_s6.Trim;

  delete(xvm_s7, 1, Pos(': ', xvm_s7));
  delete(xvm_s7, Length(xvm_s7) - 1, 2);
  delete(xvm_s7, 2, 1);
  label14.Caption:=xvm_s7.Trim;

  delete(xvm_s8, 1, Pos(': ', xvm_s8));
  delete(xvm_s8, Length(xvm_s8) - 1, 2);
  delete(xvm_s8, 2, 1);
  label16.Caption:=xvm_s8.Trim;
end;

end.
