unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RTTICtrls, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, ComCtrls, StdCtrls, Spin, Unit2, Unit3,
  mbColorPreview, StrUtils, types, Unit4, ShellApi;

type

  { TXCTuner_Form1 }

  TXCTuner_Form1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitRefresh1: TBitBtn;
    BitRefresh10: TBitBtn;
    BitRefresh2: TBitBtn;
    BitRefresh3: TBitBtn;
    BitRefresh4: TBitBtn;
    BitRefresh5: TBitBtn;
    BitRefresh6: TBitBtn;
    BitRefresh7: TBitBtn;
    BitRefresh8: TBitBtn;
    BitRefresh9: TBitBtn;
    BitSave1: TBitBtn;
    BitSave10: TBitBtn;
    BitSave2: TBitBtn;
    BitSave3: TBitBtn;
    BitSave4: TBitBtn;
    BitSave5: TBitBtn;
    BitSave6: TBitBtn;
    BitSave7: TBitBtn;
    BitSave8: TBitBtn;
    BitSave9: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit2: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
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
    GroupBox36: TGroupBox;
    GroupBox37: TGroupBox;
    GroupBox38: TGroupBox;
    GroupBox39: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox40: TGroupBox;
    GroupBox41: TGroupBox;
    GroupBox42: TGroupBox;
    GroupBox43: TGroupBox;
    GroupBox44: TGroupBox;
    GroupBox45: TGroupBox;
    GroupBox46: TGroupBox;
    GroupBox47: TGroupBox;
    GroupBox48: TGroupBox;
    GroupBox49: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox50: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image3: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image4: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image5: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image6: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
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
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label5: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label6: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    mbColorPreview1: TmbColorPreview;
    mbColorPreview2: TmbColorPreview;
    mbColorPreview3: TmbColorPreview;
    mbColorPreview4: TmbColorPreview;
    mbColorPreview5: TmbColorPreview;
    PageControl2: TPageControl;
    PageControl3: TPageControl;
    PageControl4: TPageControl;
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
    RadioButton47: TRadioButton;
    RadioButton48: TRadioButton;
    RadioButton49: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton50: TRadioButton;
    RadioButton51: TRadioButton;
    RadioButton52: TRadioButton;
    RadioButton53: TRadioButton;
    RadioButton54: TRadioButton;
    RadioButton55: TRadioButton;
    RadioButton56: TRadioButton;
    RadioButton57: TRadioButton;
    RadioButton58: TRadioButton;
    RadioButton59: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton60: TRadioButton;
    RadioButton61: TRadioButton;
    RadioButton62: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    ScrollBox1: TScrollBox;
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
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TrackBar1: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitRefresh10Click(Sender: TObject);
    procedure BitRefresh1Click(Sender: TObject);
    procedure BitRefresh2Click(Sender: TObject);
    procedure BitRefresh3Click(Sender: TObject);
    procedure BitRefresh4Click(Sender: TObject);
    procedure BitRefresh5Click(Sender: TObject);
    procedure BitRefresh6Click(Sender: TObject);
    procedure BitRefresh7Click(Sender: TObject);
    procedure BitRefresh8Click(Sender: TObject);
    procedure BitRefresh9Click(Sender: TObject);
    procedure BitSave10Click(Sender: TObject);
    procedure BitSave1Click(Sender: TObject);
    procedure BitSave2Click(Sender: TObject);
    procedure BitSave3Click(Sender: TObject);
    procedure BitSave4Click(Sender: TObject);
    procedure BitSave5Click(Sender: TObject);
    procedure BitSave6Click(Sender: TObject);
    procedure BitSave7Click(Sender: TObject);
    procedure BitSave8Click(Sender: TObject);
    procedure BitSave9Click(Sender: TObject);
    procedure BtExitClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image32Click(Sender: TObject);
    procedure Image33Click(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure Image35Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Image45Click(Sender: TObject);
    procedure Image46Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image48Click(Sender: TObject);
    procedure Image49Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image53Click(Sender: TObject);
    procedure Image54Click(Sender: TObject);
    procedure Image55Click(Sender: TObject);
    procedure Image56Click(Sender: TObject);
    procedure Image57Click(Sender: TObject);
    procedure Image58Click(Sender: TObject);
    procedure Image59Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image60Click(Sender: TObject);
    procedure Image61Click(Sender: TObject);
    procedure Image62Click(Sender: TObject);
    procedure Image63Click(Sender: TObject);
    procedure Image64Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Label63Click(Sender: TObject);
    procedure Label63MouseLeave(Sender: TObject);
    procedure Label63MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
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
    { private declarations }
  public
    function Smart_Replacing(PodStr1, FullStr, ChangeStr: String): String;
    function ColorToHex(rgb: TColor):String;
    function HexToTColor(myColor: string): TColor;
    function DelStartEnd(InputStr: String): String;
    function RecStartEnd(RecStr: String): String;
    function FindFilesXVM(FindStr: String; FileXVMAllStr: TStringList): String;
    function new_change_str(sub_str, full_str: String): String;
    function error_message(file_name, str_sub: String; line_str: Integer): String;
    function Search_Line(Line: Integer; Search: String; temp_list: TStringList): Integer;
    procedure error_line(Search, temp_name: String);
    procedure SearchLine_my();
    procedure SearchLine_my_2();
    procedure activ_conf();
    procedure xvm_loading();
    procedure battle_loading();
    procedure battle_save();
    procedure login_loading();
    procedure login_save();
    procedure hangar_loading();
    procedure hangar_save();
    procedure fragCorrelation_loading();
    procedure fragCorrelation_save();
    procedure userinfo_loading();
    procedure userinfo_save();
    procedure rating_loading();
    procedure rating_save();
    procedure squad_loading();
    procedure squad_save();
    procedure iconset_loading();
    procedure iconset_save();
    procedure hotkeys_loading();
    procedure hotkeys_save();
    procedure texts_loading();
    procedure texts_save();
    procedure turret_loading();
    procedure turret_save();
    procedure expanel_loading();
    procedure expanel_save();
    { public declarations }
  end;

const
  tpi = 'Данный параметр находится в ';
  tpis = 'Данные параметры находятся в файле ';
  litf = ' строке в файле ';
  path = ' по пути ';
  enopt = 'Включить опцию - ';
  disopt = 'Отключить опцию - ';
  switchon = 'Вкл. переключатель - ';
  switchoff = 'Откл. переключатель - ';
  ErrorConf = 'В конфиге ошибка! В файле ';
  Correct = 'Исправьте (правильно true или false)! Программа закроется!';
  colorInf = 'Значение должно быть в формате типа #FFFFFF';
  range = 'Диапазон - ';

var
  XCTuner_Form1: TXCTuner_Form1;

  chek1, chek2, chek3, chek4, chek5, chek6, chek7, chek8, chek9, chek10: String;
  ColorSelect, ChangeEdit, SearchLine, px1, px2, px3: Integer;
  ChangeEditText, Search, temp_name, dir_xvm: String;

  xvm_base, xvm, battle, iconset, login, hangar, hotkeys, userInfo, rating, texts, squad, turret, temp_list: TStringList;
  fragcorr, expanel: TStringList;

  activ_config, xvm_file_name, battle_name, login_name, hangar_name, hotkeys_name, userInfo_name, rating_name: String;
  squad_name, iconset_name, texts_name, turret_name, frag_name, expanel_name: String;

  b_s1, b_s2, b_s3, b_s4, b_s5, b_s6: String;

  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_s9, xvm_s10: String;

  login_s1, login_s2, login_s3, login_s4, login_s5, login_s6: string;

  hangar_s1, hangar_s2, hangar_s3, hangar_s4, hangar_s5, hangar_s6, hangar_s7,
  hangar_s8, hangar_s9, hangar_s10, hangar_s11, hangar_s12, hangar_s13,
  hangar_s14, hangar_s15, hangar_s16, hangar_s17, hangar_s18, hangar_s19,
  hangar_s20, hangar_s21, hangar_s22, hangar_s23, hangar_s24, hangar_s25,
  hangar_s26, hangar_s27, hangar_s28, hangar_s29, hangar_s30, hangar_s31: string;

  hotkeys_s1, hotkeys_s2, hotkeys_s3: String;

  iconset_s1, iconset_s2, iconset_s3, iconset_s4, iconset_s5, iconset_s6, iconset_s7, iconset_s8: String;

  fragcorr_s1: String;
  fr0_SL, fr1_SL: Integer;

  expanel_s1, expanel_s2: String;
  exp0_SL, exp1_SL, exp2_SL: Integer;

  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;

  UserInfo_s1, UserInfo_s2, UserInfo_s3, UserInfo_s4, UserInfo_s5, UserInfo_s6, UserInfo_s7: String;

  texts_s1, texts_s2, texts_s3, texts_s4, texts_s5: String;

  turret_s1, turret_s2: String;

  squad_s1, squad_s2, squad_s3: String;

  bs0_SL, bs1_SL, bs2_SL, bs3_SL, bs4_SL, bs5_SL, bs6_SL: Integer;
  log1_SL, log2_SL, log3_SL, log4_SL, log5_SL, log6_SL: Integer;
  xvm1_SL, xvm2_SL, xvm3_SL, xvm4_SL, xvm5_SL, xvm6_SL, xvm7_SL, xvm8_SL, xvm9_SL, xvm10_SL: Integer;

  hgar1_SL, hgar2_SL, hgar3_SL, hgar4_SL, hgar5_SL, hgar6_SL, hgar7_SL: Integer;
  hgar8_SL, hgar9_SL, hgar10_SL, hgar11_SL, hgar12_SL, hgar13_SL: Integer;
  hgar14_SL, hgar15_SL, hgar16_SL, hgar17_SL, hgar18_SL, hgar19_SL, hgar20_SL: Integer;
  hgar21_SL, hgar22_SL, hgar23_SL, hgar24_SL, hgar25_SL, hgar26_SL: Integer;
  hgar27_SL, hgar28_SL, hgar29_SL, hgar30_SL, hgar31_SL: Integer;

  HK1_SL, HK2_SL, HK3_SL: Integer;

  IS1_SL, IS2_SL, IS3_SL, IS4_SL, IS5_SL, IS6_SL, IS7_SL, IS8_SL: Integer;

  rat1_SL, rat2_SL, rat3_SL, rat4_SL, rat5_SL: Integer;

  SQ1_SL, SQ2_SL, SQ3_SL: Integer;

  TXT1_SL, TXT2_SL, TXT3_SL, TXT4_SL, TXT5_SL: Integer;

  TUR1_SL, TUR2_SL: Integer;

  UI1_SL, UI2_SL, UI3_SL, UI4_SL, UI5_SL, UI6_SL, UI7_SL: Integer;


implementation

{$R *.lfm}

{ TXCTuner_Form1 }

// Открытие вкладки "Общие"
procedure TXCTuner_Form1.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn10.Glyph:=nil;
  BitBtn1.Font.Style:=[fsBold];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[];
  BitBtn10.Font.Style:=[];
  ImageList1.GetBitmap(0, BitBtn1.Glyph);
  PageControl1.ActivePage:=TabSheet1;
end;

// Открытие вкладки "Прочее"
procedure TXCTuner_Form1.BitBtn10Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn10.Glyph:=nil;
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[];
  BitBtn10.Font.Style:=[fsBold];
  ImageList1.GetBitmap(0, BitBtn10.Glyph);
  PageControl1.ActivePage:=TabSheet6;
end;

// Открытие вкладки "Логин"
procedure TXCTuner_Form1.BitBtn2Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn10.Glyph:=nil;
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[fsBold];
  BitBtn3.Font.Style:=[];
  BitBtn10.Font.Style:=[];
  ImageList1.GetBitmap(0, BitBtn2.Glyph);
  PageControl1.ActivePage:=TabSheet2;
end;

// Открытие вкладки "Ангар"
procedure TXCTuner_Form1.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Glyph:=nil;
  BitBtn2.Glyph:=nil;
  BitBtn3.Glyph:=nil;
  BitBtn10.Glyph:=nil;
  BitBtn1.Font.Style:=[];
  BitBtn2.Font.Style:=[];
  BitBtn3.Font.Style:=[fsBold];
  BitBtn10.Font.Style:=[];
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
      BitBtn4.Hint:='Развернуть панель';
    end
      else
    begin
      Panel1.Visible:=true;
      BitBtn4.Caption:='<';
      XCTuner_Form1.Width:=940;
      BitBtn4.Hint:='Свернуть панель';
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

procedure TXCTuner_Form1.BitRefresh10Click(Sender: TObject);
begin
  turret_loading();
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
  fragCorrelation_loading();
  expanel_loading();
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

procedure TXCTuner_Form1.BitRefresh5Click(Sender: TObject);
begin
  userinfo_loading();
end;

procedure TXCTuner_Form1.BitRefresh6Click(Sender: TObject);
begin
  iconset_loading();
end;

procedure TXCTuner_Form1.BitRefresh7Click(Sender: TObject);
begin
  hotkeys_loading();
end;

procedure TXCTuner_Form1.BitRefresh8Click(Sender: TObject);
begin
  squad_loading();
end;

procedure TXCTuner_Form1.BitRefresh9Click(Sender: TObject);
begin
  texts_loading();
end;

procedure TXCTuner_Form1.BitSave10Click(Sender: TObject);
begin
  turret_save();
  turret.SaveToFile(dir_xvm+turret_name);
  turret_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "rating.xc"
procedure TXCTuner_Form1.BitSave1Click(Sender: TObject);
begin
  rating_save();
  rating.SaveToFile(dir_xvm+rating_name);
  rating_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "battle.xc"
procedure TXCTuner_Form1.BitSave2Click(Sender: TObject);
begin
  battle_save();
  battle.SaveToFile(dir_xvm+battle_name);
  fragCorrelation_save();
  fragcorr.SaveToFile(dir_xvm+frag_name);
  expanel_save();
  expanel.SaveToFile(dir_xvm+expanel_name);
  battle.Clear;
  fragcorr.Clear;
  expanel.Clear;
  battle_loading();
  fragCorrelation_loading();
  expanel_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "login.xc"
procedure TXCTuner_Form1.BitSave3Click(Sender: TObject);
begin
  login_save();
  login.SaveToFile(dir_xvm+login_name);
  login_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "hangar.xc"
procedure TXCTuner_Form1.BitSave4Click(Sender: TObject);
begin
  hangar_save();
  hangar.SaveToFile(dir_xvm+hangar_name);
  hangar_loading();
end;

procedure TXCTuner_Form1.BitSave5Click(Sender: TObject);
begin
  userinfo_save();
  userInfo.SaveToFile(dir_xvm+userInfo_name);
  userinfo_loading();
end;

procedure TXCTuner_Form1.BitSave6Click(Sender: TObject);
begin
  iconset_save();
  iconset.SaveToFile(dir_xvm+iconset_name);
  iconset_loading();
end;

procedure TXCTuner_Form1.BitSave7Click(Sender: TObject);
begin
  hotkeys_save();
  hotkeys.SaveToFile(dir_xvm+hotkeys_name);
  hotkeys_loading();
end;

procedure TXCTuner_Form1.BitSave8Click(Sender: TObject);
begin
  squad_save();
  squad.SaveToFile(dir_xvm+squad_name);
  squad_loading();
end;

procedure TXCTuner_Form1.BitSave9Click(Sender: TObject);
begin
  texts_save();
  texts.SaveToFile(dir_xvm+texts_name);
  texts_loading();
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

procedure TXCTuner_Form1.ComboBox5Change(Sender: TObject);
begin
  case ComboBox5.ItemIndex of
    0: Edit16.Text:=Edit16.Text+'{{level}}';
    1: Edit16.Text:=Edit16.Text+'{{rlevel}}';
    2: Edit16.Text:=Edit16.Text+'{{vtype}}';
    3: Edit16.Text:=Edit16.Text+'{{vtype-l}}';
    4: Edit16.Text:=Edit16.Text+'{{battletier-min}}';
    5: Edit16.Text:=Edit16.Text+'{{battletier-max}}';
  end;
  ComboBox5.ItemIndex:=-1;
end;

// события при изменение Edit2 при выходе из поля
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
       ShowMessage(colorInf);
    end;
end;

// события при изменение Edit3 при выходе из поля
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
       ShowMessage(colorInf);
    end;
end;

// события при изменение Edit4 при выходе из поля
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
       ShowMessage(colorInf);
    end;
end;

// события при изменение Edit5 при выходе из поля
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
       ShowMessage(colorInf);
    end;
end;

// события при изменение Edit6 при выходе из поля
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
       ShowMessage(colorInf);
    end;
end;

// События происходящие при создание приложения
procedure TXCTuner_Form1.FormCreate(Sender: TObject);
begin
  // Проверяем присутствие файла @xvm.xc в директории с программой
  activ_conf();
  activ_config:=StringReplace(activ_config, '/', '\', [rfReplaceAll, rfIgnoreCase]);
  // заносим путь к директории конфига
  dir_xvm:=ExtractFilePath(ParamStr(0))+activ_config;

  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  iconset:=TStringList.Create;
  login:=TStringList.Create;
  hangar:=TStringList.Create;
  hotkeys:=TStringList.Create;
  fragcorr:=TStringList.Create;
  userInfo:=TStringList.Create;
  rating:=TStringList.Create;
  texts:=TStringList.Create;
  squad:=TStringList.Create;
  turret:=TStringList.Create;
  expanel:=TStringList.Create;
  temp_list:=TStringList.Create;

  xvm.LoadFromFile(dir_xvm+xvm_file_name);

  // Узнаем ссылочные имена файлов из файла @xvm.xc
  battle_name:=FindFilesXVM('"battle"', xvm);
  iconset_name:=FindFilesXVM('"iconset"', xvm);
  login_name:=FindFilesXVM('"login"', xvm);
  hangar_name:=FindFilesXVM('"hangar"', xvm);
  hotkeys_name:=FindFilesXVM('"hotkeys"', xvm);
  frag_name:=FindFilesXVM('"fragCorrelation"', xvm);
  userInfo_name:=FindFilesXVM('"userInfo"', xvm);
  rating_name:=FindFilesXVM('"rating"', xvm);
  texts_name:=FindFilesXVM('"texts"', xvm);
  turret_name:=FindFilesXVM('"turretMarkers"', xvm);
  squad_name:=FindFilesXVM('"squad"', xvm);
  expanel_name:=FindFilesXVM('"expertPanel"', xvm);

  if ((FileExists(dir_xvm+xvm_file_name )) and
      (FileExists(dir_xvm+battle_name   )) and
      (FileExists(dir_xvm+iconset_name  )) and
      (FileExists(dir_xvm+login_name    )) and
      (FileExists(dir_xvm+hangar_name   )) and
      (FileExists(dir_xvm+hotkeys_name  )) and
      (FileExists(dir_xvm+frag_name     )) and
      (FileExists(dir_xvm+userInfo_name )) and
      (FileExists(dir_xvm+squad_name    )) and
      (FileExists(dir_xvm+texts_name    )) and
      (FileExists(dir_xvm+turret_name   )) and
      (FileExists(dir_xvm+expanel_name  )) and
      (FileExists(dir_xvm+rating_name   ))) then
    begin

      // вывод версии файла в заголовок
      XCTuner_Form1.Caption:=XCTuner_Form1.Caption + '   Версия - ' + '0.1.8.53';
      XCTuner_Form1.Height:=520;
      XCTuner_Form1.Width:=940;
      BitBtn1.Click;

      ComboBox1.Items:=Screen.Fonts;            // загружает в ComboBox все шрифты что есть в windows
      ComboBox1.Items.Insert(0, '$FieldFont');  // загружает в ComboBox имя деф. шрифта XVM
      ComboBox1.Items.Insert(1, '$TextFont');   // загружает в ComboBox имя деф. шрифта клиента танков

      xvm_loading();
      battle_loading();
      iconset_loading();
      login_loading();
      hangar_loading();
      hotkeys_loading();
      fragCorrelation_loading();
      userinfo_loading();
      rating_loading();
      squad_loading();
      texts_loading();
      turret_loading();
      expanel_loading();

      BitBtn1.Hint:='Настройка в файлах: ' + xvm_file_name + ', ' + battle_name + ' и ' + rating_name;
      BitBtn2.Hint:='Настройка в файле: ' + login_name;
      BitBtn3.Hint:='Настройка в файлах: ' + hangar_name+', '+userInfo_name + ' и ' + squad_name;
      BitBtn10.Hint:='Настройка в файлах: '+iconset_name+', '+hotkeys_name+', '+texts_name+' и '+turret_name;
    end
  else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файлы конфига не найдены или отсутствует запись в файле xvm.xc! Поместите программу в папку xvm и проверте правильность пути к конфигу! Программа закроется!');
      Application.Terminate;
    end;
end;

// При уничтожении формы очищаем переменную xvm
procedure TXCTuner_Form1.FormDestroy(Sender: TObject);
begin
  xvm.Free;
  xvm_base.Free;
  battle.Free;
  iconset.Free;
  login.Free;
  hangar.Free;
  hotkeys.Free;
  fragcorr.Free;
  userInfo.Free;
  rating.Free;
  squad.Free;
  texts.Free;
  turret.Free;
  expanel.Free;
  temp_list.Free;
end;

procedure TXCTuner_Form1.Image10Click(Sender: TObject);
begin
  ShowMessage(tpis+expanel_name+path
  +activ_config+#13#10+'Задержка исчезновения панели -   "delay" '+IntToStr(exp1_SL+1)+' строка'+#13#10
  +'Увеличение панели -   "scale" '+IntToStr(exp2_SL+1)+' строка');
end;

procedure TXCTuner_Form1.Image11Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs4_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"highlightVehicleIcon": true'+#13#10+disopt+'"highlightVehicleIcon": false');
end;

procedure TXCTuner_Form1.Image12Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs5_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"useStandardMarkers": true'+#13#10+disopt+'"useStandardMarkers": false');
end;

procedure TXCTuner_Form1.Image13Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(fr1_SL+1)+litf+frag_name+path
  +activ_config+#13#10+enopt+'"hideTeamTextFields": false'+#13#10+disopt+'"hideTeamTextFields": true');
end;

procedure TXCTuner_Form1.Image14Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log1_SL+1)+litf+login_name+path
  +activ_config+#13#10+switchon+'"skipIntro": true'+#13#10+switchoff+'"skipIntro": false');
end;

procedure TXCTuner_Form1.Image15Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log2_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"autologin": true'+#13#10+disopt+'"autologin": false');
end;

procedure TXCTuner_Form1.Image16Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log3_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"confirmOldReplays": true'+#13#10+disopt+'"confirmOldReplays": false'
  +#13#10+'Если включить, то при открытие старых реплеев они будут автоматически запускаться на проигрывание');
end;

procedure TXCTuner_Form1.Image17Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log4_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false'
  +#13#10+'Положение поля по осям настраиваются:'+#13#10+'X - '+IntToStr(log5_SL+1)+' строка'
  +#13#10+'Y - '+IntToStr(log6_SL+1)+' строка');
end;

procedure TXCTuner_Form1.Image18Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar1_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"hideTutorial": false'+#13#10+disopt+'"hideTutorial": true');
end;

procedure TXCTuner_Form1.Image19Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar2_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"xwnInCompany": true'+#13#10+disopt+'"xwnInCompany": false');
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
  Edit_XVM.Edit8.Text:=xvm_s9;
  Edit_XVM.Edit9.Text:=xvm_s10;
  Edit_XVM.ShowModal;
end;

procedure TXCTuner_Form1.Image20Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar3_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"masteryMarkInTankCarousel": true'+#13#10+disopt+'"masteryMarkInTankCarousel": false');
end;

procedure TXCTuner_Form1.Image21Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar7_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image22Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar8_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+'Чем меньше значение, тем чаще происходить будет обновление!');
end;

