unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RTTICtrls, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, ComCtrls, StdCtrls, Spin, ColorBox, Unit2, Unit3,
  TplColorPanelUnit, mbColorPalette, mbColorList, mbColorPreview,
  HSVColorPicker, HexaColorPicker, StrUtils, types, Unit4;

type

  { TXCTuner_Form1 }

  TXCTuner_Form1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitRefresh1: TBitBtn;
    BitRefresh2: TBitBtn;
    BitRefresh3: TBitBtn;
    BitRefresh4: TBitBtn;
    BitSave1: TBitBtn;
    BitSave2: TBitBtn;
    BitSave3: TBitBtn;
    BitSave4: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    GroupBox1: TGroupBox;
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
    GroupBox2: TGroupBox;
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
    GroupBox3: TGroupBox;
    GroupBox30: TGroupBox;
    GroupBox31: TGroupBox;
    GroupBox32: TGroupBox;
    GroupBox33: TGroupBox;
    GroupBox34: TGroupBox;
    GroupBox35: TGroupBox;
    GroupBox37: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label40: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    mbColorPreview1: TmbColorPreview;
    mbColorPreview2: TmbColorPreview;
    mbColorPreview3: TmbColorPreview;
    mbColorPreview4: TmbColorPreview;
    mbColorPreview5: TmbColorPreview;
    RadioButton1: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
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
    RadioButton45: TRadioButton;
    RadioButton46: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    SpinEdit1: TSpinEdit;
    SpinEdit10: TSpinEdit;
    SpinEdit11: TSpinEdit;
    SpinEdit12: TSpinEdit;
    SpinEdit13: TSpinEdit;
    SpinEdit14: TSpinEdit;
    SpinEdit15: TSpinEdit;
    SpinEdit16: TSpinEdit;
    SpinEdit17: TSpinEdit;
    SpinEdit18: TSpinEdit;
    SpinEdit19: TSpinEdit;
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
    BtExit: TBitBtn;
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar1: TTrackBar;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitRefresh1Click(Sender: TObject);
    procedure BitRefresh2Click(Sender: TObject);
    procedure BitRefresh3Click(Sender: TObject);
    procedure BitRefresh4Click(Sender: TObject);
    procedure BitSave1Click(Sender: TObject);
    procedure BitSave2Click(Sender: TObject);
    procedure BitSave3Click(Sender: TObject);
    procedure BitSave4Click(Sender: TObject);
    procedure BtExitClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox2MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure tAboutClick(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure TrackBar1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
  private
    function ColorToHex(rgb:TColor):String;
    function HexToTColor(myColor : string): TColor;
    { private declarations }
  public
    procedure SearchLine_my();
    procedure SearchLine_my_2();
    procedure xvm_info();
    procedure activ_conf();
    procedure search_info();
    procedure search_info_2();
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
  ColorSelect: Integer;
  ChangeEditText: String;
  ChangeEdit: Integer;
  XCTuner_Form1: TXCTuner_Form1;
  xvm_base, xvm, battle, login, hangar, rating, temp_list: TStringList;
  activ_config, xvm_file_name: String;
  px1, px2, px3: Integer;
  dir_xvm: String;
  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6, b_s7, b_s8, b_s7_2, b_s8_2: String;
  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_sN: String;
  xvm_s1_2, xvm_s2_2, xvm_s3_2, xvm_s4_2, xvm_s5_2, xvm_s6_2, xvm_s7_2, xvm_s8_2: String;
  login_s1, login_s2, login_s3, login_s4, login_s5, login_s6, login_s5_2, login_s6_2: string;

  hangar_s1, hangar_s2, hangar_s3, hangar_s4, hangar_s5, hangar_s6, hangar_s7: string;
  hangar_s8, hangar_s9, hangar_s10, hangar_s11, hangar_s12, hangar_s13: string;
  hangar_s8_2, hangar_s9_2, hangar_s10_2, hangar_s11_2, hangar_s12_2, hangar_s13_2: string;

  hangar_s14, hangar_s15, hangar_s16, hangar_s17, hangar_s18, hangar_s19: string;
  hangar_s20, hangar_s21, hangar_s22, hangar_s23, hangar_s24, hangar_s25: string;
  hangar_s26, hangar_s27, hangar_s28, hangar_s29, hangar_s30, hangar_s31: string;

  hangar_s14_2, hangar_s15_2, hangar_s16_2, hangar_s17_2, hangar_s18_2, hangar_s19_2: string;
  hangar_s20_2, hangar_s21_2, hangar_s22_2, hangar_s23_2, hangar_s24_2, hangar_s25_2: string;
  hangar_s26_2, hangar_s27_2, hangar_s28_2, hangar_s29_2, hangar_s30_2, hangar_s31_2: string;

  hangar_s18_3, hangar_s19_3, hangar_s20_3, hangar_s21_3, hangar_s26_3: string;

  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;
  Search, search_sN: String;
  SearchLine: Integer;
  bs1_SL, bs2_SL, bs3_SL, bs4_SL, bs5_SL, bs6_SL, bs7_SL, bs8_SL: Integer;
  log1_SL, log2_SL, log3_SL, log4_SL, log5_SL, log6_SL: Integer;
  xvm1_SL, xvm2_SL, xvm3_SL, xvm4_SL, xvm5_SL, xvm6_SL, xvm7_SL, xvm8_SL: Integer;

  hgar1_SL, hgar2_SL, hgar3_SL, hgar4_SL, hgar5_SL, hgar6_SL, hgar7_SL: Integer;
  hgar8_SL, hgar9_SL, hgar10_SL, hgar11_SL, hgar12_SL, hgar13_SL: Integer;
  hgar14_SL, hgar15_SL, hgar16_SL, hgar17_SL, hgar18_SL, hgar19_SL, hgar20_SL: Integer;
  hgar21_SL, hgar22_SL, hgar23_SL, hgar24_SL, hgar25_SL, hgar26_SL: Integer;
  hgar27_SL, hgar28_SL, hgar29_SL, hgar30_SL, hgar31_SL: Integer;

  rat1_SL, rat2_SL, rat3_SL, rat4_SL, rat5_SL: Integer;

implementation

{$R *.lfm}

{ TXCTuner_Form1 }

// Открытие вкладки "Общие"
procedure TXCTuner_Form1.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn1.Font.Style:=[fsBold];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[];
  ImageList1.GetBitmap(0, BitBtn1.Glyph);
  PageControl1.ActivePage:=TabSheet1;
end;

// Открытие вкладки "Логин"
procedure TXCTuner_Form1.BitBtn2Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[fsBold];
  BitBtn3.Font.Style:=[];
  ImageList1.GetBitmap(0, BitBtn2.Glyph);
  PageControl1.ActivePage:=TabSheet2;
end;

// Открытие вкладки "Ангар"
procedure TXCTuner_Form1.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[fsBold];
  ImageList1.GetBitmap(0, BitBtn3.Glyph);
  PageControl1.ActivePage:=TabSheet3;
end;

// Скрытие или открытие навигационной панели слева
procedure TXCTuner_Form1.BitBtn4Click(Sender: TObject);
begin
  if (Panel1.Visible=true) then
    begin
      Panel1.Visible:=false;
      BitBtn4.Caption:='>';
      XCTuner_Form1.Width:=770;
    end
      else
    begin
      Panel1.Visible:=true;
      BitBtn4.Caption:='<';
      XCTuner_Form1.Width:=940;
    end;
end;

// Кнопка выбора цвета 1 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn5Click(Sender: TObject);
begin
  ColorSelect:=1;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 2 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn6Click(Sender: TObject);
begin
  ColorSelect:=2;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 3 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn7Click(Sender: TObject);
begin
  ColorSelect:=3;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 4 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn8Click(Sender: TObject);
begin
  ColorSelect:=4;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 5 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn9Click(Sender: TObject);
begin
  ColorSelect:=5;
  ColorSelectMy.ShowModal;
end;

// По кнопке происходит вызов процедуры загрузки данных из файла "rating.xc"
procedure TXCTuner_Form1.BitRefresh1Click(Sender: TObject);
begin
  rating_loading();
end;

// По кнопке происходит вызов процедуры загрузки данных из файла "battle.xc"
procedure TXCTuner_Form1.BitRefresh2Click(Sender: TObject);
begin
  battle_loading();
end;

// По кнопке происходит вызов процедуры загрузки данных из файла "login.xc"
procedure TXCTuner_Form1.BitRefresh3Click(Sender: TObject);
begin
  login_loading();
end;

// По кнопке происходит вызов процедуры загрузки данных из файла "hangar.xc"
procedure TXCTuner_Form1.BitRefresh4Click(Sender: TObject);
begin
  hangar_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "rating.xc"
procedure TXCTuner_Form1.BitSave1Click(Sender: TObject);
begin
  rating_save();
  rating.SaveToFile(dir_xvm+'\rating.xc');
  rating.Clear;
  rating.LoadFromFile(dir_xvm+'\rating.xc');
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "battle.xc"
procedure TXCTuner_Form1.BitSave2Click(Sender: TObject);
begin
  battle_save();
  battle.SaveToFile(dir_xvm+'\battle.xc');
  battle_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "login.xc"
procedure TXCTuner_Form1.BitSave3Click(Sender: TObject);
begin
  login_save();
  login.SaveToFile(dir_xvm+'\login.xc');
  login_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "hangar.xc"
procedure TXCTuner_Form1.BitSave4Click(Sender: TObject);
begin
  hangar_save();
  hangar.SaveToFile(dir_xvm+'\hangar.xc');
  hangar_loading();
end;

// Закрытие программы стандартным способом
procedure TXCTuner_Form1.BtExitClick(Sender: TObject);
begin
  XCTuner_Form1.Close;
end;

// Выбор шрифта / Шрифт заполняет соотв. поле
procedure TXCTuner_Form1.ComboBox1Change(Sender: TObject);
begin
  Edit1.Text:=ComboBox1.Text;
end;

procedure TXCTuner_Form1.Edit2Exit(Sender: TObject);
begin
  ChangeEdit:=Length(Edit2.Text);
  ChangeEditText:=Edit2.Text;
  if ChangeEdit=7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview5.Color:=HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage('Значение должно быть в формате типа #FFFFFF');
    end;
end;

procedure TXCTuner_Form1.Edit3Exit(Sender: TObject);
begin
  ChangeEdit:=Length(Edit3.Text);
  ChangeEditText:=Edit3.Text;
  if ChangeEdit=7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview1.Color:=HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage('Значение должно быть в формате типа #FFFFFF');
    end;
end;

procedure TXCTuner_Form1.Edit4Exit(Sender: TObject);
begin
  ChangeEdit:=Length(Edit4.Text);
  ChangeEditText:=Edit4.Text;
  if ChangeEdit=7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview2.Color:=HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage('Значение должно быть в формате типа #FFFFFF');
    end;
end;

procedure TXCTuner_Form1.Edit5Exit(Sender: TObject);
begin
  ChangeEdit:=Length(Edit5.Text);
  ChangeEditText:=Edit5.Text;
  if ChangeEdit=7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview3.Color:=HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage('Значение должно быть в формате типа #FFFFFF');
    end;
end;

procedure TXCTuner_Form1.Edit6Exit(Sender: TObject);
begin
  ChangeEdit:=Length(Edit6.Text);
  ChangeEditText:=Edit6.Text;
  if ChangeEdit=7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview4.Color:=HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage('Значение должно быть в формате типа #FFFFFF');
    end;
end;

// Уничтожение объектов типа TStringList при закрытие формы ст. способом
procedure TXCTuner_Form1.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  // При закрытие на всякий случай очищаем переменную xvm
  xvm.Free;
  xvm_base.Free;
  battle.Free;
  login.Free;
  hangar.Free;
  rating.Free;
  temp_list.Free;
end;

// События происходящие при создание приложения
procedure TXCTuner_Form1.FormCreate(Sender: TObject);
begin
  // Проверяем присутствие файла @xvm.xc в директории с программой
  activ_conf();
  activ_config:=StringReplace(activ_config, '/', '\', [rfReplaceAll, rfIgnoreCase]);

  if ((FileExists(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+xvm_file_name)) and
  (FileExists(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'battle.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'login.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'hangar.xc')) and
  (FileExists(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'rating.xc'))) then
    begin
      // заносим путь к директории конфига
      dir_xvm:=ExtractFilePath(ParamStr(0))+'\'+activ_config;
      // Создаем объекты типа TStringlist
      xvm:=TStringList.Create;
      xvm:=TStringList.Create;
      battle:=TStringList.Create;
      login:=TStringList.Create;
      hangar:=TStringList.Create;
      rating:=TStringList.Create;
      temp_list:=TStringList.Create;

      xvm.LoadFromFile(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+xvm_file_name);
      battle.LoadFromFile(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'battle.xc');
      login.LoadFromFile(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'login.xc');
      login.LoadFromFile(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'hangar.xc');
      rating.LoadFromFile(ExtractFilePath(ParamStr(0))+'\'+activ_config+'\'+'rating.xc');

      // вывод версии файла в заголовок
      XCTuner_Form1.Caption:=XCTuner_Form1.Caption + '   Версия - ' + '0.1.7.49';
      XCTuner_Form1.Height:=520;
      XCTuner_Form1.Width:=940;
      BitBtn1.Click;
      ComboBox1.Items := Screen.Fonts; // загружает в ComboBox все шрифты что есть в windows

      xvm_loading();
      battle_loading();
      login_loading();
      hangar_loading();
      rating_loading();
    end
  else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файлы конфига не найдены или отсутствует запись в файле xvm.xc! Поместите программу в папку xvm и проверте правильность пути к конфигу! Программа закроется!');
      xvm.Free;
      xvm_base.Free ;
      battle.Free;
      login.Free;
      rating.Free;
      temp_list.Free;
      Application.Terminate;
    end;
end;

// Передача параметров в форму редактирования Edit_XVM
procedure TXCTuner_Form1.Image1Click(Sender: TObject);
begin
  Edit_XVM.Edit1.Text:=xvm_s1;
  Edit_XVM.Edit2.Text:=xvm_s2;
  Edit_XVM.Edit3.Text:=xvm_s3;
  Edit_XVM.Edit4.Text:=xvm_s4;
  Edit_XVM.Edit5.Text:=xvm_s5;
  Edit_XVM.Edit6.Text:=xvm_s6;
  Edit_XVM.DateEdit1.Text:=xvm_s7;
  Edit_XVM.Edit7.Text:=xvm_s8;
  Edit_XVM.ShowModal;
end;

// Прокрутка скролбокса колесиком вниз на 400 pt
procedure TXCTuner_Form1.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Scrollbox1.VertScrollBar.Position:= Scrollbox1.VertScrollBar.Position + 400;
end;

// Прокрутка скролбокса колесиком вверх на 400 pt
procedure TXCTuner_Form1.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Scrollbox1.VertScrollBar.Position:= Scrollbox1.VertScrollBar.Position - 400;
end;

// Прокрутка скролбокса колесиком вниз на 400 pt
procedure TXCTuner_Form1.ScrollBox2MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Scrollbox2.VertScrollBar.Position:= Scrollbox2.VertScrollBar.Position + 400;
end;

// Прокрутка скролбокса колесиком вверх на 400 pt
procedure TXCTuner_Form1.ScrollBox2MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Scrollbox2.VertScrollBar.Position:= Scrollbox2.VertScrollBar.Position - 400;
end;

procedure TXCTuner_Form1.SpinEdit10Change(Sender: TObject);
begin
  TrackBar1.Position:=SpinEdit10.Value;
  TrackBar1.SelEnd:=SpinEdit10.Value;
end;

procedure TXCTuner_Form1.SpinEdit8Change(Sender: TObject);
begin
  TrackBar2.Position:=SpinEdit8.Value;
  TrackBar2.SelEnd:=SpinEdit8.Value;
end;

procedure TXCTuner_Form1.SpinEdit9Change(Sender: TObject);
begin
  TrackBar3.Position:=SpinEdit9.Value;
  TrackBar3.SelEnd:=SpinEdit9.Value;
end;

// Вызов окна "О программе..."
procedure TXCTuner_Form1.tAboutClick(Sender: TObject);
begin
  About.ShowModal;
end;

procedure TXCTuner_Form1.TrackBar1Change(Sender: TObject);
begin
  SpinEdit10.Value:=TrackBar1.Position;
  TrackBar1.SelEnd:=TrackBar1.Position;
end;

procedure TXCTuner_Form1.TrackBar1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  TrackBar1.Position:=(TrackBar1.Position + 2500);
end;

// Фикс прокрутки трэкбара колесиком мыши
procedure TXCTuner_Form1.TrackBar1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
    if (TrackBar1.Position)>2600 then TrackBar1.Position:=(TrackBar1.Position - 2500) else
    TrackBar1.Position:=100;
end;

procedure TXCTuner_Form1.TrackBar2Change(Sender: TObject);
begin
  SpinEdit8.Value:=TrackBar2.Position;
  TrackBar2.SelEnd:=TrackBar2.Position;
end;

procedure TXCTuner_Form1.TrackBar3Change(Sender: TObject);
begin
  SpinEdit9.Value:=TrackBar3.Position;
  TrackBar3.SelEnd:=TrackBar3.Position;
end;


// Функция преобразования цвета в вид типа #FFFFFF
function TXCTuner_Form1.ColorToHex(rgb: TColor): String;
begin
  Result:=Format('#%.2x%.2x%.2x', [byte(rgb),byte(rgb shr 8),byte(rgb shr 16)]);
end;

function TXCTuner_Form1.HexToTColor(myColor : string) : TColor;
var
  rColor: TColor;
begin
  if (length(mycolor) >= 6) then
  begin
    mycolor := '$00' + copy(mycolor,5,2) + copy(mycolor,3,2) + copy(mycolor,1,2);
    rColor := StrToInt(mycolor);
  end;
  result := rColor;
end;

// процедура поиска нужного слова / выводит номер строки где найдено это слово
procedure TXCTuner_Form1.SearchLine_my;
var k: Integer;
begin
  for k := 0 to (temp_list.Count - 1) do
    if pos(Search, temp_list.Strings[k])>0 then
    begin
    SearchLine:= k;
    Exit;
    end;
end;

// процедура нахождения слов во вложенных конструкциях 2 уровня
procedure TXCTuner_Form1.SearchLine_my_2;
var n: Integer;
begin
  for n := SearchLine to (temp_list.Count - 1) do
    if pos(Search, temp_list.Strings[n])>0 then
    begin
      SearchLine:= n;
      Exit;
    end;
end;

// процедура удаления лишних сиволов и пробелов в обработчике загр. информации из xvm
procedure TXCTuner_Form1.xvm_info;
begin
  if pos('//', xvm_sN)<>0 then
     begin
       Delete(xvm_sN, pos('//', xvm_sN), (Length(xvm_sN) - pos('//', xvm_sN) + 1));
       xvm_sN:=TrimRight(xvm_sN);
     end;
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

// процедура нахождения активного конфига
procedure TXCTuner_Form1.activ_conf;
var tx: Integer;
begin
  if (FileExists(ExtractFilePath(ParamStr(0))+'xvm.xc')) then
    begin
      xvm_base:=TStringList.Create;
      xvm_base.LoadFromFile(ExtractFilePath(ParamStr(0))+'xvm.xc');
      for tx := 0 to (xvm_base.Count - 1) do
        begin
          activ_config:=TrimLeft(xvm_base.Strings[tx]);
          if activ_config[1]='$' then
            begin
              activ_config:= xvm_base.Strings[tx];
              activ_config:=TrimLeft(activ_config);
              Delete(activ_config, 1, pos('"', activ_config));
              activ_config:=TrimLeft(activ_config);
              px2:=pos('@xvm.xc', activ_config);
              px3:=pos('xvm.xc', activ_config);
            if px2<>0 then
              begin
                Delete(activ_config, px2, Length(activ_config) - px2 + 2);
                xvm_file_name:='@xvm.xc';
                exit;
              end else
            if px3<>0 then
              begin
                Delete(activ_config, px3-1, Length(activ_config) - px3 + 2);
                xvm_file_name:='xvm.xc';
                exit;
              end else
              begin
                // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
                ShowMessage('Активный конфиг не найден! Проверте правильность нахождения пути! Программа закроется!');
                xvm.Free;
                xvm_base.Free;
                battle.Free;
                login.Free;
                rating.Free;
                temp_list.Free;
                Application.Terminate;
              end;
            end;
        end;
    end
  else
  begin
    // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
    ShowMessage('Файл xvm.xc в папке xvm не найден! Проверте правильность нахождения файла! Программа закроется!');
    xvm.Free;
    xvm_base.Free;
    battle.Free;
    login.Free;
    rating.Free;
    temp_list.Free;
    Application.Terminate;
  end;
end;

// процедура удаления лишних сиволов и пробелов в обработчике загр. информации из файлов xvm
procedure TXCTuner_Form1.search_info;
var
  p1: Integer;
begin
  p1:=PosEx('//', search_sN, Pos(Search, search_sN));
  if p1<>0 then
    begin
      Delete(search_sN, p1, Length(search_sN));
    end;
  p1:=PosEx(',', search_sN, Pos(Search, search_sN));
  if p1<>0 then
    begin
      Delete(search_sN, p1, Length(search_sN));
    end;
  p1:=PosEx('}', search_sN, Pos(Search, search_sN));
  if p1<>0 then
    begin
      Delete(search_sN, p1, Length(search_sN));
    end;
  p1:=PosEx(':', search_sN, Pos(Search, search_sN));
  if p1<>0 then
    begin
      Delete(search_sN, 1, p1 + 1);
    end;{ TODO : Доработать если что! }
  search_sN:=Trim(search_sN);
end;

///////////////////////////////////////////////////
//// для нахождения выражений типа "выражение" ////
///////////////////////////////////////////////////
procedure TXCTuner_Form1.search_info_2;
var
  p3, p4: Integer;
begin
  p3:=PosEx(',', search_sN, Pos(Search, search_sN));
  p4:=PosEx(':', search_sN, Pos(Search, search_sN));
  if p3<>0 then
    begin
      Delete(search_sN, p3 - 1, Length(search_sN));
    end;
  if p4<>0 then
    begin
      Delete(search_sN, 1, p4 + 1);
      search_sN:=Trim(search_sN);
      Delete(search_sN, 1, 1);
    end;{ TODO : Доработать если что! }
end;
//////////////////////////////////////////////////

// загрузка из файла battle.xc
procedure TXCTuner_Form1.battle_loading;
begin
  battle.Clear;
  battle.LoadFromFile(dir_xvm+'\'+'battle.xc');
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
  RadioButton2.Checked:=True else RadioButton1.Checked:=True;

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

// загрузка из файла login.xc
procedure TXCTuner_Form1.login_loading;
// загрузка из файла login.xc и обработка данных
begin
  login.Clear;
  login.LoadFromFile(dir_xvm+'\'+'login.xc');

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

// сохранение параметров в файл login.xc
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

// загрузка из файла hangar.xc
procedure TXCTuner_Form1.hangar_loading;
begin
  hangar.Clear;
  hangar.LoadFromFile(dir_xvm+'\'+'hangar.xc');
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

  ///////////////////////////////////////////////////
  ////////// новые функции///////////////////////
  //////////////////////////////////////////////////

  // Название шрифта // 14
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"name"';
  SearchLine_my_2();
  hangar_s14:=TrimRight(hangar.Strings[SearchLine]);
  hgar14_SL:=SearchLine;
  search_sN:=hangar_s14;
  search_info();
  hangar_s14:=search_sN;
  Delete(hangar_s14, 1, 1);
  Delete(hangar_s14, Length(hangar_s14), 1);
  Edit1.Text:=hangar_s14;

  // Размер шрифта // 15
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"size"';
  SearchLine_my_2();
  hangar_s15:=TrimRight(hangar.Strings[SearchLine]);
  hgar15_SL:=SearchLine;
  search_sN:=hangar_s15;
  search_info();
  hangar_s15:=search_sN;
  SpinEdit11.Value:=StrToInt(hangar_s15);


  // Стиль жирный шрифта // 16
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"bold"';
  SearchLine_my_2();
  hangar_s16:=TrimRight(hangar.Strings[SearchLine]);
  hangar_s16_2:=hangar_s16;
  hgar16_SL:=SearchLine;
  search_sN:=hangar_s16;
  search_info();
  hangar_s16:=search_sN;
  if pos('true', hangar_s16_2)>0 then CheckBox1.Checked:=True;
  if pos('false', hangar_s16_2)>0 then CheckBox1.Checked:=False;


  // Стиль курсив шрифта // 17
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"italic"';
  SearchLine_my_2();
  hangar_s17:=TrimRight(hangar.Strings[SearchLine]);
  hangar_s17_2:=hangar_s17;
  hgar17_SL:=SearchLine;
  search_sN:=hangar_s17;
  search_info();
  hangar_s17:=search_sN;
  if pos('true', hangar_s17_2)>0 then CheckBox2.Checked:=True;
  if pos('false', hangar_s17_2)>0 then CheckBox2.Checked:=False;

  // Разные цвета в зависимости от времени отклика сервера // 18
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"great"';
  SearchLine_my_2();
  hangar_s18:=TrimRight(hangar.Strings[SearchLine]);
  hgar18_SL:=SearchLine;
  search_sN:=hangar_s18;
  search_info();
  hangar_s18:=search_sN;
  hangar_s18_3:=hangar_s18;
  Delete(hangar_s18, 1, 3);
  Delete(hangar_s18, Length(hangar_s18), 1);
  mbColorPreview1.Color:=HexToTColor(hangar_s18);
  hangar_s18:='#' + hangar_s18;
  Edit3.Text:=hangar_s18;

  // Разные цвета в зависимости от времени отклика сервера // 19
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"good"';
  SearchLine_my_2();
  hangar_s19:=TrimRight(hangar.Strings[SearchLine]);
  hgar19_SL:=SearchLine;
  search_sN:=hangar_s19;
  search_info();
  hangar_s19:=search_sN;
  hangar_s19_3:=hangar_s19;
  Delete(hangar_s19, 1, 3);
  Delete(hangar_s19, Length(hangar_s19), 1);
  mbColorPreview2.Color:=HexToTColor(hangar_s19);
  hangar_s19:='#' + hangar_s19;
  Edit4.Text:=hangar_s19;

  // Разные цвета в зависимости от времени отклика сервера // 20
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"poor"';
  SearchLine_my_2();
  hangar_s20:=TrimRight(hangar.Strings[SearchLine]);
  hgar20_SL:=SearchLine;
  search_sN:=hangar_s20;
  search_info();
  hangar_s20:=search_sN;
  hangar_s20_3:=hangar_s20;
  Delete(hangar_s20, 1, 3);
  Delete(hangar_s20, Length(hangar_s20), 1);
  mbColorPreview3.Color:=HexToTColor(hangar_s20);
  hangar_s20:='#' + hangar_s20;
  Edit5.Text:=hangar_s20;

  // Разные цвета в зависимости от времени отклика сервера // 21
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"bad"';
  SearchLine_my_2();
  hangar_s21:=TrimRight(hangar.Strings[SearchLine]);
  hgar21_SL:=SearchLine;
  search_sN:=hangar_s21;
  search_info();
  hangar_s21:=search_sN;
  hangar_s21_3:=hangar_s21;
  Delete(hangar_s21, 1, 3);
  Delete(hangar_s21, Length(hangar_s21), 1);
  mbColorPreview4.Color:=HexToTColor(hangar_s21);
  hangar_s21:='#' + hangar_s21;
  Edit6.Text:=hangar_s21;

  // Пороговые значения, определеяющие качество отклика // 22
  Search:='"threshold"';
  SearchLine_my();
  Search:='"great"';
  SearchLine_my_2();
  hangar_s22:=TrimRight(hangar.Strings[SearchLine]);
  hgar22_SL:=SearchLine;
  search_sN:=hangar_s22;
  search_info();
  hangar_s22:=search_sN;
  SpinEdit17.Value:=StrToInt(hangar_s22);

  // Пороговые значения, определеяющие качество отклика // 23
  Search:='"threshold"';
  SearchLine_my();
  Search:='"good"';
  SearchLine_my_2();
  hangar_s23:=TrimRight(hangar.Strings[SearchLine]);
  hgar23_SL:=SearchLine;
  search_sN:=hangar_s23;
  search_info();
  hangar_s23:=search_sN;
  SpinEdit18.Value:=StrToInt(hangar_s23);

  // Пороговые значения, определеяющие качество отклика // 24
  Search:='"threshold"';
  SearchLine_my();
  Search:='"poor"';
  SearchLine_my_2();
  hangar_s24:=TrimRight(hangar.Strings[SearchLine]);
  hgar24_SL:=SearchLine;
  search_sN:=hangar_s24;
  search_info();
  hangar_s24:=search_sN;
  SpinEdit19.Value:=StrToInt(hangar_s24);

  // Параметры тени // 25
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"enabled"';
  SearchLine_my_2();
  hangar_s25:=TrimRight(hangar.Strings[SearchLine]);
  hangar_s25_2:=hangar_s25;
  hgar25_SL:=SearchLine;
  search_sN:=hangar_s25;
  search_info();
  hangar_s25:=search_sN;
  if pos('true', hangar_s25_2)>0 then RadioButton45.Checked:=True;
  if pos('false', hangar_s25_2)>0 then RadioButton46.Checked:=True;


  // Параметры тени // 26
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"color"';
  SearchLine_my_2();
  hangar_s26:=TrimRight(hangar.Strings[SearchLine]);
  hgar26_SL:=SearchLine;
  search_sN:=hangar_s26;
  search_info();
  hangar_s26:=search_sN;
  hangar_s26_3:=hangar_s26;
  Delete(hangar_s26, 1, 3);
  Delete(hangar_s26, Length(hangar_s26), 1);
  mbColorPreview5.Color:=HexToTColor(hangar_s26);
  hangar_s26:='#' + hangar_s26;
  Edit2.Text:=hangar_s26;

  // Параметры тени // 27
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"distance"';
  SearchLine_my_2();
  hangar_s27:=TrimRight(hangar.Strings[SearchLine]);
  hgar27_SL:=SearchLine;
  search_sN:=hangar_s27;
  search_info();
  hangar_s27:=search_sN;
  SpinEdit12.Value:=StrToInt(hangar_s27);

  // Параметры тени // 28
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"angle"';
  SearchLine_my_2();
  hangar_s28:=TrimRight(hangar.Strings[SearchLine]);
  hgar28_SL:=SearchLine;
  search_sN:=hangar_s28;
  search_info();
  hangar_s28:=search_sN;
  SpinEdit13.Value:=StrToInt(hangar_s28);

  // Параметры тени // 29
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"alpha"';
  SearchLine_my_2();
  hangar_s29:=TrimRight(hangar.Strings[SearchLine]);
  hgar29_SL:=SearchLine;
  search_sN:=hangar_s29;
  search_info();
  hangar_s29:=search_sN;
  SpinEdit14.Value:=StrToInt(hangar_s29);

  // Параметры тени // 30
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"blur"';
  SearchLine_my_2();
  hangar_s30:=TrimRight(hangar.Strings[SearchLine]);
  hgar30_SL:=SearchLine;
  search_sN:=hangar_s30;
  search_info();
  hangar_s30:=search_sN;
  SpinEdit15.Value:=StrToInt(hangar_s30);

  // Параметры тени // 31
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"strength"';
  SearchLine_my_2();
  hangar_s31:=TrimRight(hangar.Strings[SearchLine]);
  hgar31_SL:=SearchLine;
  search_sN:=hangar_s31;
  search_info();
  hangar_s31:=search_sN;
  SpinEdit16.Value:=StrToInt(hangar_s31);

  //////////////////////////////////////////////////
  /////////// конец//////////////////////////////
  ///////////////////////////////////////////////


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
  RadioButton41.Checked:=True else
  begin
  RadioButton42.Checked:=True;
  end;

  if pos('true', hangar_s7)>0 then
  RadioButton43.Checked:=True else
  begin
  RadioButton44.Checked:=True;
  end;

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

  hangar_s25_2:=hangar.Strings[hgar25_SL];
  if (RadioButton45.Checked=True) then
    hangar_s25_2:=StringReplace(hangar_s25_2, 'false', 'true', []) else hangar_s25_2:=StringReplace(hangar_s25_2, 'true', 'false', []);

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

  hangar.Delete(hgar25_SL);
  hangar.Insert(hgar25_SL, hangar_s25_2);

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

  hangar_s16_2:=hangar.Strings[hgar16_SL];
  hangar_s17_2:=hangar.Strings[hgar17_SL];

  if (CheckBox1.Checked=True) then
    hangar_s16_2:=StringReplace(hangar_s16_2, 'false', 'true', []);
  if (CheckBox1.Checked=False) then
    hangar_s16_2:=StringReplace(hangar_s16_2, 'true', 'false', []);

  hangar.Delete(hgar16_SL);
  hangar.Insert(hgar16_SL, hangar_s16_2);

  if (CheckBox2.Checked=False) then
    hangar_s17_2:=StringReplace(hangar_s17_2, 'true', 'false', []);

  if (CheckBox2.Checked=True) then
    hangar_s17_2:=StringReplace(hangar_s17_2, 'false', 'true', []);

  hangar.Delete(hgar17_SL);
  hangar.Insert(hgar17_SL, hangar_s17_2);

  // поле "название шрифта"
  hangar_s14_2:=hangar.Strings[hgar14_SL];
  hangar_s14_2:=StringReplace(hangar_s14_2, hangar_s14, Edit1.Text, []);
  hangar.Delete(hgar14_SL);
  hangar.Insert(hgar14_SL, hangar_s14_2);

  // поле "размер шрифта"
  hangar_s15_2:=hangar.Strings[hgar15_SL];
  hangar_s15_2:=StringReplace(hangar_s15_2, hangar_s15, IntToStr(SpinEdit11.Value), []);
  hangar.Delete(hgar15_SL);
  hangar.Insert(hgar15_SL, hangar_s15_2);


  // поле "цвет пинга" great
  hangar_s18_2:=hangar.Strings[hgar18_SL];
  hangar_s18:=Edit3.Text;
  Delete(hangar_s18, 1, 1);
  hangar_s18:='"0x' + hangar_s18 + '"';
  hangar_s18_2:=StringReplace(hangar_s18_2, hangar_s18_3, hangar_s18, []);
  hangar.Delete(hgar18_SL);
  hangar.Insert(hgar18_SL, hangar_s18_2);

  // поле "цвет пинга" good
  hangar_s19_2:=hangar.Strings[hgar19_SL];
  hangar_s19:=Edit4.Text;
  Delete(hangar_s19, 1, 1);
  hangar_s19:='"0x' + hangar_s19 + '"';
  hangar_s19_2:=StringReplace(hangar_s19_2, hangar_s19_3, hangar_s19, []);
  hangar.Delete(hgar19_SL);
  hangar.Insert(hgar19_SL, hangar_s19_2);

  // поле "цвет пинга" poor
  hangar_s20_2:=hangar.Strings[hgar20_SL];
  hangar_s20:=Edit5.Text;
  Delete(hangar_s20, 1, 1);
  hangar_s20:='"0x' + hangar_s20 + '"';
  hangar_s20_2:=StringReplace(hangar_s20_2, hangar_s20_3, hangar_s20, []);
  hangar.Delete(hgar20_SL);
  hangar.Insert(hgar20_SL, hangar_s20_2);

  // поле "цвет пинга" bad
  hangar_s21_2:=hangar.Strings[hgar21_SL];
  hangar_s21:=Edit6.Text;
  Delete(hangar_s21, 1, 1);
  hangar_s21:='"0x' + hangar_s21 + '"';
  hangar_s21_2:=StringReplace(hangar_s21_2, hangar_s21_3, hangar_s21, []);
  hangar.Delete(hgar21_SL);
  hangar.Insert(hgar21_SL, hangar_s21_2);

  // Пороговые значения, определеяющие качество отклика / great
  hangar_s22_2:=hangar.Strings[hgar22_SL];
  hangar_s22_2:=StringReplace(hangar_s22_2, hangar_s22, IntToStr(SpinEdit17.Value), []);
  hangar.Delete(hgar22_SL);
  hangar.Insert(hgar22_SL, hangar_s22_2);

  // Пороговые значения, определеяющие качество отклика / good
  hangar_s23_2:=hangar.Strings[hgar23_SL];
  hangar_s23_2:=StringReplace(hangar_s23_2, hangar_s23, IntToStr(SpinEdit18.Value), []);
  hangar.Delete(hgar23_SL);
  hangar.Insert(hgar23_SL, hangar_s23_2);

  // Пороговые значения, определеяющие качество отклика / poor
  hangar_s24_2:=hangar.Strings[hgar24_SL];
  hangar_s24_2:=StringReplace(hangar_s24_2, hangar_s24, IntToStr(SpinEdit19.Value), []);
  hangar.Delete(hgar24_SL);
  hangar.Insert(hgar24_SL, hangar_s24_2);

  // поле "цвет тени" пинга
  hangar_s26_2:=hangar.Strings[hgar26_SL];
  hangar_s26:=Edit2.Text;
  Delete(hangar_s26, 1, 1);
  hangar_s26:='"0x' + hangar_s26 + '"';
  hangar_s26_2:=StringReplace(hangar_s26_2, hangar_s26_3, hangar_s26, []);
  hangar.Delete(hgar26_SL);
  hangar.Insert(hgar26_SL, hangar_s26_2);

  // поле "дистанция" тени
  hangar_s27_2:=hangar.Strings[hgar27_SL];
  hangar_s27_2:=StringReplace(hangar_s27_2, hangar_s27, IntToStr(SpinEdit12.Value), []);
  hangar.Delete(hgar27_SL);
  hangar.Insert(hgar27_SL, hangar_s27_2);

  // поле "угол" тени
  hangar_s28_2:=hangar.Strings[hgar28_SL];
  hangar_s28_2:=StringReplace(hangar_s28_2, hangar_s28, IntToStr(SpinEdit13.Value), []);
  hangar.Delete(hgar28_SL);
  hangar.Insert(hgar28_SL, hangar_s28_2);

  // поле "прозрачность" тени
  hangar_s29_2:=hangar.Strings[hgar29_SL];
  hangar_s29_2:=StringReplace(hangar_s29_2, hangar_s29, IntToStr(SpinEdit14.Value), []);
  hangar.Delete(hgar29_SL);
  hangar.Insert(hgar29_SL, hangar_s29_2);

  // поле "размытие/размер" тени
  hangar_s30_2:=hangar.Strings[hgar30_SL];
  hangar_s30_2:=StringReplace(hangar_s30_2, hangar_s30, IntToStr(SpinEdit15.Value), []);
  hangar.Delete(hgar30_SL);
  hangar.Insert(hgar30_SL, hangar_s30_2);

  // поле "интенсивность" тени
  hangar_s31_2:=hangar.Strings[hgar31_SL];
  hangar_s31_2:=StringReplace(hangar_s31_2, hangar_s31, IntToStr(SpinEdit16.Value), []);
  hangar.Delete(hgar31_SL);
  hangar.Insert(hgar31_SL, hangar_s31_2);

end;

// сохранение параметров в файл battle.xc
procedure TXCTuner_Form1.battle_save;

begin
  // процедура подготовки изменений для сохранения в файл battle.xc
  if (RadioButton2.Checked=True) then
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
  b_s8_2:=battle.Strings[bs8_SL];


  b_s7_2:=battle.Strings[bs7_SL];
  b_s7_2:=StringReplace(b_s7_2, b_s7, IntToStr(SpinEdit1.Value), []);
  battle.Delete(bs7_SL);
  battle.Insert(bs7_SL, b_s7_2);

  b_s8_2:=battle.Strings[bs8_SL];
  b_s8_2:=StringReplace(b_s8_2, b_s8, IntToStr(SpinEdit2.Value), []);
  battle.Delete(bs8_SL);
  battle.Insert(bs8_SL, b_s8_2);

end;

// загрузка из файла @xvm.xc
procedure TXCTuner_Form1.xvm_loading;
begin
  // загрузка данных из файла @xvm.xc
    temp_list.Clear;
    temp_list.Text:=xvm.Text;

    Search:='"configVersion"';
    SearchLine_my();
    xvm1_SL:=SearchLine;
    xvm_s1:=Trim(xvm.Strings[SearchLine]);

    Search:='"editorVersion"';
    SearchLine_my();
    xvm2_SL:=SearchLine;
    xvm_s2:=Trim(xvm.Strings[SearchLine]);

    Search:='"language"';
    SearchLine_my();
    xvm3_SL:=SearchLine;
    xvm_s3:=Trim(xvm.Strings[SearchLine]);

    Search:='"region"';
    SearchLine_my();
    xvm4_SL:=SearchLine;
    xvm_s4:=Trim(xvm.Strings[SearchLine]);

    Search:='"author"';
    SearchLine_my();
    xvm5_SL:=SearchLine;
    xvm_s5:=Trim(xvm.Strings[SearchLine]);

    Search:='"description"';
    SearchLine_my();
    xvm6_SL:=SearchLine;
    xvm_s6:=Trim(xvm.Strings[SearchLine]);

    Search:='"date"';
    SearchLine_my();
    xvm7_SL:=SearchLine;
    xvm_s7:=Trim(xvm.Strings[SearchLine]);

    Search:='"gameVersion"';
    SearchLine_my();
    xvm8_SL:=SearchLine;
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

// загрузка из файла rating.xc
procedure TXCTuner_Form1.rating_loading;
begin
  rating.Clear;
  rating.LoadFromFile(dir_xvm+'\'+'rating.xc');
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

// сохранение параметров в файл rating.xc
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