procedure TXCTuner_Form1.Image23Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar12_SL+1)+litf+hangar_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image24Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar13_SL+1)+litf+hangar_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image25Click(Sender: TObject);
begin
  ShowMessage(tpis+hangar_name+path
  +activ_config+#13#10+'great - '+IntToStr(hgar22_SL+1)+' строка (до этого значения отклик отличный);'
  +#13#10+'good - '+IntToStr(hgar23_SL+1)+' строка (до этого значения отклик хороший);'
  +#13#10+'poor - '+IntToStr(hgar24_SL+1)+' строка (до этого значения отклик так себе);'
  +#13#10+'Значения более 100 считаются плохим откликом;');
end;

procedure TXCTuner_Form1.Image26Click(Sender: TObject);
begin
  ShowMessage(tpis+hangar_name+path
  +activ_config+#13#10+'Видимость (enabled) - '+IntToStr(hgar25_SL+1)+' строка (true - вкл., false -откл.);'
  +#13#10+'Цвет (color) - '+IntToStr(hgar26_SL+1)+' строка;'
  +#13#10+'Дистанция (distance) - '+IntToStr(hgar27_SL+1)+' строка;'
  +#13#10+'Угол (angle) - '+IntToStr(hgar28_SL+1)+' строка;'
  +#13#10+'Прозрачность (alpha) - '+IntToStr(hgar29_SL+1)+' строка;'
  +#13#10+'Размытие/Размер (blur) - '+IntToStr(hgar30_SL+1)+' строка;'
  +#13#10+'Интенсивность (strength) - '+IntToStr(hgar31_SL+1)+' строка;');
end;

procedure TXCTuner_Form1.Image27Click(Sender: TObject);
begin
  ShowMessage(tpis+hangar_name+path
  +activ_config+#13#10+'Отличный (great) - '+IntToStr(hgar18_SL+1)+' строка;'
  +#13#10+'Хороший  (good) - '+IntToStr(hgar19_SL+1)+' строка;'
  +#13#10+'Так себе    (poor)  - '+IntToStr(hgar20_SL+1)+' строка;'
  +#13#10+'Плохой      (bad)   - '+IntToStr(hgar21_SL+1)+' строка;');
end;

procedure TXCTuner_Form1.Image28Click(Sender: TObject);
begin
  ShowMessage(tpis+hangar_name+path
  +activ_config+#13#10+'Имя шрифта - '+IntToStr(hgar14_SL+1)+' строка;'
  +#13#10+'Размер шрифта - '+IntToStr(hgar15_SL+1)+' строка;'
  +#13#10+'Стиль шрифта жирный - '+IntToStr(hgar16_SL+1)+' строка (true - вкл., false - откл.);'
  +#13#10+'Стиль шрифта курсив - '+IntToStr(hgar17_SL+1)+' строка (true - вкл., false - откл.);');
end;

procedure TXCTuner_Form1.Image29Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar4_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"masteryMarkInTechTree": true'+#13#10+disopt+'"masteryMarkInTechTree": false');
end;

procedure TXCTuner_Form1.Image2Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat1_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"showPlayersStatistics": true'+#13#10+disopt+'"showPlayersStatistics": false'
  +#13#10+'Если переключатель отключить, то модуль статистики не будет работать (отключится по всему конфигу!)');
end;

procedure TXCTuner_Form1.Image30Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar5_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"hidePricesInTechTree": false'+#13#10+disopt+'"hidePricesInTechTree": true');
end;

procedure TXCTuner_Form1.Image31Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar6_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+enopt+'"widgetsEnabled": true'+#13#10+disopt+'"widgetsEnabled": false');
end;

procedure TXCTuner_Form1.Image32Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar9_SL+1)+litf+hangar_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image33Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar10_SL+1)+litf+hangar_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image34Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar11_SL+1)+litf+hangar_name+path
  +activ_config+#13#10+'Чем меньше значение, тем более прозрачен текст!');
end;

procedure TXCTuner_Form1.Image35Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI3_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+enopt+'"showExtraDataInProfile": true'+#13#10+disopt+'"showExtraDataInProfile": false');
end;

procedure TXCTuner_Form1.Image36Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI1_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+range+'1 - 4');
end;

procedure TXCTuner_Form1.Image37Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI2_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+range+'1 - 8');
end;

procedure TXCTuner_Form1.Image38Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI4_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+enopt+'"inHangarFilterEnabled": true'+#13#10+disopt+'"inHangarFilterEnabled": false');
end;

procedure TXCTuner_Form1.Image39Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI5_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+enopt+'"showFilters": true'+#13#10+disopt+'"showFilters": false');
end;

procedure TXCTuner_Form1.Image3Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat2_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"enableUserInfoStatistics": true'+#13#10+disopt+'"enableUserInfoStatistics": false');
end;

procedure TXCTuner_Form1.Image40Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI6_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+enopt+'"filterFocused": true'+#13#10+disopt+'"filterFocused": false');
end;

procedure TXCTuner_Form1.Image41Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(UI7_SL+1)+litf+userInfo_name+path
  +activ_config+#13#10+'Описание замен: (+all, -premium, ...)');
end;

procedure TXCTuner_Form1.Image42Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS1_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image43Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS2_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image44Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS3_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image45Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS4_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image46Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS5_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image47Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS6_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image48Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS7_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image49Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(IS8_SL+1)+litf+iconset_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image4Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat3_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"enableCompanyStatistics": true'+#13#10+disopt+'"enableCompanyStatistics": false');
end;

procedure TXCTuner_Form1.Image50Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(HK1_SL+1)+litf+hotkeys_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image51Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(HK2_SL+1)+litf+hotkeys_name+path
  +activ_config+#13#10+enopt+'"onHold": true'+#13#10+disopt+'"onHold": false');
end;

procedure TXCTuner_Form1.Image52Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(SQ1_SL+1)+litf+squad_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image53Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(SQ2_SL+1)+litf+squad_name+path
  +activ_config+#13#10+enopt+'"showClan": true'+#13#10+disopt+'"showClan": false');
end;

procedure TXCTuner_Form1.Image54Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(SQ3_SL+1)+litf+squad_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image55Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TXT1_SL+1)+litf+texts_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image56Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TXT2_SL+1)+litf+texts_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image57Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TXT3_SL+1)+litf+texts_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image58Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TXT4_SL+1)+litf+texts_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image59Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TXT5_SL+1)+litf+texts_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image5Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat4_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"loadEnemyStatsInFogOfWar": true'+#13#10+disopt+'"loadEnemyStatsInFogOfWar": false');
end;

procedure TXCTuner_Form1.Image60Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TUR1_SL+1)+litf+turret_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image61Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(TUR2_SL+1)+litf+turret_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image62Click(Sender: TObject);
begin
  Edit16.Clear;
end;

procedure TXCTuner_Form1.Image63Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(HK3_SL+1)+litf+hotkeys_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image64Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs6_SL+1)+litf+battle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image6Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat5_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"enableStatisticsLog": true'+#13#10+disopt+'"enableStatisticsLog": false');
end;

procedure TXCTuner_Form1.Image7Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs1_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"mirroredVehicleIcons": true'+#13#10+disopt+'"mirroredVehicleIcons": false'
  +#13#10+'Если вы используете стандартные иконки, то лучше включить зеркалирование иконок. Для альтернативных иконок наоборот - выключить зеркалирование!');
end;

procedure TXCTuner_Form1.Image8Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs2_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"showPostmortemTips": true'+#13#10+disopt+'"showPostmortemTips": false');
end;

procedure TXCTuner_Form1.Image9Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs3_SL+1)+litf+battle_name+path
  +activ_config+#13#10+switchon+'"removePanelsModeSwitcher": false'+#13#10+switchoff+'"removePanelsModeSwitcher": true');
end;

procedure TXCTuner_Form1.Label63Click(Sender: TObject);
begin
  ShellExecute(0,PChar('open'),PChar('explorer'),PChar(xvm_s9),nil,5);
end;

procedure TXCTuner_Form1.Label63MouseLeave(Sender: TObject);
begin
  Label63.Font.Style:=Label63.Font.Style-[fsUnderLine];
end;

procedure TXCTuner_Form1.Label63MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label63.Font.Style:=Label63.Font.Style+[fsUnderline];
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

// Перевод hex в color
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

// Функция удаления начальных " или "0x и конечного "
function TXCTuner_Form1.DelStartEnd(InputStr: String): String;
begin
  if pos('"0x', InputStr)<>0 then
    begin
      Delete(InputStr, 1, 3);
      Delete(InputStr, Length(InputStr), 1);
      Result:=InputStr;
    end else
    begin
      Delete(InputStr, 1, 1);
      Delete(InputStr, Length(InputStr), 1);
      Result:=InputStr;
    end;
end;

// Функция для записи в начало " или "0x , а в конец "
function TXCTuner_Form1.RecStartEnd(RecStr: String): String;
begin
  if Length(RecStr)=0 then Result:='""' else
  if RecStr[1]='#' then
    begin
      Delete(RecStr, 1, 1);
      RecStr:='"0x' + RecStr + '"';
      Result:=RecStr;
    end else
    begin
      RecStr:='"' + RecStr + '"';
      Result:=RecStr;
    end;
end;

// Функция замены значений в файлах конфига!
function TXCTuner_Form1.Smart_Replacing(PodStr1, FullStr, ChangeStr: String): String;
var
  poz1: Integer;
  PodStr2: String;
begin
  poz1:=Pos(PodStr1, FullStr);
  PodStr2:=new_change_str(PodStr1, FullStr);
  poz1:=PosEx(PodStr2, FullStr, poz1+1);
  Delete(FullStr, poz1, Length(PodStr2));
  Insert(ChangeStr, FullStr, poz1);
  Result:=FullStr;
end;

// Функция нахождения имени файлов, на которые ссылается файл @xvm.xc
function TXCTuner_Form1.FindFilesXVM(FindStr: String; FileXVMAllStr: TStringList
  ): String;
var
  m, c1, c2: Integer;
  strFind: String;
begin
  c1:=0;
  c2:=0;
  for m := 0 to (FileXVMAllStr.Count - 1) do
    begin
    strFind:=Trim(FileXVMAllStr.Strings[m]);
    c1:=pos(FindStr, strFind);
    c2:=PosEx('${', strFind, c1);
    if Length(strFind)=0 then Continue;
    if (c1>0) and (c2>0) then
      begin
        c1:=PosEx('"', strFind, Pos('$', strFind));
        c2:=PosEx('"', strFind, c1+1);
        break;
      end;
    end;
  Result:=Trim(Copy(strFind, c1+1, c2-c1-1));
end;

// Функция возвращает новую строку по входным данным
function TXCTuner_Form1.new_change_str(sub_str, full_str: String): String;
var i, p1: Integer;
begin
  // Отсекаем все шмотки от начала до : (+их самих!)
  p1:=PosEx(':', full_str, Pos(sub_str, full_str));
  if p1<>0 then
    begin
      Delete(full_str, 1, p1 + 1);
      // для верности уберем лишние пробелы слева!
      full_str:=TrimLeft(full_str);
    end;
  // Делаем проверку на 1-й знак в строке
  // Если это " то делаем нижеследующие
  // Ищем вторые (следующие) кавычки
  // Имеет право, т.к. внутри кавычек не могут быть еще пары кавычек!!!
  // И если находим / выходим из цикла
  // и копируем (ф-я Copy) нужный участок строки (длинною i, начиная с 1 символа!)
  // ASCII-код #034 (или #34) - двойная кавычка (")
  if full_str[1]=#34 then
    begin
      for i:=2 to Length(full_str) do
        begin
          // Если находим на участке двойную кавычку, то
          // копируем этот участкок длиною i, начиная с первого символа
          // и выходим из функции
          if full_str[i]=#34 then
            begin
              Result:=Copy(full_str, 1, i);
              Exit;
            end;
        end;
    end else
    begin
      for i:=2 to Length(full_str) do
        begin
          // ASCII-коды #044 (или #44) - запятая; #032 (или #32) - пробел
          // Если находим на участке запятую или пробел, то
          // копируем этот участкок длиною i-1, начиная с первого символа
          // и выходим из функции
          if (full_str[i]=#44) or (full_str[i]=#32) then
            begin
              Result:=Copy(full_str, 1, i - 1 );
              Exit;
            end;
        end;
      // Если вышеследующее не найдено ничего, то возвращаем
      // полученную на первом этапе, строку
      Result:=full_str;
    end;
end;

// Вывод ошибки на неверные данные
function TXCTuner_Form1.error_message(file_name, str_sub: String;
  line_str: Integer): String;
begin
  Result := ErrorConf+file_name+path+activ_config
  +#13#10+'Ошибка: '+str_sub+' (в строке '+IntToStr(line_str+1)+' )'
  +#13#10+Correct;
end;
// Функция поиска нужного слова / возвращает номер строки, где это слово найдено
function TXCTuner_Form1.Search_Line(Line: Integer; Search: String;
  temp_list: TStringList): Integer;
var i: Integer;
  temp_str: String;
begin
  if Line=0 then
    begin
    for i := 0 to (temp_list.Count - 1) do
      begin
        temp_str:=TrimLeft(temp_list.Strings[i]);
        if Length(temp_str)=0 then Continue;
        if (temp_str[1]='/') and (temp_str[2]='/') then Continue;
        if pos(Search, temp_list.Strings[i])>0 then
          begin
            Result:=i;
            Exit;
          end;
      end;
    end;
  if Line>0 then
    begin
    for i := Line to (temp_list.Count - 1) do
      begin
        temp_str:=TrimLeft(temp_list.Strings[i]);
        if Length(temp_str)=0 then Continue;
        if (temp_str[1]='/') and (temp_str[2]='/') then Continue;
        if pos(Search, temp_list.Strings[i])>0 then
          begin
            Result:=i;
            Exit;
          end;
      end;
    end;
  Result:=-1;
end;

// Процедура вывода на несуществующий параметр
procedure TXCTuner_Form1.error_line(Search, temp_name: String);
begin
  ShowMessage('Строка с параметром '+Search+' не найдена в файле '+temp_name+path+activ_config+#10#13+'Исправьте! Программа закроется!');
  Application.Terminate;
end;

// процедура поиска нужного слова / выводит номер строки где найдено это слово
procedure TXCTuner_Form1.SearchLine_my;
var k: Integer;
  temp_str: String;
begin
  for k := 0 to (temp_list.Count - 1) do
    begin
      temp_str:=TrimLeft(temp_list.Strings[k]);
      if Length(temp_str)=0 then Continue;
      if (temp_str[1]='/') and (temp_str[2]='/') then Continue;
      if pos(Search, temp_list.Strings[k])>0 then
        begin
          SearchLine:= k;
          Exit;
        end;
    end;
  SearchLine:=-1;
  ShowMessage('Строка с параметром '+Search+' не найдена в файле '+temp_name+path+activ_config+#10#13+' Исправьте! Программа закроется!');
end;

// процедура нахождения слов во вложенных конструкциях 2 уровня
procedure TXCTuner_Form1.SearchLine_my_2;
var n: Integer;
  temp_str: String;
begin
  for n := SearchLine to (temp_list.Count - 1) do
    begin
      temp_str:=TrimLeft(temp_list.Strings[n]);
      if Length(temp_str)=0 then Continue;
      if (temp_str[1]='/') and (temp_str[2]='/') then Continue;
      if pos(Search, temp_list.Strings[n])>0 then
        begin
          SearchLine:= n;
          Exit;
        end;
    end;
  SearchLine:=-1;
  ShowMessage('Строка с параметром '+Search+' не найдена в файле '+temp_name+path+activ_config+#10#13+' Исправьте! Программа закроется!');
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
        activ_config:=Trim(xvm_base.Strings[tx]);
        if Length(activ_config)=0  then Continue;
        if activ_config[1]='$' then
          begin
            Delete(activ_config, 1, pos('"', activ_config));
            activ_config:=TrimLeft(activ_config);
            px2:=pos('@xvm.xc', activ_config);
            px3:=pos('xvm.xc', activ_config);
            if px2<>0 then
              begin
                Delete(activ_config, px2, Length(activ_config) - px2 + 2);
                xvm_file_name:='@xvm.xc';
                exit;
              end;
            if px3<>0 then
              begin
                Delete(activ_config, px3-1, Length(activ_config) - px3 + 2);
                xvm_file_name:='xvm.xc';
                exit;
              end;
          end;
      end;
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
    end else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файл xvm.xc в папке xvm не найден! Проверте правильность нахождения файла! Программа закроется!');
      Application.Terminate;
    end;
end;
// загрузка из файла battle.xc
procedure TXCTuner_Form1.battle_loading;
begin
  battle.LoadFromFile(dir_xvm+battle_name);
  // загрузка данных из файла battle.xc в интерфейс
  bs0_SL:=Search_Line(0, '"battle"', battle);
  if bs0_SL=-1 then error_line('"battle"', battle_name) else
  begin
    // зеркалирование иконок / 1
    Search:='"mirroredVehicleIcons"';
    bs1_SL:=Search_Line(bs0_SL, Search, battle);
    if bs1_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s1:=battle.Strings[bs1_SL];
      b_s1:=new_change_str(Search, b_s1);
      if b_s1='true' then RadioButton1.Checked:=True else
      if b_s1='false' then RadioButton2.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s1, bs1_SL));
        Application.Terminate;
      end;
    end;

    // Всплывающая панель после смерти / 2
    Search:='"showPostmortemTips"';
    bs2_SL:=Search_Line(bs0_SL, Search, battle);
    if bs2_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s2:=battle.Strings[bs2_SL];
      b_s2:=new_change_str(Search, b_s2);
      if b_s2='true' then RadioButton3.Checked:=True else
      if b_s2='false' then RadioButton4.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s2, bs2_SL));
        Application.Terminate;
      end;
    end;

    // Переключатель режимов ушей / 3
    Search:='"removePanelsModeSwitcher"';
    bs3_SL:=Search_Line(bs0_SL, Search, battle);
    if bs3_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s3:=battle.Strings[bs3_SL];
      b_s3:=new_change_str(Search, b_s3);
      if b_s3='true' then RadioButton6.Checked:=True else
      if b_s3='false' then RadioButton5.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s3, bs3_SL));
        Application.Terminate;
      end;
    end;

    // Подсветка иконки своего танка и взвода / 4
    Search:='"highlightVehicleIcon"';
    bs4_SL:=Search_Line(bs0_SL, Search, battle);
    if bs4_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s4:=battle.Strings[bs4_SL];
      b_s4:=new_change_str(Search, b_s4);
      if b_s4='true' then RadioButton7.Checked:=True else
      if b_s4='false' then RadioButton8.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s4, bs4_SL));
        Application.Terminate;
      end;
    end;

    // Стандартные маркеры / 5
    Search:='"useStandardMarkers"';
    bs5_SL:=Search_Line(bs0_SL, Search, battle);
    if bs5_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s5:=battle.Strings[bs5_SL];
      b_s5:=new_change_str(Search, b_s5);
      if b_s5='true' then RadioButton9.Checked:=True else
      if b_s5='false' then RadioButton10.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s5, bs5_SL));
        Application.Terminate;
      end;
    end;

    // Формат часов / 6
    Search:='"clockFormat"';
    bs6_SL:=Search_Line(bs0_SL, Search, battle);
    if bs6_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s6:=battle.Strings[bs6_SL];
      b_s6:=new_change_str(Search, b_s6);
      Edit24.Text:=DelStartEnd(b_s6);
    end;
  end;
end;

// загрузка из файла login.xc
procedure TXCTuner_Form1.login_loading;
// загрузка из файла login.xc и обработка данных
begin
  login.Clear;
  login.LoadFromFile(dir_xvm+login_name);

  temp_list.Clear;
  temp_list.Text:=login.Text;

  temp_name:=login_name;

  // Пропустить вступительное видео / 1
  Search:='"login"';
  SearchLine_my();
  Search:='"skipIntro"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s1:=login.Strings[SearchLine];
  log1_SL:=SearchLine;
  login_s1:=new_change_str(Search, login_s1);
  if login_s1='true' then RadioButton23.Checked:=True else
  if login_s1='false' then RadioButton24.Checked:=True else
  begin
    ShowMessage(error_message(login_name, login_s1, log1_SL));
    Application.Terminate;
  end;
  end;

  // Автоматический вход в игру / 2
  Search:='"login"';
  SearchLine_my();
  Search:='"autologin"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s2:=login.Strings[SearchLine];
  log2_SL:=SearchLine;
  login_s2:=new_change_str(Search, login_s2);
  if login_s2='true' then RadioButton25.Checked:=True else
  if login_s2='false' then RadioButton26.Checked:=True else
  begin
    ShowMessage(error_message(login_name, login_s2, log2_SL));
    Application.Terminate;
  end;
  end;

  // Автоматически подтверждать проигрывание старых реплеев / 3
  Search:='"login"';
  SearchLine_my();
  Search:='"confirmOldReplays"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s3:=login.Strings[SearchLine];
  log3_SL:=SearchLine;
  login_s3:=new_change_str(Search, login_s3);
  if login_s3='true' then RadioButton27.Checked:=True else
  if login_s3='false' then RadioButton28.Checked:=True else
  begin
    ShowMessage(error_message(login_name, login_s3, log3_SL));
    Application.Terminate;
  end;
  end;

  // показывать пинг до серверов / 4
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"enabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s4:=login.Strings[SearchLine];
  log4_SL:=SearchLine;
  login_s4:=new_change_str(Search, login_s4);
  if login_s4='true' then RadioButton29.Checked:=True else
  if login_s4='false' then RadioButton30.Checked:=True else
  begin
    ShowMessage(error_message(login_name, login_s4, log4_SL));
    Application.Terminate;
  end;
  end;

  // Пинг до серверов / позиция по X / 5
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"x"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s5:=login.Strings[SearchLine];
  log5_SL:=SearchLine;
  login_s5:=new_change_str(Search, login_s5);
  SpinEdit3.Value:=StrToInt(login_s5);
  end;

  // Пинг до серверов / позиция по Y / 6
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"y"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  login_s6:=login.Strings[SearchLine];
  log6_SL:=SearchLine;
  login_s6:=new_change_str(Search, login_s6);
  SpinEdit4.Value:=StrToInt(login_s6);
  end;

end;

// сохранение параметров в файл login.xc
procedure TXCTuner_Form1.login_save;
begin
  // сохранение изменений в файл login.xc

  if (RadioButton23.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton25.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton27.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton29.Checked=True) then chek4:='true' else chek4:='false';

  // Пропустить вступительное видео / 1
  login_s1:=login.Strings[log1_SL];
  login_s1:=Smart_Replacing('"skipIntro"', login_s1, chek1);
  login.Delete(log1_SL);
  login.Insert(log1_SL, login_s1);

  // Автоматический вход в игру / 2
  login_s2:=login.Strings[log2_SL];
  login_s2:=Smart_Replacing('"autologin"', login_s2, chek2);
  login.Delete(log2_SL);
  login.Insert(log2_SL, login_s2);

  // Автоматически подтверждать проигрывание старых реплеев / 3
  login_s3:=login.Strings[log3_SL];
  login_s3:=Smart_Replacing('"confirmOldReplays"', login_s3, chek3);
  login.Delete(log3_SL);
  login.Insert(log3_SL, login_s3);

  // показывать пинг до серверов / 4
  login_s4:=login.Strings[log4_SL];
  login_s4:=Smart_Replacing('"enabled"', login_s4, chek4);
  login.Delete(log4_SL);
  login.Insert(log4_SL, login_s4);

  // Пинг до серверов / позиция по X / 5
  login_s5:=login.Strings[log5_SL];
  login_s5:=Smart_Replacing('"x"', login_s5, IntToStr(SpinEdit3.Value));
  login.Delete(log5_SL);
  login.Insert(log5_SL, login_s5);

  // Пинг до серверов / позиция по Y / 6
  login_s6:=login.Strings[log6_SL];
  login_s6:=Smart_Replacing('"y"', login_s6, IntToStr(SpinEdit4.Value));
  login.Delete(log6_SL);
  login.Insert(log6_SL, login_s6);
end;

// загрузка из файла hangar.xc
procedure TXCTuner_Form1.hangar_loading;
begin
  hangar.Clear;
  hangar.LoadFromFile(dir_xvm+hangar_name);
  // загрузка данных из файла hangar.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=hangar.Text;

  temp_name:=hangar_name;

  // / 1
  Search:='"hideTutorial"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s1:=hangar.Strings[SearchLine];
  hgar1_SL:=SearchLine;
  hangar_s1:=new_change_str(Search, hangar_s1);
  if hangar_s1='true' then RadioButton32.Checked:=True else
  if hangar_s1='false' then RadioButton31.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s1, hgar1_SL));
    Application.Terminate;
  end;
  end;

  // / 2
  Search:='"xwnInCompany"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s2:=hangar.Strings[SearchLine];
  hgar2_SL:=SearchLine;
  hangar_s2:=new_change_str(Search, hangar_s2);
  if hangar_s2='true' then RadioButton33.Checked:=True else
  if hangar_s2='false' then RadioButton34.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s2, hgar2_SL));
    Application.Terminate;
  end;
  end;

  // / 3
  Search:='"masteryMarkInTankCarousel"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s3:=hangar.Strings[SearchLine];
  hgar3_SL:=SearchLine;
  hangar_s3:=new_change_str(Search, hangar_s3);
  if hangar_s3='true' then RadioButton35.Checked:=True else
  if hangar_s3='false' then RadioButton36.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s3, hgar3_SL));
    Application.Terminate;
  end;
  end;

  // / 4
  Search:='"masteryMarkInTechTree"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s4:=hangar.Strings[SearchLine];
  hgar4_SL:=SearchLine;
  hangar_s4:=new_change_str(Search, hangar_s4);
  if hangar_s4='true' then RadioButton37.Checked:=True else
  if hangar_s4='false' then RadioButton38.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s4, hgar4_SL));
    Application.Terminate;
  end;
  end;

  // / 5
  Search:='"hidePricesInTechTree"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s5:=hangar.Strings[SearchLine];
  hgar5_SL:=SearchLine;
  hangar_s5:=new_change_str(Search, hangar_s5);
  if hangar_s5='true' then RadioButton40.Checked:=True else
  if hangar_s5='false' then RadioButton39.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s5, hgar5_SL));
    Application.Terminate;
  end;
  end;

  // / 6
  Search:='"widgetsEnabled"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s6:=hangar.Strings[SearchLine];
  hgar6_SL:=SearchLine;
  hangar_s6:=new_change_str(Search, hangar_s6);
  if hangar_s6='true' then RadioButton41.Checked:=True else
  if hangar_s6='false' then RadioButton42.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s6, hgar6_SL));
    Application.Terminate;
  end;
  end;

  // / 7
  Search:='"pingServers"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  Search:='"enabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s7:=hangar.Strings[SearchLine];
  hgar7_SL:=SearchLine;
  hangar_s7:=new_change_str(Search, hangar_s7);
  if hangar_s7='true' then RadioButton43.Checked:=True else
  if hangar_s7='false' then RadioButton44.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s7, hgar7_SL));
    Application.Terminate;
  end;
  end;
  end;

  // интервал обновления пинга
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"updateInterval"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s8:=hangar.Strings[SearchLine];
  hgar8_SL:=SearchLine;
  hangar_s8:=new_change_str(Search, hangar_s8);
  TrackBar1.Position:=StrToInt(hangar_s8);
  SpinEdit10.Value:=StrToInt(hangar_s8);
  end;

  // положение поля по x
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"x"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s9:=hangar.Strings[SearchLine];
  hgar9_SL:=SearchLine;
  hangar_s9:=new_change_str(Search, hangar_s9);
  SpinEdit5.Value:=StrToInt(hangar_s9);
  end;

  // положение поля по y
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"y"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s10:=hangar.Strings[SearchLine];
  hgar10_SL:=SearchLine;
  hangar_s10:=new_change_str(Search, hangar_s10);
  SpinEdit6.Value:=StrToInt(hangar_s10);
  end;

  // прозрачность поля
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"alpha"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s11:=hangar.Strings[SearchLine];
  hgar11_SL:=SearchLine;
  hangar_s11:=new_change_str(Search, hangar_s11);
  SpinEdit7.Value:=StrToInt(hangar_s11);
  end;

  // максимальное количество строк одной колонки
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"maxRows"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s12:=hangar.Strings[SearchLine];
  hgar12_SL:=SearchLine;
  hangar_s12:=new_change_str(Search, hangar_s12);
  TrackBar2.Position:=StrToInt(hangar_s12);
  SpinEdit8.Value:=StrToInt(hangar_s12);
  end;

  // пространство между колонками
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"columnGap"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s13:=hangar.Strings[SearchLine];
  hgar13_SL:=SearchLine;
  hangar_s13:=new_change_str(Search, hangar_s13);
  TrackBar3.Position:=StrToInt(hangar_s13);
  SpinEdit9.Value:=StrToInt(hangar_s13);
  end;

  // Название шрифта // 14
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"name"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s14:=hangar.Strings[SearchLine];
  hgar14_SL:=SearchLine;
  hangar_s14:=new_change_str(Search, hangar_s14);
  Edit1.Text:=DelStartEnd(hangar_s14);
  end;

  // Размер шрифта // 15
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"size"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s15:=hangar.Strings[SearchLine];
  hgar15_SL:=SearchLine;
  hangar_s15:=new_change_str(Search, hangar_s15);
  SpinEdit11.Value:=StrToInt(hangar_s15);
  end;

  // Стиль жирный шрифта // 16
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"bold"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s16:=hangar.Strings[SearchLine];
  hgar16_SL:=SearchLine;
  hangar_s16:=new_change_str(Search, hangar_s16);
  if hangar_s16='true' then CheckBox1.Checked:=True else
  if hangar_s16='false' then CheckBox1.Checked:=False else
  begin
    ShowMessage(error_message(hangar_name, hangar_s16, hgar16_SL));
    Application.Terminate;
  end;
  end;

  // Стиль курсив шрифта // 17
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"italic"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s17:=hangar.Strings[SearchLine];
  hgar17_SL:=SearchLine;
  hangar_s17:=new_change_str(Search, hangar_s17);
  if hangar_s17='true' then CheckBox2.Checked:=True else
  if hangar_s17='false' then CheckBox2.Checked:=False else
  begin
    ShowMessage(error_message(hangar_name, hangar_s17, hgar17_SL));
    Application.Terminate;
  end;
  end;

  // Разные цвета в зависимости от времени отклика сервера // 18
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  Search:='"great"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s18:=hangar.Strings[SearchLine];
  hgar18_SL:=SearchLine;
  hangar_s18:=DelStartEnd(new_change_str(Search, hangar_s18));
  mbColorPreview1.Color:=HexToTColor(hangar_s18);
  hangar_s18:='#' + hangar_s18;
  Edit3.Text:=hangar_s18;
  end;
  end;

  // Разные цвета в зависимости от времени отклика сервера // 19
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"good"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s19:=hangar.Strings[SearchLine];
  hgar19_SL:=SearchLine;
  hangar_s19:=DelStartEnd(new_change_str(Search, hangar_s19));
  mbColorPreview2.Color:=HexToTColor(hangar_s19);
  hangar_s19:='#' + hangar_s19;
  Edit4.Text:=hangar_s19;
  end;

  // Разные цвета в зависимости от времени отклика сервера // 20
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"poor"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s20:=hangar.Strings[SearchLine];
  hgar20_SL:=SearchLine;
  hangar_s20:=DelStartEnd(new_change_str(Search, hangar_s20));
  mbColorPreview3.Color:=HexToTColor(hangar_s20);
  hangar_s20:='#' + hangar_s20;
  Edit5.Text:=hangar_s20;
  end;

  // Разные цвета в зависимости от времени отклика сервера // 21
  Search:='"fontStyle"';
  SearchLine_my();
  Search:='"color"';
  SearchLine_my_2();
  Search:='"bad"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s21:=hangar.Strings[SearchLine];
  hgar21_SL:=SearchLine;
  hangar_s21:=DelStartEnd(new_change_str(Search, hangar_s21));
  mbColorPreview4.Color:=HexToTColor(hangar_s21);
  hangar_s21:='#' + hangar_s21;
  Edit6.Text:=hangar_s21;
  end;

  // Пороговые значения, определеяющие качество отклика // 22
  Search:='"threshold"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  Search:='"great"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s22:=hangar.Strings[SearchLine];
  hgar22_SL:=SearchLine;
  hangar_s22:=new_change_str(Search, hangar_s22);
  SpinEdit17.Value:=StrToInt(hangar_s22);
  end;
  end;

  // Пороговые значения, определеяющие качество отклика // 23
  Search:='"threshold"';
  SearchLine_my();
  Search:='"good"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s23:=hangar.Strings[SearchLine];
  hgar23_SL:=SearchLine;
  hangar_s23:=new_change_str(Search, hangar_s23);
  SpinEdit18.Value:=StrToInt(hangar_s23);
  end;

  // Пороговые значения, определеяющие качество отклика // 24
  Search:='"threshold"';
  SearchLine_my();
  Search:='"poor"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s24:=hangar.Strings[SearchLine];
  hgar24_SL:=SearchLine;
  hangar_s24:=new_change_str(Search, hangar_s24);
  SpinEdit19.Value:=StrToInt(hangar_s24);
  end;

  // Параметры тени // 25
  Search:='"pingServers"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  Search:='"shadow"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  Search:='"enabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s25:=hangar.Strings[SearchLine];
  hgar25_SL:=SearchLine;
  hangar_s25:=new_change_str(Search, hangar_s25);
  if hangar_s25='true' then RadioButton45.Checked:=True else
  if hangar_s25='false' then RadioButton46.Checked:=True else
  begin
    ShowMessage(error_message(hangar_name, hangar_s25, hgar25_SL));
    Application.Terminate;
  end;
  end;
  end;
  end;

  // Параметры тени // 26
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"color"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s26:=hangar.Strings[SearchLine];
  hgar26_SL:=SearchLine;
  hangar_s26:=DelStartEnd(new_change_str(Search, hangar_s26));
  mbColorPreview5.Color:=HexToTColor(hangar_s26);
  hangar_s26:='#' + hangar_s26;
  Edit2.Text:=hangar_s26;
  end;

  // Параметры тени // 27
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"distance"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s27:=hangar.Strings[SearchLine];
  hgar27_SL:=SearchLine;
  hangar_s27:=new_change_str(Search, hangar_s27);
  SpinEdit12.Value:=StrToInt(hangar_s27);
  end;

  // Параметры тени // 28
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"angle"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s28:=hangar.Strings[SearchLine];
  hgar28_SL:=SearchLine;
  hangar_s28:=new_change_str(Search, hangar_s28);
  SpinEdit13.Value:=StrToInt(hangar_s28);
  end;

  // Параметры тени // 29
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"alpha"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s29:=hangar.Strings[SearchLine];
  hgar29_SL:=SearchLine;
  hangar_s29:=new_change_str(Search, hangar_s29);
  SpinEdit14.Value:=StrToInt(hangar_s29);
  end;

  // Параметры тени // 30
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"blur"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s30:=hangar.Strings[SearchLine];
  hgar30_SL:=SearchLine;
  hangar_s30:=new_change_str(Search, hangar_s30);
  SpinEdit15.Value:=StrToInt(hangar_s30);
  end;

  // Параметры тени // 31
  Search:='"pingServers"';
  SearchLine_my();
  Search:='"shadow"';
  SearchLine_my_2();
  Search:='"strength"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hangar_s31:=hangar.Strings[SearchLine];
  hgar31_SL:=SearchLine;
  hangar_s31:=new_change_str(Search, hangar_s31);
  SpinEdit16.Value:=StrToInt(hangar_s31);
  end;
end;

// сохранение параметров в файл hangar.xc
procedure TXCTuner_Form1.hangar_save;
begin

  if (RadioButton32.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton33.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton35.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton37.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton40.Checked=True) then chek5:='true' else chek5:='false';
  if (RadioButton41.Checked=True) then chek6:='true' else chek6:='false';
  if (RadioButton43.Checked=True) then chek7:='true' else chek7:='false';
  if (RadioButton45.Checked=True) then chek8:='true' else chek8:='false';
  if (CheckBox1.Checked=True)     then chek9:='true' else chek9:='false';
  if (CheckBox2.Checked=True)     then chek10:='true' else chek10:='false';

  // 1
  hangar_s1:=hangar.Strings[hgar1_SL];
  hangar_s1:=Smart_Replacing('"hideTutorial"', hangar_s1, chek1);
  hangar.Delete(hgar1_SL);
  hangar.Insert(hgar1_SL, hangar_s1);

  // 2
  hangar_s2:=hangar.Strings[hgar2_SL];
  hangar_s2:=Smart_Replacing('"xwnInCompany"', hangar_s2, chek2);
  hangar.Delete(hgar2_SL);
  hangar.Insert(hgar2_SL, hangar_s2);

  // 3
  hangar_s3:=hangar.Strings[hgar3_SL];
  hangar_s3:=Smart_Replacing('"masteryMarkInTankCarousel"', hangar_s3, chek3);
  hangar.Delete(hgar3_SL);
  hangar.Insert(hgar3_SL, hangar_s3);

  // 4
  hangar_s4:=hangar.Strings[hgar4_SL];
  hangar_s4:=Smart_Replacing('"masteryMarkInTechTree"', hangar_s4, chek4);
  hangar.Delete(hgar4_SL);
  hangar.Insert(hgar4_SL, hangar_s4);

  // 5
  hangar_s5:=hangar.Strings[hgar5_SL];
  hangar_s5:=Smart_Replacing('"hidePricesInTechTree"', hangar_s5, chek5);
  hangar.Delete(hgar5_SL);
  hangar.Insert(hgar5_SL, hangar_s5);

  // 6
  hangar_s6:=hangar.Strings[hgar6_SL];
  hangar_s6:=Smart_Replacing('"widgetsEnabled"', hangar_s6, chek6);
  hangar.Delete(hgar6_SL);
  hangar.Insert(hgar6_SL, hangar_s6);

  // 7
  hangar_s7:=hangar.Strings[hgar7_SL];
  hangar_s7:=Smart_Replacing('"enabled"', hangar_s7, chek7);
  hangar.Delete(hgar7_SL);
  hangar.Insert(hgar7_SL, hangar_s7);

  // 8
  hangar_s8:=hangar.Strings[hgar8_SL];
  hangar_s8:=Smart_Replacing('"updateInterval"', hangar_s8, IntToStr(SpinEdit10.Value));
  hangar.Delete(hgar8_SL);
  hangar.Insert(hgar8_SL, hangar_s8);

  // 9
  hangar_s9:=hangar.Strings[hgar9_SL];
  hangar_s9:=Smart_Replacing('"x"', hangar_s9, IntToStr(SpinEdit5.Value));
  hangar.Delete(hgar9_SL);
  hangar.Insert(hgar9_SL, hangar_s9);

  // 10
  hangar_s10:=hangar.Strings[hgar10_SL];
  hangar_s10:=Smart_Replacing('"y"', hangar_s10, IntToStr(SpinEdit6.Value));
  hangar.Delete(hgar10_SL);
  hangar.Insert(hgar10_SL, hangar_s10);

  // 11
  hangar_s11:=hangar.Strings[hgar11_SL];
  hangar_s11:=Smart_Replacing('"alpha"', hangar_s11, IntToStr(SpinEdit7.Value));
  hangar.Delete(hgar11_SL);
  hangar.Insert(hgar11_SL, hangar_s11);

  // 12
  hangar_s12:=hangar.Strings[hgar12_SL];
  hangar_s12:=Smart_Replacing('"maxRows"', hangar_s12, IntToStr(SpinEdit8.Value));
  hangar.Delete(hgar12_SL);
  hangar.Insert(hgar12_SL, hangar_s12);

  // 13
  hangar_s13:=hangar.Strings[hgar13_SL];
  hangar_s13:=Smart_Replacing('"columnGap"', hangar_s13, IntToStr(SpinEdit9.Value));
  hangar.Delete(hgar13_SL);
  hangar.Insert(hgar13_SL, hangar_s13);

  // поле "название шрифта" // 14
  hangar_s14:=hangar.Strings[hgar14_SL];
  hangar_s14:=Smart_Replacing('"name"', hangar_s14, RecStartEnd(Edit1.Text));
  hangar.Delete(hgar14_SL);
  hangar.Insert(hgar14_SL, hangar_s14);

  // поле "размер шрифта" // 15
  hangar_s15:=hangar.Strings[hgar15_SL];
  hangar_s15:=Smart_Replacing('"size"', hangar_s15, IntToStr(SpinEdit11.Value));
  hangar.Delete(hgar15_SL);
  hangar.Insert(hgar15_SL, hangar_s15);

  // 16
  hangar_s16:=hangar.Strings[hgar16_SL];
  hangar_s16:=Smart_Replacing('"bold"', hangar_s16, chek9);
  hangar.Delete(hgar16_SL);
  hangar.Insert(hgar16_SL, hangar_s16);

  // 17
  hangar_s17:=hangar.Strings[hgar17_SL];
  hangar_s17:=Smart_Replacing('"italic"', hangar_s17, chek10);
  hangar.Delete(hgar17_SL);
  hangar.Insert(hgar17_SL, hangar_s17);

  // поле "цвет пинга" great // 18
  hangar_s18:=hangar.Strings[hgar18_SL];
  hangar_s18:=Smart_Replacing('"great"', hangar_s18, RecStartEnd(Edit3.Text));
  hangar.Delete(hgar18_SL);
  hangar.Insert(hgar18_SL, hangar_s18);

  // поле "цвет пинга" good // 19
  hangar_s19:=hangar.Strings[hgar19_SL];
  hangar_s19:=Smart_Replacing('"good"', hangar_s19, RecStartEnd(Edit4.Text));
  hangar.Delete(hgar19_SL);
  hangar.Insert(hgar19_SL, hangar_s19);

  // поле "цвет пинга" poor // 20
  hangar_s20:=hangar.Strings[hgar20_SL];
  hangar_s20:=Smart_Replacing('"poor"', hangar_s20, RecStartEnd(Edit5.Text));
  hangar.Delete(hgar20_SL);
  hangar.Insert(hgar20_SL, hangar_s20);

  // поле "цвет пинга" bad // 21
  hangar_s21:=hangar.Strings[hgar21_SL];
  hangar_s21:=Smart_Replacing('"bad"', hangar_s21, RecStartEnd(Edit6.Text));
  hangar.Delete(hgar21_SL);
  hangar.Insert(hgar21_SL, hangar_s21);

  // Пороговые значения, определеяющие качество отклика / great // 22
  hangar_s22:=hangar.Strings[hgar22_SL];
  hangar_s22:=Smart_Replacing('"great"', hangar_s22, IntToStr(SpinEdit17.Value));
  hangar.Delete(hgar22_SL);
  hangar.Insert(hgar22_SL, hangar_s22);

  // Пороговые значения, определеяющие качество отклика / good // 23
  hangar_s23:=hangar.Strings[hgar23_SL];
  hangar_s23:=Smart_Replacing('"good"', hangar_s23, IntToStr(SpinEdit18.Value));
  hangar.Delete(hgar23_SL);
  hangar.Insert(hgar23_SL, hangar_s23);

  // Пороговые значения, определеяющие качество отклика / poor // 24
  hangar_s24:=hangar.Strings[hgar24_SL];
  hangar_s24:=Smart_Replacing('"poor"', hangar_s24, IntToStr(SpinEdit19.Value));
  hangar.Delete(hgar24_SL);
  hangar.Insert(hgar24_SL, hangar_s24);

  // 25
  hangar_s25:=hangar.Strings[hgar25_SL];
  hangar_s25:=Smart_Replacing('"enabled"', hangar_s25, chek8);
  hangar.Delete(hgar25_SL);
  hangar.Insert(hgar25_SL, hangar_s25);

  // поле "цвет тени" пинга // 26
  hangar_s26:=hangar.Strings[hgar26_SL];
  hangar_s26:=Smart_Replacing('"color"', hangar_s26, RecStartEnd(Edit2.Text));
  hangar.Delete(hgar26_SL);
  hangar.Insert(hgar26_SL, hangar_s26);

  // поле "дистанция" тени // 27
  hangar_s27:=hangar.Strings[hgar27_SL];
  hangar_s27:=Smart_Replacing('"distance"', hangar_s27, IntToStr(SpinEdit12.Value));
  hangar.Delete(hgar27_SL);
  hangar.Insert(hgar27_SL, hangar_s27);

  // поле "угол" тени // 28
  hangar_s28:=hangar.Strings[hgar28_SL];
  hangar_s28:=Smart_Replacing('"angle"', hangar_s28, IntToStr(SpinEdit13.Value));
  hangar.Delete(hgar28_SL);
  hangar.Insert(hgar28_SL, hangar_s28);

  // поле "прозрачность" тени // 29
  hangar_s29:=hangar.Strings[hgar29_SL];
  hangar_s29:=Smart_Replacing('"alpha"', hangar_s29, IntToStr(SpinEdit14.Value));
  hangar.Delete(hgar29_SL);
  hangar.Insert(hgar29_SL, hangar_s29);

  // поле "размытие/размер" тени // 30
  hangar_s30:=hangar.Strings[hgar30_SL];
  hangar_s30:=Smart_Replacing('"blur"', hangar_s30, IntToStr(SpinEdit15.Value));
  hangar.Delete(hgar30_SL);
  hangar.Insert(hgar30_SL, hangar_s30);

  // поле "интенсивность" тени // 31
  hangar_s31:=hangar.Strings[hgar31_SL];
  hangar_s31:=Smart_Replacing('"strength"', hangar_s31, IntToStr(SpinEdit16.Value));
  hangar.Delete(hgar31_SL);
  hangar.Insert(hgar31_SL, hangar_s31);

end;

// Загрузка из файла
procedure TXCTuner_Form1.fragCorrelation_loading;
begin
  fragcorr.LoadFromFile(dir_xvm+frag_name);
  // загрузка данных из файла battle.xc в интерфейс
  fr0_SL:=Search_Line(0, '"fragCorrelation"', fragcorr);
  if fr0_SL=-1 then error_line('"fragCorrelation"', frag_name) else
  begin
  // Панель счета в бою
    Search:='"hideTeamTextFields"';
    fr1_SL:=Search_Line(fr0_SL, Search, fragcorr);
    if fr1_SL=-1 then error_line(Search, frag_name) else
    begin
      fragcorr_s1:=fragcorr.Strings[fr1_SL];
      fragcorr_s1:=new_change_str(Search, fragcorr_s1);
      if fragcorr_s1='true' then RadioButton12.Checked:=True else
      if fragcorr_s1='false' then RadioButton11.Checked:=True else
      begin
        ShowMessage(error_message(frag_name, fragcorr_s1, fr1_SL));
        Application.Terminate;
      end;
    end;
  end;
end;

// Сохранение в файл
procedure TXCTuner_Form1.fragCorrelation_save;
begin
  fragcorr.LoadFromFile(dir_xvm+frag_name);
  if (RadioButton12.Checked=True) then chek1:='true' else chek1:='false';
  fragcorr_s1:=fragcorr.Strings[fr1_SL];
  fragcorr_s1:=Smart_Replacing('"hideTeamTextFields"', fragcorr_s1, chek1);
  fragcorr.Delete(fr1_SL);
  fragcorr.Insert(fr1_SL, fragcorr_s1);
end;

// Процедура загрузки данных из файла userInfo.xc в программу
procedure TXCTuner_Form1.userinfo_loading;
begin
  userInfo.Clear;
  userInfo.LoadFromFile(dir_xvm+userInfo_name);
  temp_list.Clear;
  temp_list.Text:=userInfo.Text;

  temp_name:=userInfo_name;

  // Номер начальной страницы // 1
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"startPage"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s1:=userInfo.Strings[SearchLine];
  UI1_SL:=SearchLine;
  UserInfo_s1:=new_change_str(Search, UserInfo_s1);
  ComboBox2.ItemIndex:=StrToInt(UserInfo_s1) - 1;
  end;

  // Номер колонки для сортировки // 2
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"sortColumn"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s2:=userInfo.Strings[SearchLine];
  UI2_SL:=SearchLine;
  UserInfo_s2:=new_change_str(Search, UserInfo_s2);
  ComboBox3.ItemIndex:=StrToInt(UserInfo_s2) - 1;
  end;

  // Показывать расширенные данные в профиле // 3
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"showExtraDataInProfile"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s3:=userInfo.Strings[SearchLine];
  UI3_SL:=SearchLine;
  UserInfo_s3:=new_change_str(Search, UserInfo_s3);
  if UserInfo_s3='true' then RadioButton47.Checked:=True else
  if UserInfo_s3='false' then RadioButton48.Checked:=True else
  begin
    ShowMessage(error_message(userInfo_name, UserInfo_s3, UI3_SL));
    Application.Terminate;
  end;
  end;

  // Включить фильтр отображения танков в ангаре по умолчанию // 4
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"inHangarFilterEnabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s4:=userInfo.Strings[SearchLine];
  UI4_SL:=SearchLine;
  UserInfo_s4:=new_change_str(Search, UserInfo_s4);
  if UserInfo_s4='true' then RadioButton49.Checked:=True else
  if UserInfo_s4='false' then RadioButton50.Checked:=True else
  begin
    ShowMessage(error_message(userInfo_name, UserInfo_s4, UI4_SL));
    Application.Terminate;
  end;
  end;

  // Показывать фильтры отображения танков // 5
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"showFilters"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s5:=userInfo.Strings[SearchLine];
  UI5_SL:=SearchLine;
  UserInfo_s5:=new_change_str(Search, UserInfo_s5);
  if UserInfo_s5='true' then RadioButton51.Checked:=True else
  if UserInfo_s5='false' then RadioButton52.Checked:=True else
  begin
    ShowMessage(error_message(userInfo_name, UserInfo_s5, UI5_SL));
    Application.Terminate;
  end;
  end;

  // Выбрать поле ввода фильтра по умолчанию // 6
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"filterFocused"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s6:=userInfo.Strings[SearchLine];
  UI6_SL:=SearchLine;
  UserInfo_s6:=new_change_str(Search, UserInfo_s6);
  if UserInfo_s6='true' then RadioButton53.Checked:=True else
  if UserInfo_s6='false' then RadioButton54.Checked:=True else
  begin
    ShowMessage(error_message(userInfo_name, UserInfo_s6, UI6_SL));
    Application.Terminate;
  end;
  end;

  // Значение фильтра по умолчанию // 7
  Search:='"userInfo"';
  SearchLine_my();
  Search:='"defaultFilterValue"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  UserInfo_s7:=userInfo.Strings[SearchLine];
  UI7_SL:=SearchLine;
  UserInfo_s7:=new_change_str(Search, UserInfo_s7);
  Edit7.Text:=DelStartEnd(UserInfo_s7);
  end;

end;

// Сохранение параметров в файл UserInfo.xc
procedure TXCTuner_Form1.userinfo_save;
begin

  if (RadioButton47.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton49.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton51.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton53.Checked=True) then chek4:='true' else chek4:='false';

  // Номер начальной страницы // 1
  UserInfo_s1:=userInfo.Strings[UI1_SL];
  UserInfo_s1:=Smart_Replacing('"startPage"', UserInfo_s1, IntToStr(ComboBox2.ItemIndex+1));
  userInfo.Delete(UI1_SL);
  userInfo.Insert(UI1_SL, UserInfo_s1);

  // Номер колонки для сортировки // 2
  UserInfo_s2:=userInfo.Strings[UI2_SL];
  UserInfo_s2:=Smart_Replacing('"sortColumn"', UserInfo_s2, IntToStr(ComboBox3.ItemIndex+1));
  userInfo.Delete(UI2_SL);
  userInfo.Insert(UI2_SL, UserInfo_s2);

  // Показывать расширенные данные в профиле // 3
  UserInfo_s3:=userInfo.Strings[UI3_SL];
  UserInfo_s3:=Smart_Replacing('"showExtraDataInProfile"', UserInfo_s3, chek1);
  userInfo.Delete(UI3_SL);
  userInfo.Insert(UI3_SL, UserInfo_s3);

  // Включить фильтр отображения танков в ангаре по умолчанию // 4
  UserInfo_s4:=userInfo.Strings[UI4_SL];
  UserInfo_s4:=Smart_Replacing('"inHangarFilterEnabled"', UserInfo_s4, chek2);
  userInfo.Delete(UI4_SL);
  userInfo.Insert(UI4_SL, UserInfo_s4);

  // Показывать фильтры отображения танков // 5
  UserInfo_s5:=userInfo.Strings[UI5_SL];
  UserInfo_s5:=Smart_Replacing('"showFilters"', UserInfo_s5, chek3);
  userInfo.Delete(UI5_SL);
  userInfo.Insert(UI5_SL, UserInfo_s5);

  // Выбрать поле ввода фильтра по умолчанию // 6
  UserInfo_s6:=userInfo.Strings[UI6_SL];
  UserInfo_s6:=Smart_Replacing('"filterFocused"', UserInfo_s6, chek4);
  userInfo.Delete(UI6_SL);
  userInfo.Insert(UI6_SL, UserInfo_s6);

  // Значение фильтра по умолчанию // 7
  UserInfo_s7:=userInfo.Strings[UI7_SL];
  UserInfo_s7:=Smart_Replacing('"defaultFilterValue"', UserInfo_s7, RecStartEnd(Edit7.Text));
  UserInfo.Delete(UI7_SL);
  UserInfo.Insert(UI7_SL, UserInfo_s7);

end;

// сохранение параметров в файл battle.xc
procedure TXCTuner_Form1.battle_save;
begin
  // процедура подготовки изменений для сохранения в файл battle.xc
  if (RadioButton1.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton3.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton6.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton7.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton9.Checked=True) then chek5:='true' else chek5:='false';

  // 1
  b_s1:=battle.Strings[bs1_SL];
  b_s1:=Smart_Replacing('"mirroredVehicleIcons"', b_s1, chek1);
  battle.Delete(bs1_SL);
  battle.Insert(bs1_SL, b_s1);

  // 2
  b_s2:=battle.Strings[bs2_SL];
  b_s2:=Smart_Replacing('"showPostmortemTips"', b_s2, chek2);
  battle.Delete(bs2_SL);
  battle.Insert(bs2_SL, b_s2);

  // 3
  b_s3:=battle.Strings[bs3_SL];
  b_s3:=Smart_Replacing('"removePanelsModeSwitcher"', b_s3, chek3);
  battle.Delete(bs3_SL);
  battle.Insert(bs3_SL, b_s3);

  // 4
  b_s4:=battle.Strings[bs4_SL];
  b_s4:=Smart_Replacing('"highlightVehicleIcon"', b_s4, chek4);
  battle.Delete(bs4_SL);
  battle.Insert(bs4_SL, b_s4);

  // 5
  b_s5:=battle.Strings[bs5_SL];
  b_s5:=Smart_Replacing('"useStandardMarkers"', b_s5, chek5);
  battle.Delete(bs5_SL);
  battle.Insert(bs5_SL, b_s5);

  // 5
  b_s6:=battle.Strings[bs6_SL];
  b_s6:=Smart_Replacing('"clockFormat"', b_s6, RecStartEnd(Edit24.Text));
  battle.Delete(bs6_SL);
  battle.Insert(bs6_SL, b_s6);

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
    xvm_s1:=xvm.Strings[SearchLine];
    xvm_s1:=DelStartEnd(new_change_str(Search, xvm_s1));
    Label2.Caption:=xvm_s1;

    Search:='"editorVersion"';
    SearchLine_my();
    xvm2_SL:=SearchLine;
    xvm_s2:=xvm.Strings[SearchLine];
    xvm_s2:=DelStartEnd(new_change_str(Search, xvm_s2));
    Label4.Caption:=xvm_s2;

    Search:='"language"';
    SearchLine_my();
    xvm3_SL:=SearchLine;
    xvm_s3:=xvm.Strings[SearchLine];
    xvm_s3:=DelStartEnd(new_change_str(Search, xvm_s3));
    Label6.Caption:=xvm_s3;

    Search:='"region"';
    SearchLine_my();
    xvm4_SL:=SearchLine;
    xvm_s4:=xvm.Strings[SearchLine];
    xvm_s4:=DelStartEnd(new_change_str(Search, xvm_s4));
    Label8.Caption:=xvm_s4;

    Search:='"author"';
    SearchLine_my();
    xvm5_SL:=SearchLine;
    xvm_s5:=xvm.Strings[SearchLine];
    xvm_s5:=DelStartEnd(new_change_str(Search, xvm_s5));
    Label10.Caption:=xvm_s5;

    Search:='"description"';
    SearchLine_my();
    xvm6_SL:=SearchLine;
    xvm_s6:=xvm.Strings[SearchLine];
    xvm_s6:=DelStartEnd(new_change_str(Search, xvm_s6));
    Label12.Caption:=xvm_s6;

    Search:='"date"';
    SearchLine_my();
    xvm7_SL:=SearchLine;
    xvm_s7:=xvm.Strings[SearchLine];
    xvm_s7:=DelStartEnd(new_change_str(Search, xvm_s7));
    Label14.Caption:=xvm_s7;

    Search:='"gameVersion"';
    SearchLine_my();
    xvm8_SL:=SearchLine;
    xvm_s8:=xvm.Strings[SearchLine];
    xvm_s8:=DelStartEnd(new_change_str(Search, xvm_s8));
    Label16.Caption:=xvm_s8;

    Search:='"url"';
    SearchLine_my();
    xvm9_SL:=SearchLine;
    xvm_s9:=xvm.Strings[SearchLine];
    xvm_s9:=DelStartEnd(new_change_str(Search, xvm_s9));
    Label63.Caption:=xvm_s9;
    Label63.Hint:='Перейти по адресу - '+xvm_s9;

    Search:='"modMinVersion"';
    SearchLine_my();
    xvm10_SL:=SearchLine;
    xvm_s10:=xvm.Strings[SearchLine];
    xvm_s10:=DelStartEnd(new_change_str(Search, xvm_s10));
    Label64.Caption:=xvm_s10;

end;

// загрузка из файла rating.xc
procedure TXCTuner_Form1.rating_loading;
begin
  rating.Clear;
  rating.LoadFromFile(dir_xvm+rating_name);
  // загрузка данных из файла rating.xc в интерфейс
  temp_list.Clear;
  temp_list.Text:=rating.Text;

  temp_name:=rating_name;

  // Глобальный переключатель / 1
  Search:='"showPlayersStatistics"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  rating_s1:=rating.Strings[SearchLine];
  rat1_SL:=SearchLine;
  rating_s1:=new_change_str(Search, rating_s1);
  if rating_s1='true' then RadioButton13.Checked:=True else
  if rating_s1='false' then RadioButton14.Checked:=True else
  begin
    ShowMessage(error_message(rating_name, rating_s1, rat1_SL));
    Application.Terminate;
  end;
  end;

  // Статистика в достижениях пользователя / 2
  Search:='"enableUserInfoStatistics"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  rating_s2:=rating.Strings[SearchLine];
  rat2_SL:=SearchLine;
  rating_s2:=new_change_str(Search, rating_s2);
  if rating_s2='true' then RadioButton15.Checked:=True else
  if rating_s2='false' then RadioButton16.Checked:=True else
  begin
    ShowMessage(error_message(rating_name, rating_s2, rat2_SL));
    Application.Terminate;
  end;
  end;

  // Отображение статистики при наборе роты / 3
  Search:='"enableCompanyStatistics"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  rating_s3:=rating.Strings[SearchLine];
  rat3_SL:=SearchLine;
  rating_s3:=new_change_str(Search, rating_s3);
  if rating_s3='true' then RadioButton17.Checked:=True else
  if rating_s3='false' then RadioButton18.Checked:=True else
  begin
    ShowMessage(error_message(rating_name, rating_s3, rat3_SL));
    Application.Terminate;
  end;
  end;

  // Загрузка данных по противникам в "тумане войны"
  Search:='"loadEnemyStatsInFogOfWar"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  rating_s4:=rating.Strings[SearchLine];
  rat4_SL:=SearchLine;
  rating_s4:=new_change_str(Search, rating_s4);
  if rating_s4='true' then RadioButton19.Checked:=True else
  if rating_s4='false' then RadioButton20.Checked:=True else
  begin
    ShowMessage(error_message(rating_name, rating_s4, rat4_SL));
    Application.Terminate;
  end;
  end;

  // Сохранение статистики в файл "XVM.log"
  Search:='"enableStatisticsLog"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  rating_s5:=rating.Strings[SearchLine];
  rat5_SL:=SearchLine;
  rating_s5:=new_change_str(Search, rating_s5);
  if rating_s5='true' then RadioButton21.Checked:=True else
  if rating_s5='false' then RadioButton22.Checked:=True else
  begin
    ShowMessage(error_message(rating_name, rating_s5, rat5_SL));
    Application.Terminate;
  end;
  end;
end;

// сохранение параметров в файл rating.xc
procedure TXCTuner_Form1.rating_save;
begin
  // процедура подготовки изменений для сохранения в файл rating.xc

  if (RadioButton13.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton15.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton17.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton19.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton21.Checked=True) then chek5:='true' else chek5:='false';

  // Глобальный переключатель / 1
  rating_s1:=rating.Strings[rat1_SL];
  rating_s1:=Smart_Replacing('"showPlayersStatistics"', rating_s1, chek1);
  rating.Delete(rat1_SL);
  rating.Insert(rat1_SL, rating_s1);

  // Статистика в достижениях пользователя / 2
  rating_s2:=rating.Strings[rat2_SL];
  rating_s2:=Smart_Replacing('"enableUserInfoStatistics"', rating_s2, chek2);
  rating.Delete(rat2_SL);
  rating.Insert(rat2_SL, rating_s2);

  // Отображение статистики при наборе роты / 3
  rating_s3:=rating.Strings[rat3_SL];
  rating_s3:=Smart_Replacing('"enableCompanyStatistics"', rating_s3, chek3);
  rating.Delete(rat3_SL);
  rating.Insert(rat3_SL, rating_s3);

  // Загрузка данных по противникам в "тумане войны"
  rating_s4:=rating.Strings[rat4_SL];
  rating_s4:=Smart_Replacing('"loadEnemyStatsInFogOfWar"', rating_s4, chek4);
  rating.Delete(rat4_SL);
  rating.Insert(rat4_SL, rating_s4);

  // Сохранение статистики в файл "XVM.log"
  rating_s5:=rating.Strings[rat5_SL];
  rating_s5:=Smart_Replacing('"enableStatisticsLog"', rating_s5, chek5);
  rating.Delete(rat5_SL);
  rating.Insert(rat5_SL, rating_s5);

end;

// Загрузка из файла squad.xc в программу
procedure TXCTuner_Form1.squad_loading;
begin
  squad.Clear;
  squad.LoadFromFile(dir_xvm+squad_name);
  temp_list.Clear;
  temp_list.Text:=squad.Text;

  temp_name:=squad_name;

  // Отображение информации // 1
  Search:='"squad"';
  SearchLine_my();
  Search:='"enabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  squad_s1:=squad.Strings[SearchLine];
  SQ1_SL:=SearchLine;
  squad_s1:=new_change_str(Search, squad_s1);
  if squad_s1='true' then RadioButton59.Checked:=True else
  if squad_s1='false' then RadioButton60.Checked:=True else
  begin
    ShowMessage(error_message(squad_name, squad_s1, SQ1_SL));
    Application.Terminate;
  end;
  end;

  // Отображение клана // 2
  Search:='"squad"';
  SearchLine_my();
  Search:='"showClan"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  squad_s2:=squad.Strings[SearchLine];
  SQ2_SL:=SearchLine;
  squad_s2:=new_change_str(Search, squad_s2);
  if squad_s2='true' then RadioButton61.Checked:=True else
  if squad_s2='false' then RadioButton62.Checked:=True else
  begin
    ShowMessage(error_message(squad_name, squad_s2, SQ2_SL));
    Application.Terminate;
  end;
  end;

  // Формат поля информации о танке // 3
  Search:='"squad"';
  SearchLine_my();
  Search:='"formatInfoField"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  squad_s3:=squad.Strings[SearchLine];
  SQ3_SL:=SearchLine;
  squad_s3:=new_change_str(Search, squad_s3);
  Edit16.Text:=DelStartEnd(squad_s3);
  end;
end;

// Сохранение изменений в файл squad.xc
procedure TXCTuner_Form1.squad_save;
begin
  if (RadioButton59.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton61.Checked=True) then chek2:='true' else chek2:='false';

  // Отображение информации // 1
  squad_s1:=squad.Strings[SQ1_SL];
  squad_s1:=Smart_Replacing('"enabled"', squad_s1, chek1);
  squad.Delete(SQ1_SL);
  squad.Insert(SQ1_SL, squad_s1);

  // Отображение клана // 2
  squad_s2:=squad.Strings[SQ2_SL];
  squad_s2:=Smart_Replacing('"showClan"', squad_s2, chek2);
  squad.Delete(SQ2_SL);
  squad.Insert(SQ2_SL, squad_s2);

  // Формат поля информации о танке // 3
  squad_s3:=squad.Strings[SQ3_SL];
  squad_s3:=Smart_Replacing('"formatInfoField"', squad_s3, RecStartEnd(Edit16.Text));
  squad.Delete(SQ3_SL);
  squad.Insert(SQ3_SL, squad_s3);

end;

// Загрузка из файла iconset.xc в программу
procedure TXCTuner_Form1.iconset_loading;
begin
  iconset.Clear;
  iconset.LoadFromFile(dir_xvm+iconset_name);
  temp_list.Clear;
  temp_list.Text:=iconset.Text;

  temp_name:=iconset_name;

  // Набор иконок для экрана загрузки боя / свои // 1
  Search:='"battleLoadingAlly"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s1:=iconset.Strings[SearchLine];
  IS1_SL:=SearchLine;
  iconset_s1:=new_change_str(Search, iconset_s1);
  Edit8.Text:=DelStartEnd(iconset_s1);
  end;

  // Набор иконок для экрана загрузки боя / чужие // 2
  Search:='"battleLoadingEnemy"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s2:=iconset.Strings[SearchLine];
  IS2_SL:=SearchLine;
  iconset_s2:=new_change_str(Search, iconset_s2);
  Edit9.Text:=DelStartEnd(iconset_s2);
  end;

  // Набор иконок для формы статистики (по Tab) / свои // 3
  Search:='"statisticFormAlly"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s3:=iconset.Strings[SearchLine];
  IS3_SL:=SearchLine;
  iconset_s3:=new_change_str(Search, iconset_s3);
  Edit10.Text:=DelStartEnd(iconset_s3);
  end;

  // Набор иконок для формы статистики (по Tab) / чужие // 4
  Search:='"statisticFormEnemy"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s4:=iconset.Strings[SearchLine];
  IS4_SL:=SearchLine;
  iconset_s4:=new_change_str(Search, iconset_s4);
  Edit11.Text:=DelStartEnd(iconset_s4);
  end;

  // Набор иконок для "ушей" / свои // 5
  Search:='"playersPanelAlly"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s5:=iconset.Strings[SearchLine];
  IS5_SL:=SearchLine;
  iconset_s5:=new_change_str(Search, iconset_s5);
  Edit12.Text:=DelStartEnd(iconset_s5);
  end;

  // Набор иконок для "ушей" / чужие // 6
  Search:='"playersPanelEnemy"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s6:=iconset.Strings[SearchLine];
  IS6_SL:=SearchLine;
  iconset_s6:=new_change_str(Search, iconset_s6);
  Edit13.Text:=DelStartEnd(iconset_s6);
  end;

  // Набор иконок для маркеров над танками / свои // 7
  Search:='"vehicleMarkerAlly"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s7:=iconset.Strings[SearchLine];
  IS7_SL:=SearchLine;
  iconset_s7:=new_change_str(Search, iconset_s7);
  Edit14.Text:=DelStartEnd(iconset_s7);
  end;

  // Набор иконок для маркеров над танками / чужие // 8
  Search:='"vehicleMarkerEnemy"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  begin
  iconset_s8:=iconset.Strings[SearchLine];
  IS8_SL:=SearchLine;
  iconset_s8:=new_change_str(Search, iconset_s8);
  Edit15.Text:=DelStartEnd(iconset_s8);
  end;
end;

// Сохранение из программы в файл iconset.xc
procedure TXCTuner_Form1.iconset_save;
begin
  // Набор иконок для экрана загрузки боя / свои // 1
  iconset_s1:=iconset.Strings[IS1_SL];
  iconset_s1:=Smart_Replacing('"battleLoadingAlly"', iconset_s1, RecStartEnd(Edit8.Text));
  iconset.Delete(IS1_SL);
  iconset.Insert(IS1_SL, iconset_s1);

  // Набор иконок для экрана загрузки боя / чужие // 2
  iconset_s2:=iconset.Strings[IS2_SL];
  iconset_s2:=Smart_Replacing('"battleLoadingEnemy"', iconset_s2, RecStartEnd(Edit9.Text));
  iconset.Delete(IS2_SL);
  iconset.Insert(IS2_SL, iconset_s2);

  // Набор иконок для формы статистики (по Tab) / свои // 3
  iconset_s3:=iconset.Strings[IS3_SL];
  iconset_s3:=Smart_Replacing('"statisticFormAlly"', iconset_s3, RecStartEnd(Edit10.Text));
  iconset.Delete(IS3_SL);
  iconset.Insert(IS3_SL, iconset_s3);

  // Набор иконок для формы статистики (по Tab) / чужие // 4
  iconset_s4:=iconset.Strings[IS4_SL];
  iconset_s4:=Smart_Replacing('"statisticFormEnemy"', iconset_s4, RecStartEnd(Edit11.Text));
  iconset.Delete(IS4_SL);
  iconset.Insert(IS4_SL, iconset_s4);

  // Набор иконок для "ушей" / свои // 5
  iconset_s5:=iconset.Strings[IS5_SL];
  iconset_s5:=Smart_Replacing('"playersPanelAlly"', iconset_s5, RecStartEnd(Edit12.Text));
  iconset.Delete(IS5_SL);
  iconset.Insert(IS5_SL, iconset_s5);

  // Набор иконок для "ушей" / чужие // 6
  iconset_s6:=iconset.Strings[IS6_SL];
  iconset_s6:=Smart_Replacing('"playersPanelEnemy"', iconset_s6, RecStartEnd(Edit13.Text));
  iconset.Delete(IS6_SL);
  iconset.Insert(IS6_SL, iconset_s6);

  // Набор иконок для маркеров над танками / свои // 7
  iconset_s7:=iconset.Strings[IS7_SL];
  iconset_s7:=Smart_Replacing('"vehicleMarkerAlly"', iconset_s7, RecStartEnd(Edit14.Text));
  iconset.Delete(IS7_SL);
  iconset.Insert(IS7_SL, iconset_s7);

  // Набор иконок для маркеров над танками / чужие // 8
  iconset_s8:=iconset.Strings[IS8_SL];
  iconset_s8:=Smart_Replacing('"vehicleMarkerEnemy"', iconset_s8, RecStartEnd(Edit15.Text));
  iconset.Delete(IS8_SL);
  iconset.Insert(IS8_SL, iconset_s8);

end;

// Загрузка из файла hotkeys.xc в программу
procedure TXCTuner_Form1.hotkeys_loading;
begin
  hotkeys.Clear;
  hotkeys.LoadFromFile(dir_xvm+hotkeys_name);
  temp_list.Clear;
  temp_list.Text:=hotkeys.Text;

  temp_name:=hotkeys_name;

  // Отображение информации // 1
  Search:='"minimapZoom"';
  SearchLine_my();
  Search:='"enabled"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hotkeys_s1:=hotkeys.Strings[SearchLine];
  HK1_SL:=SearchLine;
  hotkeys_s1:=new_change_str(Search, hotkeys_s1);
  if hotkeys_s1='true' then RadioButton55.Checked:=True else
  if hotkeys_s1='false' then RadioButton56.Checked:=True else
  begin
    ShowMessage(error_message(hotkeys_name, hotkeys_s1, HK1_SL));
    Application.Terminate;
  end;
  end;

  // действие по разовому нажатию клавиши // 2
  Search:='"minimapZoom"';
  SearchLine_my();
  Search:='"onHold"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hotkeys_s2:=hotkeys.Strings[SearchLine];
  HK2_SL:=SearchLine;
  hotkeys_s2:=new_change_str(Search, hotkeys_s2);
  if hotkeys_s2='true' then RadioButton57.Checked:=True else
  if hotkeys_s2='false' then RadioButton58.Checked:=True else
  begin
    ShowMessage(error_message(hotkeys_name, hotkeys_s2, HK2_SL));
    Application.Terminate;
  end;
  end;

  // Код клавиши // 3
  Search:='"minimapZoom"';
  SearchLine_my();
  Search:='"keyCode"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  hotkeys_s3:=hotkeys.Strings[SearchLine];
  HK3_SL:=SearchLine;
  hotkeys_s3:=new_change_str(Search, hotkeys_s3);
  case StrToInt(hotkeys_s3) of
    8:   ComboBox4.ItemIndex:=0;
    9:   ComboBox4.ItemIndex:=1;
    17:  ComboBox4.ItemIndex:=2;
    163: ComboBox4.ItemIndex:=3;
    161: ComboBox4.ItemIndex:=4;
    27:  ComboBox4.ItemIndex:=5;
    45:  ComboBox4.ItemIndex:=6;
    46:  ComboBox4.ItemIndex:=7;
    33:  ComboBox4.ItemIndex:=8;
    34:  ComboBox4.ItemIndex:=9;
    65:  ComboBox4.ItemIndex:=10;
    67:  ComboBox4.ItemIndex:=11;
    86:  ComboBox4.ItemIndex:=12;
    88:  ComboBox4.ItemIndex:=13;
    112: ComboBox4.ItemIndex:=14;
    20:  ComboBox4.ItemIndex:=15
    else
    begin
      ComboBox4.ItemIndex:=2;
    end;
  end;
end;
end;

// Сохранение в файл hotkeys.xc
procedure TXCTuner_Form1.hotkeys_save;
var
  key_int: Integer;
  key_str: String;
begin
  if (RadioButton55.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton57.Checked=True) then chek2:='true' else chek2:='false';

  // Отображение информации // 1
  hotkeys_s1:=hotkeys.Strings[HK1_SL];
  hotkeys_s1:=Smart_Replacing('"enabled"', hotkeys_s1, chek1);
  hotkeys.Delete(HK1_SL);
  hotkeys.Insert(HK1_SL, hotkeys_s1);

  // действие по разовому нажатию клавиши // 2
  hotkeys_s2:=hotkeys.Strings[HK2_SL];
  hotkeys_s2:=Smart_Replacing('"onHold"', hotkeys_s2, chek2);
  hotkeys.Delete(HK2_SL);
  hotkeys.Insert(HK2_SL, hotkeys_s2);

  // Код клавиши // 3
  hotkeys_s3:=hotkeys.Strings[HK3_SL];
  key_int:=ComboBox4.ItemIndex;
  case key_int of
    0:  key_str:='8';
    1:  key_str:='9';
    2:  key_str:='17';
    3:  key_str:='163';
    4:  key_str:='161';
    5:  key_str:='27';
    6:  key_str:='45';
    7:  key_str:='46';
    8:  key_str:='33';
    9:  key_str:='34';
    10: key_str:='65';
    11: key_str:='67';
    12: key_str:='86';
    13: key_str:='88';
    14: key_str:='112';
    15: key_str:='20';
  end;
  hotkeys_s3:=Smart_Replacing('"keyCode"', hotkeys_s3, key_str);
  hotkeys.Delete(HK3_SL);
  hotkeys.Insert(HK3_SL, hotkeys_s3);
end;

// Загрузка из файла texts.xc в программу
procedure TXCTuner_Form1.texts_loading;
begin
  texts.Clear;
  texts.LoadFromFile(dir_xvm+texts_name);
  temp_list.Clear;
  temp_list.Text:=texts.Text;

  temp_name:=texts_name;

  // Текст для легких танков // 1
  Search:='"vtype"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  Search:='"LT"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  texts_s1:=texts.Strings[SearchLine];
  TXT1_SL:=SearchLine;
  texts_s1:=new_change_str(Search, texts_s1);
  Edit17.Text:=DelStartEnd(texts_s1);
  end;

  // Текст для средних танков // 2
  Search:='"vtype"';
  SearchLine_my();
  Search:='"MT"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  texts_s2:=texts.Strings[SearchLine];
  TXT2_SL:=SearchLine;
  texts_s2:=new_change_str(Search, texts_s2);
  Edit18.Text:=DelStartEnd(texts_s2);
  end;

  // Текст для тяжелых танков // 3
  Search:='"vtype"';
  SearchLine_my();
  Search:='"HT"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  texts_s3:=texts.Strings[SearchLine];
  TXT3_SL:=SearchLine;
  texts_s3:=new_change_str(Search, texts_s3);
  Edit19.Text:=DelStartEnd(texts_s3);
  end;

  // Текст для арты // 4
  Search:='"vtype"';
  SearchLine_my();
  Search:='"SPG"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  texts_s4:=texts.Strings[SearchLine];
  TXT4_SL:=SearchLine;
  texts_s4:=new_change_str(Search, texts_s4);
  Edit20.Text:=DelStartEnd(texts_s4);
  end;

  // Текст для ПТ // 5
  Search:='"vtype"';
  SearchLine_my();
  Search:='"TD"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  texts_s5:=texts.Strings[SearchLine];
  TXT5_SL:=SearchLine;
  texts_s5:=new_change_str(Search, texts_s5);
  Edit21.Text:=DelStartEnd(texts_s5);
  end;

end;

// Сохранение в файл texts.xc
procedure TXCTuner_Form1.texts_save;
begin
  // Текст для легких танков // 1
  texts_s1:=texts.Strings[TXT1_SL];
  texts_s1:=Smart_Replacing('"LT"', texts_s1, RecStartEnd(Edit17.Text));
  texts.Delete(TXT1_SL);
  texts.Insert(TXT1_SL, texts_s1);

  // Текст для средних танков // 2
  texts_s2:=texts.Strings[TXT2_SL];
  texts_s2:=Smart_Replacing('"MT"', texts_s2, RecStartEnd(Edit18.Text));
  texts.Delete(TXT2_SL);
  texts.Insert(TXT2_SL, texts_s2);

  // Текст для тяжелых танков // 3
  texts_s3:=texts.Strings[TXT3_SL];
  texts_s3:=Smart_Replacing('"HT"', texts_s3, RecStartEnd(Edit19.Text));
  texts.Delete(TXT3_SL);
  texts.Insert(TXT3_SL, texts_s3);

  // Текст для арты // 4
  texts_s4:=texts.Strings[TXT4_SL];
  texts_s4:=Smart_Replacing('"SPG"', texts_s4, RecStartEnd(Edit20.Text));
  texts.Delete(TXT4_SL);
  texts.Insert(TXT4_SL, texts_s4);

  // Текст для ПТ // 5
  texts_s5:=texts.Strings[TXT5_SL];
  texts_s5:=Smart_Replacing('"TD"', texts_s5, RecStartEnd(Edit21.Text));
  texts.Delete(TXT5_SL);
  texts.Insert(TXT5_SL, texts_s5);

end;

// Загрузка из файла turretMarkers.xc в программу
procedure TXCTuner_Form1.turret_loading;
begin
  turret.Clear;
  turret.LoadFromFile(dir_xvm+turret_name);
  temp_list.Clear;
  temp_list.Text:=turret.Text;

  temp_name:=turret_name;

  // Субъект имеет стоковую башню и топ орудие не может быть установлено. Субъект сильно уязвим. // 1
  Search:='"turretMarkers"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  Search:='"highVulnerability"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  turret_s1:=turret.Strings[SearchLine];
  TUR1_SL:=SearchLine;
  turret_s1:=new_change_str(Search, turret_s1);
  Edit22.Text:=DelStartEnd(turret_s1);
  end;

  // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим. // 2
  Search:='"turretMarkers"';
  SearchLine_my();
  if SearchLine=-1 then Application.Terminate else
  Search:='"lowVulnerability"';
  SearchLine_my_2();
  if SearchLine=-1 then Application.Terminate else
  begin
  turret_s2:=turret.Strings[SearchLine];
  TUR2_SL:=SearchLine;
  turret_s2:=new_change_str(Search, turret_s2);
  Edit23.Text:=DelStartEnd(turret_s2);
  end;

end;

// Сохранение из программы в файл turretMarkers.xc
procedure TXCTuner_Form1.turret_save;
begin
  // Субъект имеет стоковую башню и топ орудие не может быть установлено. Субъект сильно уязвим. // 1
  turret_s1:=turret.Strings[TUR1_SL];
  turret_s1:=Smart_Replacing('"highVulnerability"', turret_s1, RecStartEnd(Edit22.Text));
  turret.Delete(TUR1_SL);
  turret.Insert(TUR1_SL, turret_s1);

  // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим. // 2
  turret_s2:=turret.Strings[TUR2_SL];
  turret_s2:=Smart_Replacing('"lowVulnerability"', turret_s2, RecStartEnd(Edit23.Text));
  turret.Delete(TUR2_SL);
  turret.Insert(TUR2_SL, turret_s2);
end;

// Загрузка из файла
procedure TXCTuner_Form1.expanel_loading;
begin
  expanel.LoadFromFile(dir_xvm+expanel_name);
  // Задержка исчезновения панели / 1
  Search:='"expertPanel"';
  exp0_SL:=Search_Line(exp0_SL, Search, expanel);
  if exp0_SL=-1 then error_line(Search, battle_name) else
  begin
    Search:='"delay"';
    exp1_SL:=Search_Line(exp0_SL, Search, expanel);
    if exp1_SL=-1 then error_line(Search, expanel_name) else
    begin
      expanel_s1:=expanel.Strings[exp1_SL];
      expanel_s1:=new_change_str(Search, expanel_s1);
      SpinEdit1.Value:=StrToInt(expanel_s1);
    end;

    // Увеличение панели / 2
    Search:='"scale"';
    exp2_SL:=Search_Line(exp0_SL, Search, expanel);
    if exp2_SL=-1 then error_line(Search, expanel_name) else
    begin
      expanel_s2:=expanel.Strings[exp2_SL];
      expanel_s2:=new_change_str(Search, expanel_s2);
      SpinEdit2.Value:=StrToInt(expanel_s2);
    end;
  end;
end;

// Сохранение в файл
procedure TXCTuner_Form1.expanel_save;
begin
  expanel.LoadFromFile(dir_xvm+expanel_name);
  // 1
  expanel_s1:=expanel.Strings[exp1_SL];
  expanel_s1:=Smart_Replacing('"delay"', expanel_s1, IntToStr(SpinEdit1.Value));
  expanel.Delete(exp1_SL);
  expanel.Insert(exp1_SL, expanel_s1);

  // 2
  expanel_s2:=expanel.Strings[exp2_SL];
  expanel_s2:=Smart_Replacing('"scale"', expanel_s2, IntToStr(SpinEdit2.Value));
  expanel.Delete(exp2_SL);
  expanel.Insert(exp2_SL, expanel_s2);

end;

end.

