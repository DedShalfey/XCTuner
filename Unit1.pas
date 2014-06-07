unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Buttons, ComCtrls, StdCtrls, Spin, Unit2, Unit3, Unit5,
  mbColorPreview, StrUtils, types, Unit4, ShellApi, RegExpr, IniFiles,
  ColorsTabUnit;

type

  { TXCTuner_Form1 }

  TXCTuner_Form1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtnColor10: TBitBtn;
    BitBtnColor11: TBitBtn;
    BitBtnColor6: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtnColor7: TBitBtn;
    BitBtnColor8: TBitBtn;
    BitBtnColor9: TBitBtn;
    BitRefresh1: TBitBtn;
    BitRefresh10: TBitBtn;
    BitRefresh11: TBitBtn;
    BitRefresh12: TBitBtn;
    BitRefresh13: TBitBtn;
    BitRefresh14: TBitBtn;
    BitRefresh15: TBitBtn;
    BitRefresh16: TBitBtn;
    BitRefresh17: TBitBtn;
    BitRefresh18: TBitBtn;
    BitRefresh19: TBitBtn;
    BitRefresh2: TBitBtn;
    BitRefresh20: TBitBtn;
    BitRefresh21: TBitBtn;
    BitRefresh22: TBitBtn;
    BitRefresh23: TBitBtn;
    BitRefresh24: TBitBtn;
    BitRefresh25: TBitBtn;
    BitRefresh26: TBitBtn;
    BitRefresh27: TBitBtn;
    BitRefresh28: TBitBtn;
    BitRefresh29: TBitBtn;
    BitRefresh3: TBitBtn;
    BitRefresh30: TBitBtn;
    BitRefresh31: TBitBtn;
    BitRefresh32: TBitBtn;
    BitRefresh33: TBitBtn;
    BitRefresh34: TBitBtn;
    BitRefresh35: TBitBtn;
    BitRefresh36: TBitBtn;
    BitRefresh39: TBitBtn;
    BitRefresh4: TBitBtn;
    BitRefresh5: TBitBtn;
    BitRefresh6: TBitBtn;
    BitRefresh7: TBitBtn;
    BitRefresh8: TBitBtn;
    BitRefresh9: TBitBtn;
    BitSave1: TBitBtn;
    BitSave10: TBitBtn;
    BitSave11: TBitBtn;
    BitSave12: TBitBtn;
    BitSave13: TBitBtn;
    BitSave14: TBitBtn;
    BitSave15: TBitBtn;
    BitSave16: TBitBtn;
    BitSave17: TBitBtn;
    BitSave18: TBitBtn;
    BitSave19: TBitBtn;
    BitSave2: TBitBtn;
    BitSave20: TBitBtn;
    BitSave21: TBitBtn;
    BitSave22: TBitBtn;
    BitSave23: TBitBtn;
    BitSave24: TBitBtn;
    BitSave25: TBitBtn;
    BitSave26: TBitBtn;
    BitSave27: TBitBtn;
    BitSave28: TBitBtn;
    BitSave29: TBitBtn;
    BitSave3: TBitBtn;
    BitSave30: TBitBtn;
    BitSave31: TBitBtn;
    BitSave32: TBitBtn;
    BitSave33: TBitBtn;
    BitSave34: TBitBtn;
    BitSave35: TBitBtn;
    BitSave39: TBitBtn;
    BitSave4: TBitBtn;
    BitSave5: TBitBtn;
    BitSave6: TBitBtn;
    BitSave7: TBitBtn;
    BitSave8: TBitBtn;
    BitSave9: TBitBtn;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
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
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit3: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    Edit39: TEdit;
    Edit4: TEdit;
    Edit40: TEdit;
    Edit41: TEdit;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Edit5: TEdit;
    Edit50: TEdit;
    Edit51: TEdit;
    Edit52: TEdit;
    Edit53: TEdit;
    Edit54: TEdit;
    Edit55: TEdit;
    Edit56: TEdit;
    Edit57: TEdit;
    Edit58: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    FloatSpinEdit3: TFloatSpinEdit;
    FloatSpinEdit4: TFloatSpinEdit;
    FloatSpinEdit5: TFloatSpinEdit;
    FloatSpinEdit6: TFloatSpinEdit;
    FloatSpinEdit7: TFloatSpinEdit;
    FloatSpinEdit8: TFloatSpinEdit;
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
    GroupBox51: TGroupBox;
    GroupBox52: TGroupBox;
    GroupBox53: TGroupBox;
    GroupBox54: TGroupBox;
    GroupBox55: TGroupBox;
    GroupBox56: TGroupBox;
    GroupBox57: TGroupBox;
    GroupBox58: TGroupBox;
    GroupBox59: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox60: TGroupBox;
    GroupBox61: TGroupBox;
    GroupBox62: TGroupBox;
    GroupBox63: TGroupBox;
    GroupBox64: TGroupBox;
    GroupBox65: TGroupBox;
    GroupBox66: TGroupBox;
    GroupBox67: TGroupBox;
    GroupBox68: TGroupBox;
    GroupBox69: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox70: TGroupBox;
    GroupBox71: TGroupBox;
    GroupBox72: TGroupBox;
    GroupBox73: TGroupBox;
    GroupBox74: TGroupBox;
    GroupBox75: TGroupBox;
    GroupBox76: TGroupBox;
    GroupBox77: TGroupBox;
    GroupBox78: TGroupBox;
    GroupBox79: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox80: TGroupBox;
    GroupBox81: TGroupBox;
    GroupBox82: TGroupBox;
    GroupBox83: TGroupBox;
    GroupBox84: TGroupBox;
    GroupBox85: TGroupBox;
    GroupBox86: TGroupBox;
    GroupBox87: TGroupBox;
    GroupBox88: TGroupBox;
    GroupBox89: TGroupBox;
    GroupBox9: TGroupBox;
    GroupBox90: TGroupBox;
    GroupBox91: TGroupBox;
    GroupBox92: TGroupBox;
    GroupBox93: TGroupBox;
    GroupBox94: TGroupBox;
    GroupBox95: TGroupBox;
    GroupBox96: TGroupBox;
    Image1: TImage;
    Image10: TImage;
    Image100: TImage;
    Image101: TImage;
    Image102: TImage;
    Image103: TImage;
    Image104: TImage;
    Image105: TImage;
    Image106: TImage;
    Image107: TImage;
    Image108: TImage;
    Image109: TImage;
    Image11: TImage;
    Image110: TImage;
    Image111: TImage;
    Image112: TImage;
    Image113: TImage;
    Image114: TImage;
    Image115: TImage;
    Image116: TImage;
    Image117: TImage;
    Image118: TImage;
    Image119: TImage;
    Image120: TImage;
    Image121: TImage;
    Image122: TImage;
    Image123: TImage;
    Image124: TImage;
    Image125: TImage;
    Image126: TImage;
    Image127: TImage;
    Image128: TImage;
    Image129: TImage;
    Image13: TImage;
    Image130: TImage;
    Image131: TImage;
    Image132: TImage;
    Image133: TImage;
    Image134: TImage;
    Image135: TImage;
    Image136: TImage;
    Image137: TImage;
    Image138: TImage;
    Image139: TImage;
    Image14: TImage;
    Image140: TImage;
    Image141: TImage;
    Image142: TImage;
    Image143: TImage;
    Image144: TImage;
    Image145: TImage;
    Image146: TImage;
    Image147: TImage;
    Image148: TImage;
    Image149: TImage;
    Image15: TImage;
    Image150: TImage;
    Image151: TImage;
    Image152: TImage;
    Image153: TImage;
    Image154: TImage;
    Image155: TImage;
    Image156: TImage;
    Image157: TImage;
    Image158: TImage;
    Image159: TImage;
    Image16: TImage;
    Image160: TImage;
    Image161: TImage;
    Image162: TImage;
    Image163: TImage;
    Image164: TImage;
    Image165: TImage;
    Image166: TImage;
    Image167: TImage;
    Image168: TImage;
    Image169: TImage;
    Image17: TImage;
    Image170: TImage;
    Image171: TImage;
    Image172: TImage;
    Image173: TImage;
    Image174: TImage;
    Image175: TImage;
    Image176: TImage;
    Image177: TImage;
    Image178: TImage;
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
    Image65: TImage;
    Image66: TImage;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image7: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    Image79: TImage;
    Image8: TImage;
    Image80: TImage;
    Image81: TImage;
    Image82: TImage;
    Image83: TImage;
    Image84: TImage;
    Image85: TImage;
    Image86: TImage;
    Image87: TImage;
    Image88: TImage;
    Image89: TImage;
    Image90: TImage;
    Image91: TImage;
    Image92: TImage;
    Image93: TImage;
    Image94: TImage;
    Image95: TImage;
    Image96: TImage;
    Image97: TImage;
    Image98: TImage;
    Image99: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label10: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label11: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label12: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label13: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label14: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label15: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label16: TLabel;
    Label160: TLabel;
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
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label7: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label9: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    mbColorPreview1: TmbColorPreview;
    mbColorPreview10: TmbColorPreview;
    mbColorPreview11: TmbColorPreview;
    mbColorPreview2: TmbColorPreview;
    mbColorPreview3: TmbColorPreview;
    mbColorPreview4: TmbColorPreview;
    mbColorPreview5: TmbColorPreview;
    mbColorPreview6: TmbColorPreview;
    mbColorPreview7: TmbColorPreview;
    mbColorPreview8: TmbColorPreview;
    mbColorPreview9: TmbColorPreview;
    PageControl10: TPageControl;
    PageControl11: TPageControl;
    PageControl12: TPageControl;
    PageControl13: TPageControl;
    PageControl14: TPageControl;
    PageControl15: TPageControl;
    PageControl16: TPageControl;
    PageControl17: TPageControl;
    PageControl2: TPageControl;
    PageControl3: TPageControl;
    PageControl4: TPageControl;
    PageControl5: TPageControl;
    PageControl6: TPageControl;
    PageControl7: TPageControl;
    PageControl8: TPageControl;
    PageControl9: TPageControl;
    RadioButton1: TRadioButton;
    RadioButton100: TRadioButton;
    RadioButton101: TRadioButton;
    RadioButton102: TRadioButton;
    RadioButton103: TRadioButton;
    RadioButton104: TRadioButton;
    RadioButton105: TRadioButton;
    RadioButton106: TRadioButton;
    RadioButton107: TRadioButton;
    RadioButton108: TRadioButton;
    RadioButton109: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton110: TRadioButton;
    RadioButton111: TRadioButton;
    RadioButton112: TRadioButton;
    RadioButton113: TRadioButton;
    RadioButton114: TRadioButton;
    RadioButton115: TRadioButton;
    RadioButton116: TRadioButton;
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
    RadioButton60: TRadioButton;
    RadioButton61: TRadioButton;
    RadioButton62: TRadioButton;
    RadioButton63: TRadioButton;
    RadioButton64: TRadioButton;
    RadioButton65: TRadioButton;
    RadioButton66: TRadioButton;
    RadioButton67: TRadioButton;
    RadioButton68: TRadioButton;
    RadioButton69: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton70: TRadioButton;
    RadioButton71: TRadioButton;
    RadioButton72: TRadioButton;
    RadioButton73: TRadioButton;
    RadioButton74: TRadioButton;
    RadioButton75: TRadioButton;
    RadioButton76: TRadioButton;
    RadioButton77: TRadioButton;
    RadioButton78: TRadioButton;
    RadioButton79: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton80: TRadioButton;
    RadioButton81: TRadioButton;
    RadioButton82: TRadioButton;
    RadioButton83: TRadioButton;
    RadioButton84: TRadioButton;
    RadioButton85: TRadioButton;
    RadioButton86: TRadioButton;
    RadioButton87: TRadioButton;
    RadioButton88: TRadioButton;
    RadioButton89: TRadioButton;
    RadioButton90: TRadioButton;
    RadioButton91: TRadioButton;
    RadioButton92: TRadioButton;
    RadioButton93: TRadioButton;
    RadioButton94: TRadioButton;
    RadioButton95: TRadioButton;
    RadioButton96: TRadioButton;
    RadioButton97: TRadioButton;
    RadioButton98: TRadioButton;
    RadioButton99: TRadioButton;
    ScrollBox1: TScrollBox;
    ScrollBox10: TScrollBox;
    ScrollBox11: TScrollBox;
    ScrollBox12: TScrollBox;
    ScrollBox13: TScrollBox;
    ScrollBox14: TScrollBox;
    ScrollBox15: TScrollBox;
    ScrollBox16: TScrollBox;
    ScrollBox17: TScrollBox;
    ScrollBox18: TScrollBox;
    ScrollBox19: TScrollBox;
    ScrollBox2: TScrollBox;
    ScrollBox20: TScrollBox;
    ScrollBox21: TScrollBox;
    ScrollBox22: TScrollBox;
    ScrollBox23: TScrollBox;
    ScrollBox24: TScrollBox;
    ScrollBox27: TScrollBox;
    ScrollBox28: TScrollBox;
    ScrollBox29: TScrollBox;
    ScrollBox3: TScrollBox;
    ScrollBox30: TScrollBox;
    ScrollBox31: TScrollBox;
    ScrollBox32: TScrollBox;
    ScrollBox33: TScrollBox;
    ScrollBox34: TScrollBox;
    ScrollBox35: TScrollBox;
    ScrollBox36: TScrollBox;
    ScrollBox37: TScrollBox;
    ScrollBox38: TScrollBox;
    ScrollBox39: TScrollBox;
    ScrollBox4: TScrollBox;
    ScrollBox40: TScrollBox;
    ScrollBox41: TScrollBox;
    ScrollBox5: TScrollBox;
    ScrollBox6: TScrollBox;
    ScrollBox7: TScrollBox;
    ScrollBox8: TScrollBox;
    ScrollBox9: TScrollBox;
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
    SpinEdit20: TSpinEdit;
    SpinEdit21: TSpinEdit;
    SpinEdit22: TSpinEdit;
    SpinEdit23: TSpinEdit;
    SpinEdit24: TSpinEdit;
    SpinEdit25: TSpinEdit;
    SpinEdit26: TSpinEdit;
    SpinEdit27: TSpinEdit;
    SpinEdit28: TSpinEdit;
    SpinEdit29: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit30: TSpinEdit;
    SpinEdit31: TSpinEdit;
    SpinEdit32: TSpinEdit;
    SpinEdit33: TSpinEdit;
    SpinEdit34: TSpinEdit;
    SpinEdit35: TSpinEdit;
    SpinEdit36: TSpinEdit;
    SpinEdit37: TSpinEdit;
    SpinEdit38: TSpinEdit;
    SpinEdit39: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit40: TSpinEdit;
    SpinEdit41: TSpinEdit;
    SpinEdit42: TSpinEdit;
    SpinEdit43: TSpinEdit;
    SpinEdit44: TSpinEdit;
    SpinEdit45: TSpinEdit;
    SpinEdit46: TSpinEdit;
    SpinEdit47: TSpinEdit;
    SpinEdit48: TSpinEdit;
    SpinEdit49: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit50: TSpinEdit;
    SpinEdit51: TSpinEdit;
    SpinEdit52: TSpinEdit;
    SpinEdit53: TSpinEdit;
    SpinEdit54: TSpinEdit;
    SpinEdit55: TSpinEdit;
    SpinEdit56: TSpinEdit;
    SpinEdit57: TSpinEdit;
    SpinEdit58: TSpinEdit;
    SpinEdit59: TSpinEdit;
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
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet20: TTabSheet;
    TabSheet21: TTabSheet;
    TabSheet22: TTabSheet;
    TabSheet23: TTabSheet;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    TabSheet29: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet30: TTabSheet;
    TabSheet31: TTabSheet;
    TabSheet32: TTabSheet;
    TabSheet33: TTabSheet;
    TabSheet34: TTabSheet;
    TabSheet35: TTabSheet;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    TabSheet38: TTabSheet;
    TabSheet39: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet40: TTabSheet;
    TabSheet41: TTabSheet;
    TabSheet42: TTabSheet;
    TabSheet43: TTabSheet;
    TabSheet44: TTabSheet;
    TabSheet45: TTabSheet;
    TabSheet46: TTabSheet;
    TabSheet47: TTabSheet;
    TabSheet48: TTabSheet;
    TabSheet49: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet50: TTabSheet;
    TabSheet51: TTabSheet;
    TabSheet52: TTabSheet;
    TabSheet53: TTabSheet;
    TabSheet54: TTabSheet;
    TabSheet55: TTabSheet;
    TabSheet56: TTabSheet;
    TabSheet57: TTabSheet;
    TabSheet58: TTabSheet;
    TabSheet59: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet60: TTabSheet;
    TabSheet61: TTabSheet;
    TabSheet62: TTabSheet;
    TabSheet63: TTabSheet;
    TabSheet64: TTabSheet;
    TabSheet65: TTabSheet;
    TabSheet66: TTabSheet;
    TabSheet67: TTabSheet;
    TabSheet69: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet70: TTabSheet;
    TabSheet71: TTabSheet;
    TabSheet72: TTabSheet;
    TabSheet73: TTabSheet;
    TabSheet74: TTabSheet;
    TabSheet75: TTabSheet;
    TabSheet76: TTabSheet;
    TabSheet77: TTabSheet;
    TabSheet78: TTabSheet;
    TabSheet79: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet80: TTabSheet;
    TabSheet81: TTabSheet;
    TabSheet82: TTabSheet;
    TabSheet83: TTabSheet;
    TabSheet84: TTabSheet;
    TabSheet85: TTabSheet;
    TabSheet9: TTabSheet;
    TrackBar1: TTrackBar;
    TrackBar10: TTrackBar;
    TrackBar11: TTrackBar;
    TrackBar12: TTrackBar;
    TrackBar13: TTrackBar;
    TrackBar14: TTrackBar;
    TrackBar15: TTrackBar;
    TrackBar16: TTrackBar;
    TrackBar17: TTrackBar;
    TrackBar18: TTrackBar;
    TrackBar19: TTrackBar;
    TrackBar2: TTrackBar;
    TrackBar20: TTrackBar;
    TrackBar21: TTrackBar;
    TrackBar22: TTrackBar;
    TrackBar23: TTrackBar;
    TrackBar24: TTrackBar;
    TrackBar25: TTrackBar;
    TrackBar26: TTrackBar;
    TrackBar27: TTrackBar;
    TrackBar28: TTrackBar;
    TrackBar29: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar30: TTrackBar;
    TrackBar31: TTrackBar;
    TrackBar32: TTrackBar;
    TrackBar33: TTrackBar;
    TrackBar34: TTrackBar;
    TrackBar35: TTrackBar;
    TrackBar36: TTrackBar;
    TrackBar37: TTrackBar;
    TrackBar38: TTrackBar;
    TrackBar39: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar40: TTrackBar;
    TrackBar41: TTrackBar;
    TrackBar42: TTrackBar;
    TrackBar43: TTrackBar;
    TrackBar44: TTrackBar;
    TrackBar45: TTrackBar;
    TrackBar46: TTrackBar;
    TrackBar47: TTrackBar;
    TrackBar48: TTrackBar;
    TrackBar49: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar50: TTrackBar;
    TrackBar51: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    TrackBar9: TTrackBar;
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtnColor10Click(Sender: TObject);
    procedure BitBtnColor11Click(Sender: TObject);
    procedure BitBtnColor6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtnColor7Click(Sender: TObject);
    procedure BitBtnColor8Click(Sender: TObject);
    procedure BitBtnColor9Click(Sender: TObject);
    procedure BitRefresh10Click(Sender: TObject);
    procedure BitRefresh11Click(Sender: TObject);
    procedure BitRefresh12Click(Sender: TObject);
    procedure BitRefresh13Click(Sender: TObject);
    procedure BitRefresh14Click(Sender: TObject);
    procedure BitRefresh15Click(Sender: TObject);
    procedure BitRefresh16Click(Sender: TObject);
    procedure BitRefresh17Click(Sender: TObject);
    procedure BitRefresh1Click(Sender: TObject);
    procedure BitRefresh2Click(Sender: TObject);
    procedure BitRefresh39Click(Sender: TObject);
    procedure BitRefresh3Click(Sender: TObject);
    procedure BitRefresh4Click(Sender: TObject);
    procedure BitRefresh5Click(Sender: TObject);
    procedure BitRefresh6Click(Sender: TObject);
    procedure BitRefresh7Click(Sender: TObject);
    procedure BitRefresh8Click(Sender: TObject);
    procedure BitRefresh9Click(Sender: TObject);
    procedure BitSave10Click(Sender: TObject);
    procedure BitSave11Click(Sender: TObject);
    procedure BitSave12Click(Sender: TObject);
    procedure BitSave13Click(Sender: TObject);
    procedure BitSave14Click(Sender: TObject);
    procedure BitSave15Click(Sender: TObject);
    procedure BitSave16Click(Sender: TObject);
    procedure BitSave17Click(Sender: TObject);
    procedure BitSave1Click(Sender: TObject);
    procedure BitSave2Click(Sender: TObject);
    procedure BitSave39Click(Sender: TObject);
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
    procedure Edit48Exit(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit53Exit(Sender: TObject);
    procedure Edit54Exit(Sender: TObject);
    procedure Edit55Exit(Sender: TObject);
    procedure Edit56Exit(Sender: TObject);
    procedure Edit57Exit(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure FloatSpinEdit1Change(Sender: TObject);
    procedure FloatSpinEdit2Change(Sender: TObject);
    procedure FloatSpinEdit3Change(Sender: TObject);
    procedure FloatSpinEdit4Change(Sender: TObject);
    procedure FloatSpinEdit5Change(Sender: TObject);
    procedure FloatSpinEdit6Change(Sender: TObject);
    procedure FloatSpinEdit7Change(Sender: TObject);
    procedure FloatSpinEdit8Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image100Click(Sender: TObject);
    procedure Image101Click(Sender: TObject);
    procedure Image102Click(Sender: TObject);
    procedure Image103Click(Sender: TObject);
    procedure Image104Click(Sender: TObject);
    procedure Image105Click(Sender: TObject);
    procedure Image106Click(Sender: TObject);
    procedure Image107Click(Sender: TObject);
    procedure Image108Click(Sender: TObject);
    procedure Image109Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image110Click(Sender: TObject);
    procedure Image111Click(Sender: TObject);
    procedure Image112Click(Sender: TObject);
    procedure Image113Click(Sender: TObject);
    procedure Image114Click(Sender: TObject);
    procedure Image115Click(Sender: TObject);
    procedure Image116Click(Sender: TObject);
    procedure Image117Click(Sender: TObject);
    procedure Image118Click(Sender: TObject);
    procedure Image119Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image120Click(Sender: TObject);
    procedure Image121Click(Sender: TObject);
    procedure Image122Click(Sender: TObject);
    procedure Image123Click(Sender: TObject);
    procedure Image124Click(Sender: TObject);
    procedure Image125Click(Sender: TObject);
    procedure Image126Click(Sender: TObject);
    procedure Image127Click(Sender: TObject);
    procedure Image128Click(Sender: TObject);
    procedure Image129Click(Sender: TObject);
    procedure Image130Click(Sender: TObject);
    procedure Image131Click(Sender: TObject);
    procedure Image132Click(Sender: TObject);
    procedure Image133Click(Sender: TObject);
    procedure Image134Click(Sender: TObject);
    procedure Image135Click(Sender: TObject);
    procedure Image136Click(Sender: TObject);
    procedure Image137Click(Sender: TObject);
    procedure Image138Click(Sender: TObject);
    procedure Image139Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image140Click(Sender: TObject);
    procedure Image141Click(Sender: TObject);
    procedure Image142Click(Sender: TObject);
    procedure Image143Click(Sender: TObject);
    procedure Image144Click(Sender: TObject);
    procedure Image145Click(Sender: TObject);
    procedure Image146Click(Sender: TObject);
    procedure Image147Click(Sender: TObject);
    procedure Image148Click(Sender: TObject);
    procedure Image149Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image150Click(Sender: TObject);
    procedure Image151Click(Sender: TObject);
    procedure Image152Click(Sender: TObject);
    procedure Image153Click(Sender: TObject);
    procedure Image154Click(Sender: TObject);
    procedure Image155Click(Sender: TObject);
    procedure Image156Click(Sender: TObject);
    procedure Image157Click(Sender: TObject);
    procedure Image158Click(Sender: TObject);
    procedure Image159Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image160Click(Sender: TObject);
    procedure Image161Click(Sender: TObject);
    procedure Image162Click(Sender: TObject);
    procedure Image163Click(Sender: TObject);
    procedure Image164Click(Sender: TObject);
    procedure Image165Click(Sender: TObject);
    procedure Image166Click(Sender: TObject);
    procedure Image167Click(Sender: TObject);
    procedure Image168Click(Sender: TObject);
    procedure Image169Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image170Click(Sender: TObject);
    procedure Image171Click(Sender: TObject);
    procedure Image172Click(Sender: TObject);
    procedure Image173Click(Sender: TObject);
    procedure Image174Click(Sender: TObject);
    procedure Image175Click(Sender: TObject);
    procedure Image176Click(Sender: TObject);
    procedure Image177Click(Sender: TObject);
    procedure Image178Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image180Click(Sender: TObject);
    procedure Image181Click(Sender: TObject);
    procedure Image186Click(Sender: TObject);
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
    procedure Image65Click(Sender: TObject);
    procedure Image66Click(Sender: TObject);
    procedure Image67Click(Sender: TObject);
    procedure Image68Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image70Click(Sender: TObject);
    procedure Image71Click(Sender: TObject);
    procedure Image72Click(Sender: TObject);
    procedure Image73Click(Sender: TObject);
    procedure Image74Click(Sender: TObject);
    procedure Image75Click(Sender: TObject);
    procedure Image76Click(Sender: TObject);
    procedure Image77Click(Sender: TObject);
    procedure Image78Click(Sender: TObject);
    procedure Image79Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image80Click(Sender: TObject);
    procedure Image81Click(Sender: TObject);
    procedure Image82Click(Sender: TObject);
    procedure Image83Click(Sender: TObject);
    procedure Image84Click(Sender: TObject);
    procedure Image85Click(Sender: TObject);
    procedure Image86Click(Sender: TObject);
    procedure Image87Click(Sender: TObject);
    procedure Image88Click(Sender: TObject);
    procedure Image89Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image90Click(Sender: TObject);
    procedure Image91Click(Sender: TObject);
    procedure Image92Click(Sender: TObject);
    procedure Image93Click(Sender: TObject);
    procedure Image94Click(Sender: TObject);
    procedure Image95Click(Sender: TObject);
    procedure Image96Click(Sender: TObject);
    procedure Image97Click(Sender: TObject);
    procedure Image98Click(Sender: TObject);
    procedure Image99Click(Sender: TObject);
    procedure Label63Click(Sender: TObject);
    procedure Label63MouseLeave(Sender: TObject);
    procedure Label63MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpinEdit20Change(Sender: TObject);
    procedure SpinEdit21Change(Sender: TObject);
    procedure SpinEdit22Change(Sender: TObject);
    procedure SpinEdit23Change(Sender: TObject);
    procedure SpinEdit24Change(Sender: TObject);
    procedure SpinEdit25Change(Sender: TObject);
    procedure SpinEdit26Change(Sender: TObject);
    procedure SpinEdit27Change(Sender: TObject);
    procedure SpinEdit28Change(Sender: TObject);
    procedure SpinEdit29Change(Sender: TObject);
    procedure SpinEdit30Change(Sender: TObject);
    procedure SpinEdit31Change(Sender: TObject);
    procedure SpinEdit32Change(Sender: TObject);
    procedure SpinEdit33Change(Sender: TObject);
    procedure SpinEdit34Change(Sender: TObject);
    procedure SpinEdit35Change(Sender: TObject);
    procedure SpinEdit36Change(Sender: TObject);
    procedure SpinEdit37Change(Sender: TObject);
    procedure SpinEdit38Change(Sender: TObject);
    procedure SpinEdit39Change(Sender: TObject);
    procedure SpinEdit40Change(Sender: TObject);
    procedure SpinEdit41Change(Sender: TObject);
    procedure SpinEdit42Change(Sender: TObject);
    procedure SpinEdit43Change(Sender: TObject);
    procedure SpinEdit44Change(Sender: TObject);
    procedure SpinEdit45Change(Sender: TObject);
    procedure SpinEdit46Change(Sender: TObject);
    procedure SpinEdit47Change(Sender: TObject);
    procedure SpinEdit48Change(Sender: TObject);
    procedure SpinEdit49Change(Sender: TObject);
    procedure SpinEdit50Change(Sender: TObject);
    procedure SpinEdit51Change(Sender: TObject);
    procedure SpinEdit52Change(Sender: TObject);
    procedure SpinEdit53Change(Sender: TObject);
    procedure SpinEdit54Change(Sender: TObject);
    procedure SpinEdit55Change(Sender: TObject);
    procedure SpinEdit56Change(Sender: TObject);
    procedure SpinEdit57Change(Sender: TObject);
    procedure SpinEdit58Change(Sender: TObject);
    procedure SpinEdit59Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure tAboutClick(Sender: TObject);
    procedure TrackBar10Change(Sender: TObject);
    procedure TrackBar11Change(Sender: TObject);
    procedure TrackBar12Change(Sender: TObject);
    procedure TrackBar13Change(Sender: TObject);
    procedure TrackBar14Change(Sender: TObject);
    procedure TrackBar15Change(Sender: TObject);
    procedure TrackBar16Change(Sender: TObject);
    procedure TrackBar17Change(Sender: TObject);
    procedure TrackBar18Change(Sender: TObject);
    procedure TrackBar19Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar20Change(Sender: TObject);
    procedure TrackBar21Change(Sender: TObject);
    procedure TrackBar22Change(Sender: TObject);
    procedure TrackBar23Change(Sender: TObject);
    procedure TrackBar24Change(Sender: TObject);
    procedure TrackBar25Change(Sender: TObject);
    procedure TrackBar26Change(Sender: TObject);
    procedure TrackBar27Change(Sender: TObject);
    procedure TrackBar28Change(Sender: TObject);
    procedure TrackBar29Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar30Change(Sender: TObject);
    procedure TrackBar31Change(Sender: TObject);
    procedure TrackBar32Change(Sender: TObject);
    procedure TrackBar33Change(Sender: TObject);
    procedure TrackBar34Change(Sender: TObject);
    procedure TrackBar35Change(Sender: TObject);
    procedure TrackBar36Change(Sender: TObject);
    procedure TrackBar37Change(Sender: TObject);
    procedure TrackBar38Change(Sender: TObject);
    procedure TrackBar39Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar40Change(Sender: TObject);
    procedure TrackBar41Change(Sender: TObject);
    procedure TrackBar42Change(Sender: TObject);
    procedure TrackBar43Change(Sender: TObject);
    procedure TrackBar44Change(Sender: TObject);
    procedure TrackBar45Change(Sender: TObject);
    procedure TrackBar46Change(Sender: TObject);
    procedure TrackBar47Change(Sender: TObject);
    procedure TrackBar48Change(Sender: TObject);
    procedure TrackBar49Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar50Change(Sender: TObject);
    procedure TrackBar51Change(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);
    procedure TrackBar9Change(Sender: TObject);
    procedure ClickColorSelectComboBox(Sender: TObject);
    procedure ClickAlphaSelectComboBox(Sender: TObject);
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
    function currect_float(str: String): String;
    function currect_float_back(str: String): String;
    procedure error_line(Search, temp_name: String);
    function currect_float_for4(str: String): String;
    procedure activ_conf();
    procedure xvm_loading();
    procedure battle_loading();
    procedure battle_save();
    procedure battload_loading();
    procedure battload_save();
    procedure bt_result_loading();
    procedure bt_result_save();
    procedure login_loading();
    procedure login_save();
    procedure hangar_loading();
    procedure hangar_save();
    procedure fragCorrelation_loading();
    procedure fragCorrelation_save();
    procedure map_loading();
    procedure map_save();
    procedure circlemap_loading();
    procedure circlemap_save();
    procedure userinfo_loading();
    procedure userinfo_save();
    procedure pl_panel_loading();
    procedure pl_panel_save();
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
    procedure tab_loading();
    procedure tab_save();
    procedure turret_loading();
    procedure turret_save();
    procedure expanel_loading();
    procedure expanel_save();
    procedure color_loading();
    procedure color_save();
    procedure alpha_loading();
    procedure OnClickColorButton(Sender: TObject);
    function LoadAlphaTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
    function LoadAlphaTabEx(FindExpr: string; GB: TScrollBox):string;
    function GetWord(Str,Smb:string; WordNmbr:Byte):string;
    //procedure edithint();
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
  ColorSelect, ChangeEdit, SearchLine: Integer;
  ChangeEditText, Search, dir_xvm, temp_str, ColSelectBtn, SBSelect, GBSelect, ColSelectEdit, PCSelect: String;

  xvm_base, xvm, battle, bt_result, iconset, login, hangar, hotkeys, userInfo: TStringList;
  battload, fragcorr, expanel, rating, texts, pl_panel, squad, turret, tab: TStringList;
  map, circle, colors, alpha: TStringList;

  ColorSubStrValue, AlphaSubStrValue: TStringList;

  activ_config, xvm_file_name, battle_name, bt_result_name, login_name, hangar_name, hotkeys_name, userInfo_name, rating_name: String;
  squad_name, battload_name, iconset_name, texts_name, turret_name, frag_name, pl_panel_name, expanel_name, tab_name: String;
  map_name, circle_name, colors_name, alpha_name: String;

  b_s1, b_s2, b_s4, b_s6, b_s7, b_s8: String;

  bt_res_s1, bt_res_s2, bt_res_s3, bt_res_s4, bt_res_s5, bt_res_s6: String;

  xvm_s1, xvm_s2, xvm_s3, xvm_s4, xvm_s5, xvm_s6, xvm_s7, xvm_s8, xvm_s9, xvm_s10: String;

  login_s1, login_s2, login_s3, login_s4, login_s5, login_s6, login_s7: string;

  hangar_s1, hangar_s2, hangar_s3, hangar_s4, hangar_s5, hangar_s6, hangar_s7,
  hangar_s8, hangar_s9, hangar_s10, hangar_s11, hangar_s12, hangar_s13,
  hangar_s14, hangar_s15, hangar_s16, hangar_s17, hangar_s18, hangar_s19,
  hangar_s20, hangar_s21, hangar_s22, hangar_s23, hangar_s24, hangar_s25,
  hangar_s26, hangar_s27, hangar_s28, hangar_s29, hangar_s30, hangar_s31, hangar_s32: string;

  hotkeys_s1, hotkeys_s2, hotkeys_s3: String;

  iconset_s1, iconset_s2, iconset_s3, iconset_s4, iconset_s5, iconset_s6, iconset_s7, iconset_s8: String;

  fragcorr_s1: String;
  fr0_SL, fr1_SL: Integer;

  expanel_s1, expanel_s2: String;
  exp0_SL, exp1_SL, exp2_SL: Integer;

  bt_res0_SL, bt_res1_SL, bt_res2_SL, bt_res3_SL, bt_res4_SL, bt_res5_SL, bt_res6_SL: Integer;

  rating_s1, rating_s2, rating_s3, rating_s4, rating_s5: String;

  UserInfo_s1, UserInfo_s2, UserInfo_s3, UserInfo_s4, UserInfo_s5, UserInfo_s6, UserInfo_s7: String;

  texts_s1, texts_s2, texts_s3, texts_s4, texts_s5: String;

  turret_s1, turret_s2: String;

  pl_s1, pl_s2, pl_s3, pl_s4, pl_s5: String;
  pl_s6, pl_s7, pl_s8, pl_s9, pl_s10, pl_s11, pl_s12, pl_s13, pl_s14, pl_s15: String;
  pl_s16, pl_s17, pl_s18, pl_s19, pl_s20, pl_s21, pl_s22, pl_s23: String;
  pl_s24, pl_s25, pl_s26, pl_s27, pl_s28, pl_s29, pl_s30, pl_s31, pl_s32, pl_s33, pl_s34: String;
  pl_s35, pl_s36, pl_s37, pl_s38, pl_s39, pl_s40, pl_s41: String;

  pl0_SL, pl00_SL, pl000_SL, pl04_SL, pl05_SL, pl06_SL, pl07_SL, pl08_SL, pl09_SL, pl010_SL: Integer;
  pl1_SL, pl2_SL, pl3_SL, pl4_SL, pl5_SL: Integer;
  pl6_SL, pl7_SL, pl8_SL, pl9_SL, pl10_SL, pl11_SL, pl12_SL, pl13_SL, pl14_SL, pl15_SL: Integer;
  pl16_SL, pl17_SL, pl18_SL, pl19_SL, pl20_SL, pl21_SL, pl22_SL, pl23_SL: Integer;
  pl24_SL, pl25_SL, pl26_SL, pl27_SL, pl28_SL, pl29_SL, pl30_SL, pl31_SL, pl32_SL, pl33_SL, pl34_SL: Integer;
  pl35_SL, pl36_SL, pl37_SL, pl38_SL, pl39_SL, pl40_SL, pl41_SL: Integer;

  squad_s1, squad_s2, squad_s3: String;

  bs0_SL, bs1_SL, bs2_SL, bs4_SL, bs6_SL, bs7_SL, bs8_SL: Integer;
  log0_SL, log1_SL, log2_SL, log3_SL, log4_SL, log5_SL, log6_SL, log7_SL: Integer;
  xvm0_SL, xvm1_SL, xvm2_SL, xvm3_SL, xvm4_SL, xvm5_SL, xvm6_SL, xvm7_SL, xvm8_SL, xvm9_SL, xvm10_SL: Integer;

  hgar01_SL, hgar02_SL, hgar03_SL, hgar04_SL, hgar05_SL, hgar06_SL: Integer;
  hgar1_SL, hgar2_SL, hgar3_SL, hgar4_SL, hgar5_SL, hgar6_SL, hgar7_SL: Integer;
  hgar8_SL, hgar9_SL, hgar10_SL, hgar11_SL, hgar12_SL, hgar13_SL: Integer;
  hgar14_SL, hgar15_SL, hgar16_SL, hgar17_SL, hgar18_SL, hgar19_SL, hgar20_SL: Integer;
  hgar21_SL, hgar22_SL, hgar23_SL, hgar24_SL, hgar25_SL, hgar26_SL: Integer;
  hgar27_SL, hgar28_SL, hgar29_SL, hgar30_SL, hgar31_SL, hgar32_SL: Integer;

  HK0_SL, HK1_SL, HK2_SL, HK3_SL: Integer;

  IS0_SL, IS1_SL, IS2_SL, IS3_SL, IS4_SL, IS5_SL, IS6_SL, IS7_SL, IS8_SL: Integer;

  rat0_SL, rat1_SL, rat2_SL, rat3_SL, rat4_SL, rat5_SL: Integer;

  SQ0_SL, SQ1_SL, SQ2_SL, SQ3_SL: Integer;

  TXT0_SL, TXT00_SL, TXT1_SL, TXT2_SL, TXT3_SL, TXT4_SL, TXT5_SL: Integer;

  TUR0_SL, TUR1_SL, TUR2_SL: Integer;

  UI0_SL, UI1_SL, UI2_SL, UI3_SL, UI4_SL, UI5_SL, UI6_SL, UI7_SL: Integer;

  battload_s1, battload_s2, battload_s3, battload_s4, battload_s5, battload_s6,
  battload_s7, battload_s8, battload_s9, battload_s10, battload_s11, battload_s12,
  battload_s13, battload_s14, battload_s15, battload_s16: String;

  BL_0_SL, BL_01_SL, BL_1_SL, BL_2_SL, BL_3_SL, BL_4_SL, BL_5_SL, BL_6_SL, BL_7_SL,
  BL_8_SL, BL_9_SL, BL_10_SL, BL_11_SL, BL_12_SL, BL_13_SL, BL_14_SL, BL_15_SL, BL_16_SL: Integer;

  // TAB
  tab_s1, tab_s2, tab_s3, tab_s4, tab_s5, tab_s6,
  tab_s7, tab_s8, tab_s9, tab_s10, tab_s11, tab_s12,
  tab_s13, tab_s14, tab_s15, tab_s16: String;

  tab_0_SL, tab_01_SL, tab_1_SL, tab_2_SL, tab_3_SL, tab_4_SL, tab_5_SL, tab_6_SL, tab_7_SL,
  tab_8_SL, tab_9_SL, tab_10_SL, tab_11_SL, tab_12_SL, tab_13_SL, tab_14_SL, tab_15_SL, tab_16_SL: Integer;

  //minimap
  map_s1, map_s2, map_s3, map_s4, map_s5, map_s6, map_s7,
  map_s8, map_s9, map_s10, map_s11, map_s12: String;

  MP_0_SL, MP_01_SL, MP_02_SL, MP_1_SL, MP_2_SL, MP_3_SL, MP_4_SL, MP_5_SL, MP_6_SL,
  MP_7_SL, MP_8_SL, MP_9_SL, MP_10_SL, MP_11_SL, MP_12_SL: integer;

  // circle map
  circle_s1, circle_s2, circle_s3, circle_s4, circle_s5, circle_s6, circle_s7,
  circle_s8, circle_s9, circle_s10, circle_s11, circle_s12, circle_s13, circle_s14,
  circle_s15, circle_s16, circle_s17, circle_s18, circle_s19, circle_s20, circle_s21,
  circle_s22, circle_s23, circle_s24, circle_s25, circle_s26, circle_s27, circle_s28: String;

  CIR_0_SL, CIR_01_SL, CIR_1_SL, CIR_2_SL, CIR_3_SL, CIR_4_SL, CIR_5_SL, CIR_6_SL,
  CIR_7_SL, CIR_8_SL, CIR_9_SL, CIR_10_SL, CIR_11_SL, CIR_12_SL, CIR_13_SL, CIR_14_SL,
  CIR_15_SL, CIR_16_SL, CIR_17_SL, CIR_18_SL, CIR_19_SL, CIR_20_SL, CIR_21_SL, CIR_22_SL,
  CIR_23_SL, CIR_24_SL, CIR_25_SL, CIR_26_SL, CIR_27_SL, CIR_28_SL: integer;

  lang_config, config: TIniFile;


implementation

{$R *.lfm}
{$R res.RES}

{ TXCTuner_Form1 }

procedure TXCTuner_Form1.OnClickColorButton(Sender: TObject);
var
s, p, g: string;
begin
ColorSelect := 13;
p := TScrollBox(Sender).Parent.Parent.Name;
g := TGroupBox(Sender).Parent.Name;
s := TBitBtn(Sender).Name;
s := Copy(s, Length('sBitBtnScrollBox') + 1, MaxInt);
ColSelectBtn := 'sColorValuePreviewScrollBox' + s;
ColSelectEdit := 'sColorValueScrollBox' + s;
SBSelect := p;
GBSelect := g;
ColorSelectMy.ShowModal;
end;

function UpdateBitBtnStatus(BitBtn: TBitBtn; sActiveSheet:integer): Boolean;
var
  i: integer;
begin
with XCTuner_Form1 do
begin
  for i := 0 to Panel1.ControlCount - 1 do
  begin
    if (Panel1.Controls[i] is TBitBtn)
    and (Panel1.Controls[i].Name <> 'tAbout')
    and (Panel1.Controls[i].Name <> 'BtExit') then
    begin
      TBitBtn(Panel1.Controls[i]).Glyph := nil;
      TBitBtn(Panel1.Controls[i]).Font.Style := [];
    end;
  end;
  BitBtn.Font.Style := [fsBold];
  ImageList1.GetBitmap(0, BitBtn.Glyph);
  PageControl1.PageIndex := sActiveSheet;
end;
Result := True;
end;

function TXCTuner_Form1.GetWord(Str,Smb:string; WordNmbr:Byte):string;
var
SWord:string;
StrLen,N:Byte;
begin
StrLen := SizeOf(Str);
N := 1;
while ((WordNmbr >= N) and (StrLen <> 0)) do
begin
  StrLen := Pos(Smb,str);
  if StrLen <> 0 then
  begin
    SWord := Copy(Str,1,StrLen - 1);
    Delete(Str,1,StrLen);
    Inc(N);
  end
  else
    SWord := Str;
end;
if WordNmbr <= N then
  Result := SWord
else
  Result := '';
end;

procedure TXCTuner_Form1.ClickColorSelectComboBox(Sender: TObject);
var
   s: string;
   Edt: TEdit;
   GB: TGroupBox;
   sCP: TmbColorPreview;
begin
s := TComboBox(Sender).Name;
GB := TGroupBox(TComboBox(Sender).Parent);
s := Copy(s, Pos('sColorSubStrValueScrollBox', s) + Length('sColorSubStrValueScrollBox'), MaxInt);
Edt := TEdit(GB.FindChildControl('sColorValueScrollBox' + s));
sCP := TmbColorPreview(GB.FindChildControl('sColorValuePreviewScrollBox' + s));
if TComboBox(Sender).Text <> 'Выберите...' then
begin
  Edt.Text := TComboBox(Sender).Text;
  sCP.Color := HexToTColor(Copy(ColorSubStrValue.Text, Pos(Edt.Text, ColorSubStrValue.Text) + Length(Edt.Text) + 2, 6));
end;
end;

procedure TXCTuner_Form1.ClickAlphaSelectComboBox(Sender: TObject);
var
   s: string;
   Edt: TEdit;
   GB: TGroupBox;
begin
s := TComboBox(Sender).Name;
GB := TGroupBox(TComboBox(Sender).Parent);
s := Copy(s, Pos('sAlphaSubStrValueScrollBox', s) + Length('sAlphaSubStrValueScrollBox'), MaxInt);
Edt := TEdit(GB.FindChildControl('sAlphaValueScrollBox' + s));
if TComboBox(Sender).Text <> 'Выберите...' then
  Edt.Text := TComboBox(Sender).Text;
end;

function TXCTuner_Form1.LoadAlphaTab(s, FindExpr: string; GB: TScrollBox; ShowSub: Boolean):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sEdit: TSpinEdit;
  sSubstEdit: TEdit;
  sCaption, sValue, sName, s1: string;
  sSubstLabel, sAlphaSelectLabel: TLabel;
  sAlphaSubStrValue: TComboBox;
  i, j: integer;
begin
alpha.Clear;
alpha.LoadFromFile(dir_xvm + alpha_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(alpha.Text) then
begin
  sRE.Expression := '[ \/]"(.*?)":(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    s1 := Trim(sRE.Substitute('$2'));
    s1 := StringReplace(s1, '  ', ' ', [rfIgnoreCase,rfReplaceAll]);
    sName := sRE.Substitute('$1');
    sCaption := lang_config.ReadString('colors', sName, '');
    sValue := Trim(GetWord(s1, '"', 2));

    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sLabel.Caption := sCaption;
      sEdit := TSpinEdit(sLabel.FindChildControl('sAlphaValue' + GB.Name + IntToStr(i)));
      sEdit.Value := StrToInt(sValue);
      if ShowSub then
      begin
        sAlphaSubStrValue := TComboBox(sLabel.FindChildControl('sAlphaSubStrValue' + GB.Name + IntToStr(i)));
        sAlphaSubStrValue.Items.Clear;
        sAlphaSubStrValue.Items.Add('Выберите...');
        for j := 0 to AlphaSubStrValue.Count - 1 do
          sAlphaSubStrValue.Items.Add(AlphaSubStrValue.Strings[j]);
        if sAlphaSubStrValue.Items.IndexOf(sEdit.Text) <> -1 then
          sAlphaSubStrValue.ItemIndex := sAlphaSubStrValue.Items.IndexOf(sEdit.Text)
        else
          sAlphaSubStrValue.ItemIndex := 0;
      end;
      if s <> '' then
        TEdit(sLabel.FindChildControl('sSubstEdit' + GB.Name + IntToStr(i))).Text := s + sName;
    end
    else
    begin
    sLabel := TGroupBox.Create(nil);
    with sLabel do
    begin
      Parent := GB;
      Hint := sName;
      Name := 'sGroupBox' + GB.Name + IntToStr(i);
      Width := 560;
      Height := 60;
      if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))) = nil then
        Top := 0
      else
        Top := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Top + TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Height + 3;
      Left := 10;
      Caption := sCaption;
    end;

    sEdit := TSpinEdit.Create(nil);
    with sEdit do
    begin
      Parent := sLabel;
      Hint := sName;
      Alignment := taCenter;
      Name := 'sAlphaValue' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 100;
      Left := 18;
      Text := sValue;
      Value := StrToInt(sValue);
    end;

    if s <> '' then
    begin
      sSubstLabel := TLabel.Create(nil);
      with sSubstLabel do
      begin
        Parent := sLabel;
        Hint := sName;
        Name := 'sSubstLabel' + GB.Name + IntToStr(i);
        Top := sEdit.Top + 4;
        Left := sEdit.Left + sEdit.Width + 18;
        Caption := 'Значение для подстановки: ';
        Width := 155;
      end;
      sSubstEdit := TEdit.Create(nil);
      with sSubstEdit do
      begin
        Parent := sLabel;
        Hint := sName;
        Name := 'sSubstEdit' + GB.Name + IntToStr(i);
        Top := sEdit.Top + 2;
        Width := 165;
        Left := sSubstLabel.Left + sSubstLabel.Width + 3;
        Text := s + sName;
        AlphaSubStrValue.Add(Text);
        Alignment := taCenter;
      end;
    end;

    if ShowSub then
    begin
      sAlphaSelectLabel := TLabel.Create(nil);
      with sAlphaSelectLabel do
      begin
        Parent := sLabel;
        Name := 'sAlphaSelectLabel' + GB.Name + IntToStr(i);
        Width := 75;
        Caption := 'Подстановка: ';
        Top := sEdit.Top + 4;
        Left := sSubstEdit.Left + sSubstEdit.Width + 18;
      end;

      sAlphaSubStrValue := TComboBox.Create(nil);
      with sAlphaSubStrValue do
      begin
        Parent := sLabel;
        Name := 'sAlphaSubStrValue' + GB.Name + IntToStr(i);
        Top := sEdit.Top;
        Width := 200;
        Left := sAlphaSelectLabel.Left + sAlphaSelectLabel.Width + 3;
        Style := csDropDownList;
        Items.Add('Выберите...');
        for j := 0 to AlphaSubStrValue.Count - 1 do
          Items.Add(AlphaSubStrValue.Strings[j]);
        if Items.IndexOf(sEdit.Text) <> -1 then
          ItemIndex := Items.IndexOf(sEdit.Text)
        else
          ItemIndex := 0;
        OnSelect := @ClickAlphaSelectComboBox;
      end;
    end;
    end;
    Inc(i);
    end;
  until not sRE.ExecNext;
end;
sRE.Free;
RE.Free;
end;

function TXCTuner_Form1.LoadAlphaTabEx(FindExpr: string; GB: TScrollBox):string;
var
  RE, sRE: TRegExpr;
  sLabel: TGroupBox;
  sValueName, sAlphaName, sAlphaSelectLabel: TLabel;
  sValue, sAlphaValue: tEdit;
  sAlphaSubStrValue: TComboBox;
  fValueName, fValue, fAlphaValue: string;
  i, j: integer;
begin
alpha.Clear;
alpha.LoadFromFile(dir_xvm + alpha_name);
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
RE.Expression := FindExpr;
i := 0;

if RE.Exec(alpha.Text) then
begin
  sRE.Expression := '[ \/]"(.*?)":(.*?),(.*?)"(.*?)":(.*?)"(.*?)"(.*?)\n';
  if sRE.Exec(RE.Substitute('$1')) then
  repeat
    if sRE.Substitute('$0')[1] <> '/' then
    begin
    fValueName := sRE.Substitute('$1');
    fValue := Trim(sRE.Substitute('$2'));
    fAlphaValue := sRE.Substitute('$6');
    if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i))) <> nil then
    begin
      sLabel := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i)));
      sValue := TEdit(sLabel.FindChildControl('sEdit' + GB.Name + IntToStr(i)));
      sValue.Text := fValue;
      sAlphaValue := TEdit(sLabel.FindChildControl('sAlphaValue' + GB.Name + IntToStr(i)));
      sAlphaValue.Text := fAlphaValue;

      sAlphaSubStrValue := TComboBox(sLabel.FindChildControl('sAlphaSubStrValue' + GB.Name + IntToStr(i)));
      sAlphaSubStrValue.Items.Clear;
      sAlphaSubStrValue.Items.Add('Выберите...');
      for j := 0 to AlphaSubStrValue.Count - 1 do
        sAlphaSubStrValue.Items.Add(AlphaSubStrValue.Strings[j]);

      if sAlphaSubStrValue.Items.IndexOf(sAlphaValue.Text) <> -1 then
        sAlphaSubStrValue.ItemIndex := sAlphaSubStrValue.Items.IndexOf(sAlphaValue.Text)
      else
        sAlphaSubStrValue.ItemIndex := 0;
    end
    else
    begin
    sLabel := TGroupBox.Create(nil);
    with sLabel do
    begin
      Parent := GB;
      Hint := fValueName;
      Name := 'sGroupBox' + GB.Name + IntToStr(i);
      Width := 575;
      Height := 54;
      if TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))) = nil then
        Top := 0
      else
        Top := TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Top + TGroupBox(GB.FindChildControl('sGroupBox' + GB.Name + IntToStr(i - 1))).Height + 3;
      Left := 10;
      Caption := '';
    end;

    sValueName := TLabel.Create(nil);
    with sValueName do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sValueName' + GB.Name + IntToStr(i);
      Top := 6;
      Left := 6;
      Caption := 'Значение: ';
      Width := 55;
    end;

    sValue := TEdit.Create(nil);
    with sValue do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Alignment := taCenter;
      Name := 'sEdit' + GB.Name + IntToStr(i);
      Top := 3;
      Width := 50;
      Left := sValueName.Left + sValueName.Width + 3;
      Text := fValue;
    end;

    sAlphaName := TLabel.Create(nil);
    with sAlphaName do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Name := 'sAlphaName' + GB.Name + IntToStr(i);
      Top := 6;
      Width := 85;
      Left := sValue.Left + sValue.Width + 6;
      Caption := 'Прозрачность: ';
    end;

    sAlphaValue := TEdit.Create(nil);
    with sAlphaValue do
    begin
      Parent := sLabel;
      Hint := fValueName;
      Alignment := taCenter;
      Name := 'sAlphaValue' + GB.Name + IntToStr(i);
      Top := sValue.Top;
      Width := 150;
      Left := sAlphaName.Left + sAlphaName.Width + 3;
      Text := fAlphaValue
    end;

    sAlphaSelectLabel := TLabel.Create(nil);
    with sAlphaSelectLabel do
    begin
      Parent := sLabel;
      Name := 'sAlphaSelectLabel' + GB.Name + IntToStr(i);
      Width := 75;
      Caption := 'Подстановка: ';
      Top := -6;
      Left := sAlphaValue.Left + sAlphaValue.Width + 6;
    end;

    sAlphaSubStrValue := TComboBox.Create(nil);
    with sAlphaSubStrValue do
    begin
      Parent := sLabel;
      Name := 'sAlphaSubStrValue' + GB.Name + IntToStr(i);
      Top := sAlphaSelectLabel.Top + sAlphaSelectLabel.Height - 3;
      Width := 160;
      Left := sAlphaSelectLabel.Left;
      Style := csDropDownList;
      DropDownCount := 15;
      Items.Add('Выберите...');
      for j := 0 to AlphaSubStrValue.Count - 1 do
        Items.Add(AlphaSubStrValue.Strings[j]);
      if Items.IndexOf(sAlphaValue.Text) <> -1 then
        ItemIndex := Items.IndexOf(sAlphaValue.Text)
      else
        ItemIndex := 0;
      OnSelect := @ClickAlphaSelectComboBox;
    end;
    end;
    Inc(i);
    end;
  until not sRE.ExecNext;
end;
sRE.Free;
RE.Free;
end;

// Открытие вкладки "Общие"
procedure TXCTuner_Form1.BitBtn1Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn1, 0);
end;

// Открытие вкладки "Прочее"
procedure TXCTuner_Form1.BitBtn10Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn10, 3);
end;

procedure TXCTuner_Form1.BitBtn11Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn11, 4);
end;

procedure TXCTuner_Form1.BitBtn12Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn12, 5);
end;

procedure TXCTuner_Form1.BitBtn13Click(Sender: TObject);
begin
UpdateBitBtnStatus(BitBtn13, 6);
end;

procedure TXCTuner_Form1.BitBtn14Click(Sender: TObject);
begin
UpdateBitBtnStatus(BitBtn14, 7);
end;

procedure TXCTuner_Form1.BitBtn15Click(Sender: TObject);
begin
UpdateBitBtnStatus(BitBtn15, 8);
end;

procedure TXCTuner_Form1.BitBtn16Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn16, 9);
end;

procedure TXCTuner_Form1.BitBtn17Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn17, 10);
end;

procedure TXCTuner_Form1.BitBtnColor10Click(Sender: TObject);
begin
  ColorSelect := 10;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitBtnColor11Click(Sender: TObject);
begin
  ColorSelect := 11;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitBtnColor6Click(Sender: TObject);
begin
  ColorSelect := 6;
  ColorSelectMy.ShowModal;
end;

// Открытие вкладки "Логин"
procedure TXCTuner_Form1.BitBtn2Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn2, 1);
end;

// Открытие вкладки "Ангар"
procedure TXCTuner_Form1.BitBtn3Click(Sender: TObject);
begin
  UpdateBitBtnStatus(BitBtn3, 2);
end;

// Скрытие или открытие навигационной панели слева
procedure TXCTuner_Form1.BitBtn4Click(Sender: TObject);
begin
  if (Panel1.Visible=true) then
    begin
      Panel1.Visible := false;
      BitBtn4.Caption := '>';
      XCTuner_Form1.Width := 770;
      BitBtn4.Hint := 'Развернуть панель';
    end else
    begin
      Panel1.Visible := true;
      BitBtn4.Caption := '<';
      XCTuner_Form1.Width := 940;
      BitBtn4.Hint := 'Свернуть панель';
    end;
end;

// Кнопка выбора цвета 1 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn5Click(Sender: TObject);
begin
  ColorSelect := 1;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 2 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn6Click(Sender: TObject);
begin
  ColorSelect := 2;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 3 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn7Click(Sender: TObject);
begin
  ColorSelect := 3;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 4 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn8Click(Sender: TObject);
begin
  ColorSelect := 4;
  ColorSelectMy.ShowModal;
end;

// Кнопка выбора цвета 5 / Передача параметра типа Integer
procedure TXCTuner_Form1.BitBtn9Click(Sender: TObject);
begin
  ColorSelect := 5;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitBtnColor7Click(Sender: TObject);
begin
  ColorSelect := 7;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitBtnColor8Click(Sender: TObject);
begin
  ColorSelect := 8;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitBtnColor9Click(Sender: TObject);
begin
  ColorSelect := 9;
  ColorSelectMy.ShowModal;
end;

procedure TXCTuner_Form1.BitRefresh10Click(Sender: TObject);
begin
  turret_loading();
end;

procedure TXCTuner_Form1.BitRefresh11Click(Sender: TObject);
begin
  bt_result_loading();
end;

procedure TXCTuner_Form1.BitRefresh12Click(Sender: TObject);
begin
 pl_panel_loading();
end;

procedure TXCTuner_Form1.BitRefresh13Click(Sender: TObject);
begin
  battload_loading();
end;

procedure TXCTuner_Form1.BitRefresh14Click(Sender: TObject);
begin
  tab_loading();
end;

procedure TXCTuner_Form1.BitRefresh15Click(Sender: TObject);
begin
  map_loading();
end;

procedure TXCTuner_Form1.BitRefresh16Click(Sender: TObject);
begin
  circlemap_loading();
end;

procedure TXCTuner_Form1.BitRefresh17Click(Sender: TObject);
begin
 color_loading();
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

procedure TXCTuner_Form1.BitRefresh39Click(Sender: TObject);
begin
 alpha_loading();
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
  turret_loading();
end;

procedure TXCTuner_Form1.BitSave11Click(Sender: TObject);
begin
  bt_result_save();
  bt_result_loading();
end;

procedure TXCTuner_Form1.BitSave12Click(Sender: TObject);
begin
 pl_panel_save();
 pl_panel_loading();
end;

procedure TXCTuner_Form1.BitSave13Click(Sender: TObject);
begin
  battload_save();
  battload_loading();
end;

procedure TXCTuner_Form1.BitSave14Click(Sender: TObject);
begin
  tab_save();
  tab_loading();
end;

procedure TXCTuner_Form1.BitSave15Click(Sender: TObject);
begin
  map_save();
  map_loading();
end;

procedure TXCTuner_Form1.BitSave16Click(Sender: TObject);
begin
  circlemap_save();
  circlemap_loading();
end;

function SaveAlpha(SB: TScrollBox):string;
var
  i, j, l, k: integer;
  GB: TGroupBox;
  RE: TRegExpr;
  Edt: TSpinEdit;
  t: string;
  st: TStringList;
begin
RE := TRegExpr.Create;
st := TStringList.Create;
for i := 0 to SB.ControlCount - 1 do
begin
  if SB.Controls[i] is TGroupBox then
  begin
    GB := TGroupBox(SB.Controls[i]);
    for j := 0 to GB.ControlCount - 1 do
    begin
      if GB.Controls[j] is TSpinEdit then
      if Pos('sAlphaValue', GB.Controls[j].Name) > 0 then
      begin
        Edt := TSpinEdit(GB.Controls[j]);
        RE.Expression := '"' + Edt.Hint + '"(.*?)[\r\n]';
        if RE.Exec(alpha.Text) then
        begin
          t := IntToStr(Edt.Value);
          if TryStrToInt(t, k) then
             t := XCTuner_Form1.RecStartEnd(t)
          else
             t := '${"' + t + '"}';
          l := XCTuner_Form1.Search_Line(0, '"' + Edt.Hint + '"', alpha);
          alpha.Strings[l] := XCTuner_Form1.Smart_Replacing(Edt.Hint, alpha.Strings[l], t);
        end;
      end;
    end;
  end;
end;
alpha.SaveToFile(dir_xvm+alpha_name);
st.Free;
RE.Free;
end;

function SaveAlphaEx(sExpr: string; SB: TScrollBox):string;
var
  i, j, l, k, f: integer;
  GB: TGroupBox;
  RE, sRE: TRegExpr;
  s, t: string;
  st: TStringList;
begin
RE := TRegExpr.Create;
sRE := TRegExpr.Create;
st := TStringList.Create;
RE.Expression := sExpr + ']';
l := XCTuner_Form1.Search_Line(0, sExpr, alpha);
k := 1;
for i := 0 to SB.ControlCount - 1 do
begin
  if SB.Controls[i] is TGroupBox then
  begin
    GB := TGroupBox(SB.Controls[i]);
    for j := 0 to GB.ControlCount - 1 do
    begin
      if GB.Controls[j] is TEdit then
      begin
        if pos('sEdit', TEdit(GB.Controls[j]).Name) > 0 then
           s := TEdit(GB.Controls[j]).TExt;
        if pos('sAlphaValue', TEdit(GB.Controls[j]).Name) > 0 then
           t := TEdit(GB.Controls[j]).Text;
        if (s <> '') and (t <> '') then
        begin
          if TryStrToInt(t, f) then
             t := XCTuner_Form1.RecStartEnd(t)
          else
             t := '${"' + t + '"}';
        alpha.Strings[l + k] := XCTuner_Form1.Smart_Replacing('value', alpha.Strings[l + k], s);
        alpha.Strings[l + k] := XCTuner_Form1.Smart_Replacing('alpha', alpha.Strings[l + k], t);
        s := '';
        t := '';
        Inc(k) ;
        end;
      end;
    end;
  end;
end;
alpha.SaveToFile(dir_xvm+alpha_name);
st.Free;
sRE.Free;
RE.Free;
end;

procedure TXCTuner_Form1.color_save;
begin
SaveColors(ScrollBox1);
SaveColors(ScrollBox2);
SaveColors(ScrollBox3);
SaveColors(ScrollBox4);
SaveColors(ScrollBox5);
SaveColors(ScrollBox6);
SaveColors(ScrollBox7);
SaveColors(ScrollBox8);
SaveColors(ScrollBox9);
SaveColors(ScrollBox10);
SaveColors(ScrollBox11);
SaveColors(ScrollBox12);
SaveColors(ScrollBox13);
SaveColors(ScrollBox14);
SaveColors(ScrollBox15);
SaveColors(ScrollBox16);
SaveColors(ScrollBox17);
SaveColors(ScrollBox18);
SaveColors(ScrollBox19);
SaveColors(ScrollBox20);
SaveColors(ScrollBox21);
SaveColors(ScrollBox22);

SaveColorsEx('"hp": [', ScrollBox8);
SaveColorsEx('"hp_ratio": [', ScrollBox9);
SaveColorsEx('"x": [', ScrollBox10);
SaveColorsEx('"eff": [', ScrollBox11);
SaveColorsEx('"wn6": [', ScrollBox12);
SaveColorsEx('"wn8": [', ScrollBox13);
SaveColorsEx('"e": [', ScrollBox14);
SaveColorsEx('"rating": [', ScrollBox15);
SaveColorsEx('"kb": [', ScrollBox16);
SaveColorsEx('"avglvl": [', ScrollBox17);
SaveColorsEx('"t_battles": [', ScrollBox18);
SaveColorsEx('"tdb": [', ScrollBox19);
SaveColorsEx('"tdv": [', ScrollBox20);
SaveColorsEx('"tfb": [', ScrollBox21);
SaveColorsEx('"tsb": [', ScrollBox22);
end;

procedure TXCTuner_Form1.BitSave17Click(Sender: TObject);
begin
  color_save();
  color_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "rating.xc"
procedure TXCTuner_Form1.BitSave1Click(Sender: TObject);
begin
  rating_save();
  rating_loading();
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "battle.xc"
procedure TXCTuner_Form1.BitSave2Click(Sender: TObject);
begin
  battle_save();
  fragCorrelation_save();
  expanel_save();
  battle_loading();
  fragCorrelation_loading();
  expanel_loading();
end;

procedure TXCTuner_Form1.BitSave39Click(Sender: TObject);
begin
  SaveAlpha(ScrollBox23);
  SaveAlpha(ScrollBox24);
  SaveAlphaEx('"hp": [', ScrollBox27);
  SaveAlphaEx('"hp_ratio": [', ScrollBox28);
  SaveAlphaEx('"x": [', ScrollBox29);
  SaveAlphaEx('"eff": [', ScrollBox30);
  SaveAlphaEx('"wn6": [', ScrollBox31);
  SaveAlphaEx('"wn8": [', ScrollBox32);
  SaveAlphaEx('"e": [', ScrollBox33);
  SaveAlphaEx('"rating": [', ScrollBox34);
  SaveAlphaEx('"kb": [', ScrollBox35);
  SaveAlphaEx('"avglvl": [', ScrollBox36);
  SaveAlphaEx('"t_battles": [', ScrollBox37);
  SaveAlphaEx('"tdb": [', ScrollBox38);
  SaveAlphaEx('"tdv": [', ScrollBox39);
  SaveAlphaEx('"tfb": [', ScrollBox40);
  SaveAlphaEx('"tsb": [', ScrollBox41);
end;

// По кнопке происходит вызов процедуры сохранения данных в файла "login.xc"
procedure TXCTuner_Form1.BitSave3Click(Sender: TObject);
begin
  login_save();
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
  userinfo_loading();
end;

procedure TXCTuner_Form1.BitSave6Click(Sender: TObject);
begin
  iconset_save();
  iconset_loading();
end;

procedure TXCTuner_Form1.BitSave7Click(Sender: TObject);
begin
  hotkeys_save();
  hotkeys_loading();
end;

procedure TXCTuner_Form1.BitSave8Click(Sender: TObject);
begin
  squad_save();
  squad_loading();
end;

procedure TXCTuner_Form1.BitSave9Click(Sender: TObject);
begin
  texts_save();
  texts.SaveToFile(dir_xvm + texts_name);
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
  Edit1.Text := ComboBox1.Text;
end;

procedure TXCTuner_Form1.ComboBox5Change(Sender: TObject);
begin
  case ComboBox5.ItemIndex of
    0: Edit16.Text := Edit16.Text + '{{level}}';
    1: Edit16.Text := Edit16.Text + '{{rlevel}}';
    2: Edit16.Text := Edit16.Text + '{{vtype}}';
    3: Edit16.Text := Edit16.Text + '{{vtype-l}}';
    4: Edit16.Text := Edit16.Text + '{{battletier-min}}';
    5: Edit16.Text := Edit16.Text + '{{battletier-max}}';
  end;
  ComboBox5.ItemIndex := -1;
end;

// события при изменение Edit2 при выходе из поля
procedure TXCTuner_Form1.Edit2Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit2.Text);
  ChangeEditText := Edit2.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview5.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit2.Text:=hangar_s26;
       temp_str:=hangar_s26;
       Delete(temp_str, 1, 1);
       mbColorPreview5.Color:=HexToTColor(temp_str);
    end;
end;

// события при изменение Edit3 при выходе из поля
procedure TXCTuner_Form1.Edit3Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit3.Text);
  ChangeEditText := Edit3.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview1.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit3.Text:=hangar_s18;
       temp_str:=hangar_s18;
       Delete(temp_str, 1, 1);
       mbColorPreview1.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit48Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit48.Text);
  ChangeEditText := Edit48.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview6.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit48.Text:=map_s12;
       temp_str:=map_s12;
       Delete(temp_str, 1, 1);
       mbColorPreview6.Color:=HexToTColor(temp_str);
    end;
end;

// события при изменение Edit4 при выходе из поля
procedure TXCTuner_Form1.Edit4Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit4.Text);
  ChangeEditText := Edit4.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview2.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit4.Text:=hangar_s19;
       temp_str:=hangar_s19;
       Delete(temp_str, 1, 1);
       mbColorPreview2.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit53Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit53.Text);
  ChangeEditText := Edit53.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview7.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit53.Text:=circle_s6;
       temp_str:=circle_s6;
       Delete(temp_str, 1, 1);
       mbColorPreview7.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit54Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit54.Text);
  ChangeEditText := Edit54.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview8.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit54.Text:=circle_s11;
       temp_str:=circle_s11;
       Delete(temp_str, 1, 1);
       mbColorPreview8.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit55Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit55.Text);
  ChangeEditText := Edit55.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview9.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit55.Text:=circle_s15;
       temp_str:=circle_s15;
       Delete(temp_str, 1, 1);
       mbColorPreview9.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit56Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit56.Text);
  ChangeEditText := Edit56.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview10.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit56.Text:=circle_s19;
       temp_str:=circle_s19;
       Delete(temp_str, 1, 1);
       mbColorPreview10.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.Edit57Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit57.Text);
  ChangeEditText := Edit57.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview11.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit57.Text:=circle_s23;
       temp_str:=circle_s23;
       Delete(temp_str, 1, 1);
       mbColorPreview11.Color:=HexToTColor(temp_str);
    end;
end;

// события при изменение Edit5 при выходе из поля
procedure TXCTuner_Form1.Edit5Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit5.Text);
  ChangeEditText := Edit5.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview3.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit5.Text:=hangar_s20;
       temp_str:=hangar_s20;
       Delete(temp_str, 1, 1);
       mbColorPreview3.Color:=HexToTColor(temp_str);
    end;
end;

// события при изменение Edit6 при выходе из поля
procedure TXCTuner_Form1.Edit6Exit(Sender: TObject);
begin
  ChangeEdit := Length(Edit6.Text);
  ChangeEditText := Edit6.Text;
  if ChangeEdit = 7 then
    begin
      Delete(ChangeEditText, 1, 1);
      mbColorPreview4.Color := HexToTColor(ChangeEditText);
    end else
    begin
       ShowMessage(colorInf);
       Edit6.Text:=hangar_s21;
       temp_str:=hangar_s21;
       Delete(temp_str, 1, 1);
       mbColorPreview4.Color:=HexToTColor(temp_str);
    end;
end;

procedure TXCTuner_Form1.FloatSpinEdit1Change(Sender: TObject);
begin
  TrackBar35.Position:=StrToInt(FloatToStr(FloatSpinEdit1.Value*10));
  TrackBar35.SelEnd:=TrackBar35.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit2Change(Sender: TObject);
begin
  TrackBar37.Position:=StrToInt(FloatToStr(FloatSpinEdit2.Value*10));
  TrackBar37.SelEnd:=TrackBar37.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit3Change(Sender: TObject);
begin
  TrackBar40.Position:=StrToInt(FloatToStr(FloatSpinEdit3.Value*100));
  TrackBar40.SelEnd:=TrackBar40.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit4Change(Sender: TObject);
begin
  TrackBar43.Position:=StrToInt(FloatToStr(FloatSpinEdit4.Value*100));
  TrackBar43.SelEnd:=TrackBar43.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit5Change(Sender: TObject);
begin
  TrackBar45.Position:=StrToInt(FloatToStr(FloatSpinEdit5.Value*100));
  TrackBar45.SelEnd:=TrackBar45.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit6Change(Sender: TObject);
begin
  TrackBar47.Position:=StrToInt(FloatToStr(FloatSpinEdit6.Value*100));
  TrackBar47.SelEnd:=TrackBar47.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit7Change(Sender: TObject);
begin
  TrackBar49.Position:=StrToInt(FloatToStr(FloatSpinEdit7.Value*100));
  TrackBar49.SelEnd:=TrackBar49.Position;
end;

procedure TXCTuner_Form1.FloatSpinEdit8Change(Sender: TObject);
begin
  TrackBar51.Position:=StrToInt(FloatToStr(FloatSpinEdit8.Value*100));
  TrackBar51.SelEnd:=TrackBar51.Position;
end;

// События происходящие при создание приложения
procedure TXCTuner_Form1.FormCreate(Sender: TObject);
begin
  config := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'config.ini');
  lang_config := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Locale/Ru.lng');

  if ((not config.ValueExists('Main', 'XVM_dir')) or (config.ReadString('Main', 'XVM_dir', '') <> ''))
     and (not FileExists(UTF8ToSys(config.ReadString('Main', 'XVM_dir', '')) + '\xvm.xc')) then
  begin
     Application.CreateForm(TPromtForm, PromtForm);
     case PromtForm.ShowModal of
       mrOK: config.WriteString('Main', 'XVM_dir', PromtForm.Edit1.Text + '\');
       mrCANCEL: Application.Terminate;
     end;
     PromtForm.Free;
  end;
  // Проверяем присутствие файла @xvm.xc в указанной директории
  activ_conf();
  activ_config:=StringReplace(activ_config, '/', '\', [rfReplaceAll, rfIgnoreCase]);
  // заносим путь к директории конфига
  dir_xvm := UTF8ToSys(config.ReadString('Main', 'XVM_dir', '')) + activ_config;

  // Создаем объекты типа TStringlist
  xvm:=TStringList.Create;
  battle:=TStringList.Create;
  battload:=TStringList.Create;
  circle:=TStringList.Create;
  bt_result:=TStringList.Create;
  iconset:=TStringList.Create;
  login:=TStringList.Create;
  hangar:=TStringList.Create;
  hotkeys:=TStringList.Create;
  fragcorr:=TStringList.Create;
  map:=TStringList.Create;
  userInfo:=TStringList.Create;
  pl_panel:=TStringList.Create;
  rating:=TStringList.Create;
  tab:=TStringList.Create;
  texts:=TStringList.Create;
  squad:=TStringList.Create;
  turret:=TStringList.Create;
  expanel:=TStringList.Create;
  colors:=TStringList.Create;
  alpha:=TStringList.Create;

  ColorSubStrValue := TStringList.Create;
  ColorSubStrValue.Sorted := True;
  ColorSubStrValue.Duplicates := dupIgnore;

  AlphaSubStrValue := TStringList.Create;
  AlphaSubStrValue.Sorted := True;
  AlphaSubStrValue.Duplicates := dupIgnore;
  xvm.LoadFromFile(dir_xvm+xvm_file_name);


  // Узнаем ссылочные имена файлов из файла @xvm.xc и др.
  battle_name:=FindFilesXVM('"battle"', xvm);
  bt_result_name:=FindFilesXVM('"battleResults"', xvm);
  battload_name:=FindFilesXVM('"battleLoading"', xvm);
  iconset_name:=FindFilesXVM('"iconset"', xvm);
  login_name:=FindFilesXVM('"login"', xvm);
  hangar_name:=FindFilesXVM('"hangar"', xvm);
  hotkeys_name:=FindFilesXVM('"hotkeys"', xvm);
  frag_name:=FindFilesXVM('"fragCorrelation"', xvm);
  map_name:=FindFilesXVM('"minimap"', xvm);
  colors_name:=FindFilesXVM('"colors"', xvm);
  alpha_name:=FindFilesXVM('"alpha"', xvm);

  map.LoadFromFile(dir_xvm+map_name);
  colors.LoadFromFile(dir_xvm+colors_name);
  alpha.LoadFromFile(dir_xvm+alpha_name);

  circle_name:=FindFilesXVM('"circles"', map);

  userInfo_name:=FindFilesXVM('"userInfo"', xvm);
  pl_panel_name:=FindFilesXVM('"playersPanel"', xvm);
  rating_name:=FindFilesXVM('"rating"', xvm);
  tab_name:=FindFilesXVM('"statisticForm"', xvm);;
  texts_name:=FindFilesXVM('"texts"', xvm);
  turret_name:=FindFilesXVM('"turretMarkers"', xvm);
  squad_name:=FindFilesXVM('"squad"', xvm);
  expanel_name:=FindFilesXVM('"expertPanel"', xvm);

  if ((FileExists(dir_xvm+xvm_file_name  )) and
      (FileExists(dir_xvm+battle_name    )) and
      (FileExists(dir_xvm+circle_name    )) and
      (FileExists(dir_xvm+bt_result_name )) and
      (FileExists(dir_xvm+battload_name  )) and
      (FileExists(dir_xvm+iconset_name   )) and
      (FileExists(dir_xvm+login_name     )) and
      (FileExists(dir_xvm+hangar_name    )) and
      (FileExists(dir_xvm+hotkeys_name   )) and
      (FileExists(dir_xvm+frag_name      )) and
      (FileExists(dir_xvm+map_name       )) and
      (FileExists(dir_xvm+userInfo_name  )) and
      (FileExists(dir_xvm+pl_panel_name  )) and
      (FileExists(dir_xvm+squad_name     )) and
      (FileExists(dir_xvm+tab_name       )) and
      (FileExists(dir_xvm+texts_name     )) and
      (FileExists(dir_xvm+turret_name    )) and
      (FileExists(dir_xvm+expanel_name   )) and
      (FileExists(dir_xvm+colors_name   )) and
      (FileExists(dir_xvm+alpha_name   )) and
      (FileExists(dir_xvm+rating_name   ))) then
    begin
      // вывод версии файла в заголовок
      XCTuner_Form1.Caption:=XCTuner_Form1.Caption + '   Версия - ' + '0.2.4.86';
      XCTuner_Form1.Height:=520;
      XCTuner_Form1.Width:=940;
      PageControl1.Top := PageControl1.Top - 25;
      PageControl1.Width := XCTuner_Form1.Width - 186;
      PageControl1.Height := XCTuner_Form1.Height + 25;
      BitBtn1.Click;

      ComboBox1.Items:=Screen.Fonts;            // загружает в ComboBox все шрифты что есть в windows
      ComboBox1.Items.Insert(0, '$FieldFont');  // загружает в ComboBox имя деф. шрифта XVM
      ComboBox1.Items.Insert(1, '$TextFont');   // загружает в ComboBox имя деф. шрифта клиента танков

      xvm_loading();
      battle_loading();
      circlemap_loading();
      bt_result_loading();
      battload_loading();
      iconset_loading();
      login_loading();
      hangar_loading();
      hotkeys_loading();
      fragCorrelation_loading();
      map_loading();
      pl_panel_loading();
      userinfo_loading();
      rating_loading();
      squad_loading();
      tab_loading();
      texts_loading();
      turret_loading();
      expanel_loading();
      color_loading();
      alpha_loading();

      BitBtn1.Hint:='Настройка в файлах: ' + xvm_file_name + ', ' + battle_name + ' и ' + rating_name;
      BitBtn2.Hint:='Настройка в файле: ' + login_name;
      BitBtn3.Hint:='Настройка в файлах: ' + hangar_name+', '+userInfo_name + ' и ' + squad_name;
      BitBtn10.Hint:='Настройка в файлах: '+iconset_name+', '+hotkeys_name+', '+texts_name+' и '+turret_name;
      BitBtn11.Hint:='Настройка в файле: ' + bt_result_name;
      BitBtn12.Hint:='Настройка в файле: ' + pl_panel_name;
      BitBtn13.Hint:='Настройка в файле: ' + battload_name;
      BitBtn14.Hint:='Настройка в файле: ' + tab_name;
      BitBtn15.Hint:='Настройка в файлах: ' + map_name + ' и ' + circle_name;
      BitBtn16.Hint:='Настройка в файле: ' + colors_name;
      BitBtn17.Hint:='Настройка в файле: ' + alpha_name;
  end
  else
    begin
      // выводим сообщение, очищаем переменную xvm и принудительно закрываем программу
      ShowMessage('Файлы конфига не найдены или отсутствует запись в файле @xvm.xc! Поместите программу в папку configs и проверте правильность пути к конфигу! Программа закроется!');
      Application.Terminate;
    end;
end;

// При уничтожении формы очищаем переменную xvm
procedure TXCTuner_Form1.FormDestroy(Sender: TObject);
begin
  xvm.Free;
  xvm_base.Free;
  battle.Free;
  circle.Free;
  bt_result.Free;
  battload.Free;
  iconset.Free;
  login.Free;
  hangar.Free;
  hotkeys.Free;
  fragcorr.Free;
  map.Free;
  userInfo.Free;
  pl_panel.Free;
  rating.Free;
  squad.Free;
  tab.Free;
  texts.Free;
  turret.Free;
  expanel.Free;
  colors.Free;
  alpha.Free;

  AlphaSubStrValue.Free;
  ColorSubStrValue.Free;
  lang_config.Free;
  config.Free;
end;

procedure TXCTuner_Form1.Image100Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl26_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image101Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl27_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image102Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl28_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image103Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl29_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image104Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl30_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image105Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl31_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image106Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl32_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image107Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl33_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image108Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl34_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image109Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_2_SL+1)+litf+battload_name+path
  +activ_config+#13#10+enopt+'"showChances": true'+#13#10+disopt+'"showChances": false');
end;

procedure TXCTuner_Form1.Image10Click(Sender: TObject);
begin
  ShowMessage(tpis+expanel_name+path
  +activ_config+#13#10+'Задержка исчезновения панели -   "delay" '+IntToStr(exp1_SL+1)+' строка'+#13#10
  +'Увеличение панели -   "scale" '+IntToStr(exp2_SL+1)+' строка');
end;

procedure TXCTuner_Form1.Image110Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_3_SL+1)+litf+battload_name+path
  +activ_config+#13#10+enopt+'"showBattleTier": true'+#13#10+disopt+'"showBattleTier": false');
end;

procedure TXCTuner_Form1.Image111Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_4_SL+1)+litf+battload_name+path
  +activ_config+#13#10+enopt+'"removeSquadIcon": false'+#13#10+disopt+'"removeSquadIcon": true');
end;

procedure TXCTuner_Form1.Image112Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_1_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image113Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_5_SL+1)+litf+battload_name+path
  +activ_config+#13#10+enopt+'"show": true'+#13#10+disopt+'"show": false');
end;

procedure TXCTuner_Form1.Image114Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_6_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image115Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_7_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image116Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_8_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image117Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_9_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image118Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_10_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image119Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_11_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image11Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs4_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"highlightVehicleIcon": true'+#13#10+disopt+'"highlightVehicleIcon": false');
end;

procedure TXCTuner_Form1.Image120Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_12_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image121Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_3_SL+1)+litf+tab_name+path
  +activ_config+#13#10+enopt+'"showBattleTier": true'+#13#10+disopt+'"showBattleTier": false');
end;

procedure TXCTuner_Form1.Image122Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_13_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image123Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_14_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image124Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_15_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image125Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(BL_16_SL+1)+litf+battload_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image126Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_1_SL+1)+litf+tab_name+path
  +activ_config+#13#10+enopt+'"showChances": true'+#13#10+disopt+'"showChances": false');
end;

procedure TXCTuner_Form1.Image127Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_2_SL+1)+litf+tab_name+path
  +activ_config+#13#10+enopt+'"showChancesLive": true'+#13#10+disopt+'"showChancesLive": false');
end;

procedure TXCTuner_Form1.Image128Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_4_SL+1)+litf+tab_name+path
  +activ_config+#13#10+enopt+'"removeSquadIcon": false'+#13#10+disopt+'"removeSquadIcon": true');
end;

procedure TXCTuner_Form1.Image129Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_5_SL+1)+litf+tab_name+path
  +activ_config+#13#10+enopt+'"show": true'+#13#10+disopt+'"show": false');
end;

procedure TXCTuner_Form1.Image130Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_6_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image131Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_7_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image132Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_8_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image133Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_9_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image134Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_10_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image135Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_11_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image136Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_12_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image137Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_13_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image138Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_14_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image139Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_15_SL+1)+litf+tab_name+path
  +activ_config);
end;

// Процедура вывода на несуществующий параметр
procedure TXCTuner_Form1.error_line(Search, temp_name: String);
begin
  ShowMessage('Строка с параметром '+Search+' не найдена в файле '+temp_name+path+activ_config+#10#13+'Исправьте! Программа закроется!');
  Application.Terminate;
end;

// Замена знака '.' на ',' в четырехзн. числе
function TXCTuner_Form1.currect_float_for4(str: String): String;
begin
  if Length(str)>4 then
    begin
      Delete(str, 5, Length(str));
      str[2]:=',';
      Result:=str;
    end;
  if Length(str)=1 then
    Result:=str+',0' else
  str[2]:=',';
  Result:=str;

end;

procedure TXCTuner_Form1.Image13Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(fr1_SL+1)+litf+frag_name+path
  +activ_config+#13#10+enopt+'"hideTeamTextFields": false'+#13#10+disopt+'"hideTeamTextFields": true');
end;

procedure TXCTuner_Form1.Image140Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(tab_16_SL+1)+litf+tab_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image141Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_1_SL+1)+litf+map_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image142Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_2_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image143Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_3_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image144Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_4_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image145Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_5_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image146Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_6_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image147Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_7_SL+1)+litf+map_name+path
  +activ_config+#13#10+enopt+'"centered": true'+#13#10+disopt+'"centered": false');
end;

procedure TXCTuner_Form1.Image148Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_8_SL+1)+litf+map_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image149Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_9_SL+1)+litf+map_name+path
  +activ_config+#13#10+enopt+'"artilleryEnabled": true'+#13#10+disopt+'"artilleryEnabled": false');
end;

procedure TXCTuner_Form1.Image14Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log1_SL+1)+litf+login_name+path
  +activ_config+#13#10+switchon+'"skipIntro": true'+#13#10+switchoff+'"skipIntro": false');
end;

procedure TXCTuner_Form1.Image150Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_10_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image151Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_11_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image152Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(MP_12_SL+1)+litf+map_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image153Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_1_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image154Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_2_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image155Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_3_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image156Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_4_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image157Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_5_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image158Click(Sender: TObject);
begin
   ShowMessage(tpi+IntToStr(CIR_6_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image159Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_8_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image15Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log2_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"autologin": true'+#13#10+disopt+'"autologin": false');
end;

procedure TXCTuner_Form1.Image160Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_9_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image161Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_10_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image162Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_11_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image163Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_7_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image164Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl41_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image165Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_13_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image166Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_14_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image167Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_15_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image168Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_12_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image169Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_17_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image16Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log7_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"saveLastServer": true'+#13#10+disopt+'"saveLastServer": false');
end;

procedure TXCTuner_Form1.Image170Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_18_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image171Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_19_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image172Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_16_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image173Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_21_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image174Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_22_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image175Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_23_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image176Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_20_SL+1)+litf+circle_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image177Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_27_SL+1)+litf+circle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image178Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(CIR_28_SL+1)+litf+circle_name+path
  +activ_config+#13#10+'Доступные значения дистанции : '+ #13#10 +
  '"blindarea" - реальная граница слепой зоны танка (50<=X<=445)'#13#10 +
  '"dynamic"   - реальная дальность обзора танка c учётом стоит/движется'#13#10 +
  '"standing"  - реальная дальность обзора танка стоя'#13#10 +
  '"motion"    - реальная дальность обзора танка в движении');
end;

procedure TXCTuner_Form1.Image17Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(log4_SL+1)+litf+login_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false'
  +#13#10+'Положение поля по осям настраиваются:'+#13#10+'X - '+IntToStr(log5_SL+1)+' строка'
  +#13#10+'Y - '+IntToStr(log6_SL+1)+' строка');
end;

procedure TXCTuner_Form1.Image180Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl39_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image181Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl40_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image186Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl35_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
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

procedure TXCTuner_Form1.Image65Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs7_SL+1)+litf+battle_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image66Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(hgar32_SL+1)+litf+hangar_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image67Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res2_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+enopt+'"showNetIncome": true'+#13#10+disopt+'"showNetIncome": false');
end;

procedure TXCTuner_Form1.Image68Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res1_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+range+'1 - 3');
end;

procedure TXCTuner_Form1.Image6Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(rat5_SL+1)+litf+rating_name+path
  +activ_config+#13#10+enopt+'"enableStatisticsLog": true'+#13#10+disopt+'"enableStatisticsLog": false');
end;

procedure TXCTuner_Form1.Image70Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res3_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+enopt+'"showExtendedInfo": true'+#13#10+disopt+'"showExtendedInfo": false');
end;

procedure TXCTuner_Form1.Image71Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res4_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+enopt+'"showTotals": true'+#13#10+disopt+'"showTotals": false');
end;

procedure TXCTuner_Form1.Image72Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res5_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+enopt+'"showChances": true'+#13#10+disopt+'"showChances": false');
end;

procedure TXCTuner_Form1.Image73Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bt_res6_SL+1)+litf+bt_result_name+path
  +activ_config+#13#10+enopt+'"showBattleTier": true'+#13#10+disopt+'"showBattleTier": false');
end;

procedure TXCTuner_Form1.Image74Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl3_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+enopt+'"removeSquadIcon": false'+#13#10+disopt+'"removeSquadIcon": true');
end;

procedure TXCTuner_Form1.Image75Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl4_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+enopt+'"removePanelsModeSwitcher": false'+#13#10+disopt+'"removePanelsModeSwitcher": true');
end;

procedure TXCTuner_Form1.Image76Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl5_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+enopt+'"show": true'+#13#10+disopt+'"show": false');
end;

procedure TXCTuner_Form1.Image77Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl1_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+'0 - прозрачные, 100 - не прозрачные');
end;

procedure TXCTuner_Form1.Image78Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl2_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+'0 - прозрачные, 100 - не прозрачные');
end;

procedure TXCTuner_Form1.Image79Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl6_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image7Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs1_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"mirroredVehicleIcons": true'+#13#10+disopt+'"mirroredVehicleIcons": false'
  +#13#10+'Если вы используете стандартные иконки, то лучше включить зеркалирование иконок. Для альтернативных иконок наоборот - выключить зеркалирование!');
end;

procedure TXCTuner_Form1.Image80Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl7_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image81Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl8_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image82Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl9_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image83Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl10_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image84Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl11_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image85Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl12_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+'0 - прозрачные, 100 - не прозрачные');
end;

procedure TXCTuner_Form1.Image86Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs8_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"allowHpInPanelsAndMinimap": true'+#13#10+disopt+'"allowHpInPanelsAndMinimap": false'
  +#13#10+'ВНИМАНИЕ: может понизить производительность');
end;

procedure TXCTuner_Form1.Image87Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl13_SL+1)+litf+pl_panel_name+path
  +activ_config+#13#10+enopt+'"enabled": true'+#13#10+disopt+'"enabled": false');
end;

procedure TXCTuner_Form1.Image88Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl14_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image89Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl15_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image8Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(bs2_SL+1)+litf+battle_name+path
  +activ_config+#13#10+enopt+'"showPostmortemTips": true'+#13#10+disopt+'"showPostmortemTips": false');
end;

procedure TXCTuner_Form1.Image90Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl16_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image91Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl17_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image92Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl18_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image93Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl19_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image94Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl20_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image95Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl21_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image96Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl22_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image97Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl23_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image98Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl24_SL+1)+litf+pl_panel_name+path
  +activ_config);
end;

procedure TXCTuner_Form1.Image99Click(Sender: TObject);
begin
  ShowMessage(tpi+IntToStr(pl25_SL+1)+litf+pl_panel_name+path
  +activ_config);
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


procedure TXCTuner_Form1.SpinEdit10Change(Sender: TObject);
begin
  TrackBar1.Position:=SpinEdit10.Value;
  TrackBar1.SelEnd:=SpinEdit10.Value;
end;

procedure TXCTuner_Form1.SpinEdit20Change(Sender: TObject);
begin
  TrackBar4.Position:=SpinEdit20.Value;
  TrackBar4.SelEnd:=SpinEdit20.Value;
end;

procedure TXCTuner_Form1.SpinEdit21Change(Sender: TObject);
begin
  TrackBar5.Position:=SpinEdit21.Value;
  TrackBar5.SelEnd:=SpinEdit21.Value;
end;

procedure TXCTuner_Form1.SpinEdit22Change(Sender: TObject);
begin
  TrackBar6.Position:=SpinEdit22.Value;
  TrackBar6.SelEnd:=SpinEdit22.Value;
end;

procedure TXCTuner_Form1.SpinEdit23Change(Sender: TObject);
begin
  TrackBar7.Position:=SpinEdit23.Value;
  TrackBar7.SelEnd:=SpinEdit23.Value;
end;

procedure TXCTuner_Form1.SpinEdit24Change(Sender: TObject);
begin
  TrackBar8.Position:=SpinEdit24.Value;
  TrackBar8.SelEnd:=SpinEdit24.Value;
end;

procedure TXCTuner_Form1.SpinEdit25Change(Sender: TObject);
begin
  TrackBar9.Position:=SpinEdit25.Value;
  TrackBar9.SelEnd:=SpinEdit25.Value;
end;

procedure TXCTuner_Form1.SpinEdit26Change(Sender: TObject);
begin
  TrackBar10.Position:=SpinEdit26.Value;
  TrackBar10.SelEnd:=SpinEdit26.Value;
end;

procedure TXCTuner_Form1.SpinEdit27Change(Sender: TObject);
begin
  TrackBar11.Position:=SpinEdit27.Value;
  TrackBar11.SelEnd:=SpinEdit27.Value;
end;

procedure TXCTuner_Form1.SpinEdit28Change(Sender: TObject);
begin
  TrackBar12.Position:=SpinEdit28.Value;
  TrackBar12.SelEnd:=SpinEdit28.Value;
end;

procedure TXCTuner_Form1.SpinEdit29Change(Sender: TObject);
begin
  TrackBar13.Position:=SpinEdit29.Value;
  TrackBar13.SelEnd:=SpinEdit29.Value;
end;

procedure TXCTuner_Form1.SpinEdit30Change(Sender: TObject);
begin
  TrackBar14.Position:=SpinEdit30.Value;
  TrackBar14.SelEnd:=SpinEdit30.Value;
end;

procedure TXCTuner_Form1.SpinEdit31Change(Sender: TObject);
begin
  TrackBar15.Position:=SpinEdit31.Value;
  TrackBar15.SelEnd:=SpinEdit31.Value;
end;

procedure TXCTuner_Form1.SpinEdit32Change(Sender: TObject);
begin
  TrackBar16.Position:=SpinEdit32.Value;
  TrackBar16.SelEnd:=SpinEdit32.Value;
end;

procedure TXCTuner_Form1.SpinEdit33Change(Sender: TObject);
begin
  TrackBar17.Position:=SpinEdit33.Value;
  TrackBar17.SelEnd:=SpinEdit33.Value;
end;

procedure TXCTuner_Form1.SpinEdit34Change(Sender: TObject);
begin
  TrackBar18.Position:=SpinEdit34.Value;
  TrackBar18.SelEnd:=SpinEdit34.Value;
end;

procedure TXCTuner_Form1.SpinEdit35Change(Sender: TObject);
begin
  TrackBar19.Position:=SpinEdit35.Value;
  TrackBar19.SelEnd:=SpinEdit35.Value;
end;

procedure TXCTuner_Form1.SpinEdit36Change(Sender: TObject);
begin
  TrackBar20.Position:=SpinEdit36.Value;
  TrackBar20.SelEnd:=SpinEdit36.Value;
end;

procedure TXCTuner_Form1.SpinEdit37Change(Sender: TObject);
begin
  TrackBar21.Position:=SpinEdit37.Value;
  TrackBar21.SelEnd:=SpinEdit37.Value;
end;

procedure TXCTuner_Form1.SpinEdit38Change(Sender: TObject);
begin
  TrackBar22.Position:=SpinEdit38.Value;
  TrackBar22.SelEnd:=SpinEdit38.Value;
end;

procedure TXCTuner_Form1.SpinEdit39Change(Sender: TObject);
begin
  TrackBar23.Position:=SpinEdit39.Value;
  TrackBar23.SelEnd:=SpinEdit39.Value;
end;

procedure TXCTuner_Form1.SpinEdit40Change(Sender: TObject);
begin
  TrackBar24.Position:=SpinEdit40.Value;
  TrackBar24.SelEnd:=SpinEdit40.Value;
end;

procedure TXCTuner_Form1.SpinEdit41Change(Sender: TObject);
begin
  TrackBar25.Position:=SpinEdit41.Value;
  TrackBar25.SelEnd:=SpinEdit41.Value;
end;

procedure TXCTuner_Form1.SpinEdit42Change(Sender: TObject);
begin
  TrackBar26.Position:=SpinEdit42.Value;
  TrackBar26.SelEnd:=SpinEdit42.Value;
end;

procedure TXCTuner_Form1.SpinEdit43Change(Sender: TObject);
begin
  TrackBar27.Position:=SpinEdit43.Value;
  TrackBar27.SelEnd:=SpinEdit43.Value;
end;

procedure TXCTuner_Form1.SpinEdit44Change(Sender: TObject);
begin
  TrackBar28.Position:=SpinEdit44.Value;
  TrackBar28.SelEnd:=SpinEdit44.Value;
end;

procedure TXCTuner_Form1.SpinEdit45Change(Sender: TObject);
begin
  TrackBar29.Position:=SpinEdit45.Value;
  TrackBar29.SelEnd:=SpinEdit45.Value;
end;

procedure TXCTuner_Form1.SpinEdit46Change(Sender: TObject);
begin
  TrackBar30.Position:=SpinEdit46.Value;
  TrackBar30.SelEnd:=SpinEdit46.Value;
end;

procedure TXCTuner_Form1.SpinEdit47Change(Sender: TObject);
begin
  TrackBar31.Position:=SpinEdit47.Value;
  TrackBar31.SelEnd:=SpinEdit47.Value;
end;

procedure TXCTuner_Form1.SpinEdit48Change(Sender: TObject);
begin
  TrackBar32.Position:=SpinEdit48.Value;
  TrackBar32.SelEnd:=SpinEdit48.Value;
end;

procedure TXCTuner_Form1.SpinEdit49Change(Sender: TObject);
begin
  TrackBar33.Position:=SpinEdit49.Value;
  TrackBar33.SelEnd:=SpinEdit49.Value;
end;

procedure TXCTuner_Form1.SpinEdit50Change(Sender: TObject);
begin
  TrackBar34.Position:=SpinEdit50.Value;
  TrackBar34.SelEnd:=SpinEdit50.Value;
end;

procedure TXCTuner_Form1.SpinEdit51Change(Sender: TObject);
begin
  TrackBar36.Position:=SpinEdit51.Value;
  TrackBar36.SelEnd:=SpinEdit51.Value;
end;

procedure TXCTuner_Form1.SpinEdit52Change(Sender: TObject);
begin
  TrackBar38.Position:=SpinEdit52.Value;
  TrackBar38.SelEnd:=SpinEdit52.Value;
end;

procedure TXCTuner_Form1.SpinEdit53Change(Sender: TObject);
begin
  TrackBar39.Position:=SpinEdit53.Value;
  TrackBar39.SelEnd:=SpinEdit53.Value;
end;

procedure TXCTuner_Form1.SpinEdit54Change(Sender: TObject);
begin
  TrackBar41.Position:=SpinEdit54.Value;
  TrackBar41.SelEnd:=SpinEdit54.Value;
end;

procedure TXCTuner_Form1.SpinEdit55Change(Sender: TObject);
begin
  TrackBar42.Position:=SpinEdit55.Value;
  TrackBar42.SelEnd:=SpinEdit55.Value;
end;

procedure TXCTuner_Form1.SpinEdit56Change(Sender: TObject);
begin
  TrackBar44.Position:=SpinEdit56.Value;
  TrackBar44.SelEnd:=SpinEdit56.Value;
end;

procedure TXCTuner_Form1.SpinEdit57Change(Sender: TObject);
begin
  TrackBar46.Position:=SpinEdit57.Value;
  TrackBar46.SelEnd:=SpinEdit57.Value;
end;

procedure TXCTuner_Form1.SpinEdit58Change(Sender: TObject);
begin
  TrackBar48.Position:=SpinEdit58.Value;
  TrackBar48.SelEnd:=SpinEdit58.Value;
end;

procedure TXCTuner_Form1.SpinEdit59Change(Sender: TObject);
begin
  TrackBar50.Position:=SpinEdit59.Value;
  TrackBar50.SelEnd:=SpinEdit59.Value;
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

procedure TXCTuner_Form1.TrackBar10Change(Sender: TObject);
begin
  SpinEdit26.Value:=TrackBar10.Position;
  TrackBar10.SelEnd:=TrackBar10.Position;
end;

procedure TXCTuner_Form1.TrackBar11Change(Sender: TObject);
begin
  SpinEdit27.Value:=TrackBar11.Position;
  TrackBar11.SelEnd:=TrackBar11.Position;
end;

procedure TXCTuner_Form1.TrackBar12Change(Sender: TObject);
begin
  SpinEdit28.Value:=TrackBar12.Position;
  TrackBar12.SelEnd:=TrackBar12.Position;
end;

procedure TXCTuner_Form1.TrackBar13Change(Sender: TObject);
begin
  SpinEdit29.Value:=TrackBar13.Position;
  TrackBar13.SelEnd:=TrackBar13.Position;
end;

procedure TXCTuner_Form1.TrackBar14Change(Sender: TObject);
begin
  SpinEdit30.Value:=TrackBar14.Position;
  TrackBar14.SelEnd:=TrackBar14.Position;
end;

procedure TXCTuner_Form1.TrackBar15Change(Sender: TObject);
begin
  SpinEdit31.Value:=TrackBar15.Position;
  TrackBar15.SelEnd:=TrackBar15.Position;
end;

procedure TXCTuner_Form1.TrackBar16Change(Sender: TObject);
begin
  SpinEdit32.Value:=TrackBar16.Position;
  TrackBar16.SelEnd:=TrackBar16.Position;
end;

procedure TXCTuner_Form1.TrackBar17Change(Sender: TObject);
begin
  SpinEdit33.Value:=TrackBar17.Position;
  TrackBar17.SelEnd:=TrackBar17.Position;
end;

procedure TXCTuner_Form1.TrackBar18Change(Sender: TObject);
begin
  SpinEdit34.Value:=TrackBar18.Position;
  TrackBar18.SelEnd:=TrackBar18.Position;
end;

procedure TXCTuner_Form1.TrackBar19Change(Sender: TObject);
begin
  SpinEdit35.Value:=TrackBar19.Position;
  TrackBar19.SelEnd:=TrackBar19.Position;
end;

procedure TXCTuner_Form1.TrackBar1Change(Sender: TObject);
begin
  SpinEdit10.Value:=TrackBar1.Position;
  TrackBar1.SelEnd:=TrackBar1.Position;
end;

procedure TXCTuner_Form1.TrackBar20Change(Sender: TObject);
begin
  SpinEdit36.Value:=TrackBar20.Position;
  TrackBar20.SelEnd:=TrackBar20.Position;
end;

procedure TXCTuner_Form1.TrackBar21Change(Sender: TObject);
begin
  SpinEdit37.Value:=TrackBar21.Position;
  TrackBar21.SelEnd:=TrackBar21.Position;
end;

procedure TXCTuner_Form1.TrackBar22Change(Sender: TObject);
begin
  SpinEdit38.Value:=TrackBar22.Position;
  TrackBar22.SelEnd:=TrackBar22.Position;
end;

procedure TXCTuner_Form1.TrackBar23Change(Sender: TObject);
begin
  SpinEdit39.Value:=TrackBar23.Position;
  TrackBar23.SelEnd:=TrackBar23.Position;
end;

procedure TXCTuner_Form1.TrackBar24Change(Sender: TObject);
begin
  SpinEdit40.Value:=TrackBar24.Position;
  TrackBar24.SelEnd:=TrackBar24.Position;
end;

procedure TXCTuner_Form1.TrackBar25Change(Sender: TObject);
begin
  SpinEdit41.Value:=TrackBar25.Position;
  TrackBar25.SelEnd:=TrackBar25.Position;
end;

procedure TXCTuner_Form1.TrackBar26Change(Sender: TObject);
begin
  SpinEdit42.Value:=TrackBar26.Position;
  TrackBar26.SelEnd:=TrackBar26.Position;
end;

procedure TXCTuner_Form1.TrackBar27Change(Sender: TObject);
begin
  SpinEdit43.Value:=TrackBar27.Position;
  TrackBar27.SelEnd:=TrackBar27.Position;
end;

procedure TXCTuner_Form1.TrackBar28Change(Sender: TObject);
begin
  SpinEdit44.Value:=TrackBar28.Position;
  TrackBar28.SelEnd:=TrackBar28.Position;
end;

procedure TXCTuner_Form1.TrackBar29Change(Sender: TObject);
begin
  SpinEdit45.Value:=TrackBar29.Position;
  TrackBar29.SelEnd:=TrackBar29.Position;
end;

procedure TXCTuner_Form1.TrackBar2Change(Sender: TObject);
begin
  SpinEdit8.Value:=TrackBar2.Position;
  TrackBar2.SelEnd:=TrackBar2.Position;
end;

procedure TXCTuner_Form1.TrackBar30Change(Sender: TObject);
begin
  SpinEdit46.Value:=TrackBar30.Position;
  TrackBar30.SelEnd:=TrackBar30.Position;
end;

procedure TXCTuner_Form1.TrackBar31Change(Sender: TObject);
begin
  SpinEdit47.Value:=TrackBar31.Position;
  TrackBar31.SelEnd:=TrackBar31.Position;
end;

procedure TXCTuner_Form1.TrackBar32Change(Sender: TObject);
begin
  SpinEdit48.Value:=TrackBar32.Position;
  TrackBar32.SelEnd:=TrackBar32.Position;
end;

procedure TXCTuner_Form1.TrackBar33Change(Sender: TObject);
begin
  SpinEdit49.Value:=TrackBar33.Position;
  TrackBar33.SelEnd:=TrackBar33.Position;
end;

procedure TXCTuner_Form1.TrackBar34Change(Sender: TObject);
begin
  SpinEdit50.Value:=TrackBar34.Position;
  TrackBar34.SelEnd:=TrackBar34.Position;
end;

procedure TXCTuner_Form1.TrackBar35Change(Sender: TObject);
begin
  FloatSpinEdit1.Value:=0.1*TrackBar35.Position;
  TrackBar35.SelEnd:=TrackBar35.Position;
end;

procedure TXCTuner_Form1.TrackBar36Change(Sender: TObject);
begin
  SpinEdit51.Value:=TrackBar36.Position;
  TrackBar36.SelEnd:=TrackBar36.Position;
end;

procedure TXCTuner_Form1.TrackBar37Change(Sender: TObject);
begin
  FloatSpinEdit2.Value:=0.1*TrackBar37.Position;
  TrackBar37.SelEnd:=TrackBar37.Position;
end;

procedure TXCTuner_Form1.TrackBar38Change(Sender: TObject);
begin
  SpinEdit52.Value:=TrackBar38.Position;
  TrackBar38.SelEnd:=TrackBar38.Position;
end;

procedure TXCTuner_Form1.TrackBar39Change(Sender: TObject);
begin
  SpinEdit53.Value:=TrackBar39.Position;
  TrackBar39.SelEnd:=TrackBar39.Position;
end;

procedure TXCTuner_Form1.TrackBar3Change(Sender: TObject);
begin
  SpinEdit9.Value:=TrackBar3.Position;
  TrackBar3.SelEnd:=TrackBar3.Position;
end;

procedure TXCTuner_Form1.TrackBar40Change(Sender: TObject);
begin
  FloatSpinEdit3.Value:=0.01*TrackBar40.Position;
  TrackBar40.SelEnd:=TrackBar40.Position;
end;

procedure TXCTuner_Form1.TrackBar41Change(Sender: TObject);
begin
  SpinEdit54.Value:=TrackBar41.Position;
  TrackBar41.SelEnd:=TrackBar41.Position;
end;

procedure TXCTuner_Form1.TrackBar42Change(Sender: TObject);
begin
  SpinEdit55.Value:=TrackBar42.Position;
  TrackBar42.SelEnd:=TrackBar42.Position;
end;

procedure TXCTuner_Form1.TrackBar43Change(Sender: TObject);
begin
  FloatSpinEdit4.Value:=0.01*TrackBar43.Position;
  TrackBar43.SelEnd:=TrackBar43.Position;
end;

procedure TXCTuner_Form1.TrackBar44Change(Sender: TObject);
begin
  SpinEdit56.Value:=TrackBar44.Position;
  TrackBar44.SelEnd:=TrackBar44.Position;
end;

procedure TXCTuner_Form1.TrackBar45Change(Sender: TObject);
begin
  FloatSpinEdit5.Value:=0.01*TrackBar45.Position;
  TrackBar45.SelEnd:=TrackBar45.Position;
end;

procedure TXCTuner_Form1.TrackBar46Change(Sender: TObject);
begin
  SpinEdit57.Value:=TrackBar46.Position;
  TrackBar46.SelEnd:=TrackBar46.Position;
end;

procedure TXCTuner_Form1.TrackBar47Change(Sender: TObject);
begin
  FloatSpinEdit6.Value:=0.01*TrackBar47.Position;
  TrackBar47.SelEnd:=TrackBar47.Position;
end;

procedure TXCTuner_Form1.TrackBar48Change(Sender: TObject);
begin
  SpinEdit58.Value:=TrackBar48.Position;
  TrackBar48.SelEnd:=TrackBar48.Position;
end;

procedure TXCTuner_Form1.TrackBar49Change(Sender: TObject);
begin
  FloatSpinEdit7.Value:=0.01*TrackBar49.Position;
  TrackBar49.SelEnd:=TrackBar49.Position;
end;

procedure TXCTuner_Form1.TrackBar4Change(Sender: TObject);
begin
  SpinEdit20.Value:=TrackBar4.Position;
  TrackBar4.SelEnd:=TrackBar4.Position;
end;

procedure TXCTuner_Form1.TrackBar50Change(Sender: TObject);
begin
  SpinEdit59.Value:=TrackBar50.Position;
  TrackBar50.SelEnd:=TrackBar50.Position;
end;

procedure TXCTuner_Form1.TrackBar51Change(Sender: TObject);
begin
  FloatSpinEdit8.Value:=0.01*TrackBar51.Position;
  TrackBar51.SelEnd:=TrackBar51.Position;
end;

procedure TXCTuner_Form1.TrackBar5Change(Sender: TObject);
begin
  SpinEdit21.Value:=TrackBar5.Position;
  TrackBar5.SelEnd:=TrackBar5.Position;
end;

procedure TXCTuner_Form1.TrackBar6Change(Sender: TObject);
begin
  SpinEdit22.Value:=TrackBar6.Position;
  TrackBar6.SelEnd:=TrackBar6.Position;
end;

procedure TXCTuner_Form1.TrackBar7Change(Sender: TObject);
begin
  SpinEdit23.Value:=TrackBar7.Position;
  TrackBar7.SelEnd:=TrackBar7.Position;
end;

procedure TXCTuner_Form1.TrackBar8Change(Sender: TObject);
begin
  SpinEdit24.Value:=TrackBar8.Position;
  TrackBar8.SelEnd:=TrackBar8.Position;
end;

procedure TXCTuner_Form1.TrackBar9Change(Sender: TObject);
begin
  SpinEdit25.Value:=TrackBar9.Position;
  TrackBar9.SelEnd:=TrackBar9.Position;
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
  i, c1, c2: Integer;
  strFind: String;
begin
  c1 := 0;
  c2 := 0;
  for i := 0 to (FileXVMAllStr.Count - 1) do
    begin
    strFind:=Trim(FileXVMAllStr.Strings[i]);
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
      Delete(full_str, 1, p1);
      // для верности уберем лишние пробелы слева!
      full_str:=TrimLeft(full_str);
    end;
  if full_str[1]='$' then
    begin
      for i:=2 to Length(full_str) do
        begin
          // Если находим на участке закрывающую скобку, то
          // копируем этот участкок длиною i, начиная с первого символа
          // и выходим из функции
          if full_str[i]='}' then
            begin
              Result:=Copy(full_str, 1, i);
              Exit;
            end;
        end;
    end else
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
          if ((full_str[i]=#44) or (full_str[i]=#32) or (full_str[i]=#9)) then
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

// Замена знака '.' на ','
function TXCTuner_Form1.currect_float(str: String): String;
var temp: integer;
begin
  if (Length(str)>3) and (StrToInt(str[4])>=5) then
    begin
      Delete(str, 4, Length(str));
      temp:=StrToInt(str[3]) + 1;
      if (temp>=10) then
        begin
          temp:=StrToInt(str[1])+1;
          str:=IntToStr(temp);
        end else
        begin
          Delete(str, 3, Length(str));
          str:=str+IntToStr(temp);
        end;
    end else
    begin
      Delete(str, 4, Length(str));
    end;
    if str[2]='.' then
      begin
        if str[3]='0' then
          begin
            Result:=Copy(str, 1, 1);
            Exit;
          end;
        str[2]:=',';
        Result:=str;
        exit;
      end;
end;

// Перевод ',' в '.'
function TXCTuner_Form1.currect_float_back(str: String): String;
begin
  if Length(str)<=3 then
    begin
      if str[3]='0' then
        Result:=Copy(str, 1, 1) else
      begin
        str[2]:='.';
        Result:=str;
      end;
    end else
    begin
      if (str[3]='0') and (str[4]='0') then
        Result:=Copy(str, 1, 1) else
      if (str[4]='0') and (str[3]<>'0') then
        begin
          str[2]:='.';
          Result:=str;
        end else
      if (str[3]<>'0') and (str[4]<>'0') then
        begin
          str[2]:='.';
          Result:=str;
        end else
      if (str[3]='0') and (str[4]<>'0') then
        begin
          str[2]:='.';
          Result:=str;
        end;
    end;
end;

// процедура нахождения активного конфига  { TODO : Доработать для случая, когда 1 строка в файле! }
procedure TXCTuner_Form1.activ_conf;
var i, px2, px3: Integer;
begin
  if (FileExists(UTF8ToSys(config.ReadString('Main', 'XVM_dir', '')) + 'xvm.xc')) then
    begin
      xvm_base:=TStringList.Create;
      xvm_base.LoadFromFile(UTF8ToSys(config.ReadString('Main', 'XVM_dir', '')) + 'xvm.xc');
      if (xvm_base.Count=1) then
      begin
        activ_config:=Trim(xvm_base.Strings[0]);
        if Length(activ_config)=0  then
        begin
          ShowMessage('Пустой файл! Программа закроется!');
          Application.Terminate;
        end;
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
      end else
      begin
        for i := 0 to (xvm_base.Count - 1) do
        begin
          activ_config:=Trim(xvm_base.Strings[i]);
          if Length(activ_config)=0  then Continue else
          if ((activ_config[1] = '/') and (activ_config[2] = '/')) then Continue else
          if (activ_config[1]='$') then
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
    end;
    begin
      activ_config:=Trim(xvm_base.Strings[0]);
      if Length(activ_config)=0  then
      begin
        ShowMessage('Пустой файл! Программа закроется!');
        Application.Terminate;
      end;
      if pos('$', activ_config)=4 then
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
      // выводим сообщение и принудительно закрываем программу
      ShowMessage('Активный конфиг не найден! Проверте правильность нахождения пути! Программа закроется!');
      Application.Terminate;
    end;
    end else
    begin
      // выводим сообщение и принудительно закрываем программу
      ShowMessage('Файл xvm.xc в папке не найден! Проверте правильность нахождения файла! Программа закроется!');
      Application.Terminate;
    end;
end;
// загрузка из файла battle.xc
procedure TXCTuner_Form1.battle_loading;
begin
  battle.Clear;
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

    // включить {{hp*}} макросы в ушах и на миникарте / 8
    Search:='"allowHpInPanelsAndMinimap"';
    bs8_SL:=Search_Line(bs0_SL, Search, battle);
    if bs8_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s8:=battle.Strings[bs8_SL];
      b_s8:=new_change_str(Search, b_s8);
      if b_s8='true' then RadioButton81.Checked:=True else
      if b_s8='false' then RadioButton82.Checked:=True else
      begin
        ShowMessage(error_message(battle_name, b_s8, bs8_SL));
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

    // Папка к клановым иконкам / 7
    Search:='"clanIconsFolder"';
    bs7_SL:=Search_Line(bs0_SL, Search, battle);
    if bs7_SL=-1 then error_line(Search, battle_name) else
    begin
      b_s7:=battle.Strings[bs7_SL];
      b_s7:=new_change_str(Search, b_s7);
      Edit25.Text:=DelStartEnd(b_s7);
    end;
  end;
  //edithint();
end;

// загрузка из файла login.xc
procedure TXCTuner_Form1.login_loading;
// загрузка из файла login.xc и обработка данных
begin
  login.Clear;
  login.LoadFromFile(dir_xvm+login_name);
  log0_SL:=Search_Line(0, '"login"', login);
  if log0_SL=-1 then error_line('"login"', login_name) else
  begin
    // Пропустить вступительное видео / 1
    Search:='"skipIntro"';
    log1_SL:=Search_Line(log0_SL, Search, login);
    if log1_SL=-1 then error_line(Search, login_name) else
    begin
      login_s1:=login.Strings[log1_SL];
      login_s1:=new_change_str(Search, login_s1);
      if login_s1='true' then RadioButton23.Checked:=True else
      if login_s1='false' then RadioButton24.Checked:=True else
      begin
        ShowMessage(error_message(login_name, login_s1, log1_SL));
        Application.Terminate;
      end;
    end;

    // Сохранять последний сервер / 7
    Search:='"saveLastServer"';
    log7_SL:=Search_Line(log0_SL, Search, login);
    if log7_SL=-1 then error_line(Search, login_name) else
    begin
      login_s7:=login.Strings[log7_SL];
      login_s7:=new_change_str(Search, login_s7);
      if login_s7='true' then RadioButton73.Checked:=True else
      if login_s7='false' then RadioButton74.Checked:=True else
      begin
        ShowMessage(error_message(login_name, login_s7, log7_SL));
        Application.Terminate;
      end;
    end;

    // Автоматический вход в игру / 2
    Search:='"autologin"';
    log2_SL:=Search_Line(log0_SL, Search, login);
    if log2_SL=-1 then error_line(Search, login_name) else
    begin
      login_s2:=login.Strings[log2_SL];
      login_s2:=new_change_str(Search, login_s2);
      if login_s2='true' then RadioButton25.Checked:=True else
      if login_s2='false' then RadioButton26.Checked:=True else
      begin
        ShowMessage(error_message(login_name, login_s2, log2_SL));
        Application.Terminate;
      end;
    end;

    // Автоматически подтверждать проигрывание старых реплеев / 3
    Search:='"confirmOldReplays"';
    log3_SL:=Search_Line(log0_SL, Search, login);
    if log3_SL=-1 then error_line(Search, login_name) else
    begin
      login_s3:=login.Strings[log3_SL];
      login_s3:=new_change_str(Search, login_s3);
      if login_s3='true' then RadioButton27.Checked:=True else
      if login_s3='false' then RadioButton28.Checked:=True else
      begin
        ShowMessage(error_message(login_name, login_s3, log3_SL));
        Application.Terminate;
      end;
    end;
  end;

  log0_SL:=Search_Line(log0_SL, '"pingServers"', login);
  if log0_SL=-1 then error_line('"pingServers"', login_name) else
  begin
    // показывать пинг до серверов / 4
    Search:='"enabled"';
    log4_SL:=Search_Line(log0_SL, Search, login);
    if log4_SL=-1 then error_line(Search, login_name) else
    begin
      login_s4:=login.Strings[log4_SL];
      login_s4:=new_change_str(Search, login_s4);
      if login_s4='true' then RadioButton29.Checked:=True else
      if login_s4='false' then RadioButton30.Checked:=True else
      begin
        ShowMessage(error_message(login_name, login_s4, log4_SL));
        Application.Terminate;
      end;
    end;

    // Пинг до серверов / позиция по X / 5
    Search:='"x"';
    log5_SL:=Search_Line(log0_SL, Search, login);
    if log5_SL=-1 then error_line(Search, login_name) else
    begin
      login_s5:=login.Strings[log5_SL];
      login_s5:=new_change_str(Search, login_s5);
      SpinEdit3.Value:=StrToInt(login_s5);
    end;

    // Пинг до серверов / позиция по Y / 6
    Search:='"y"';
    log6_SL:=Search_Line(log0_SL, Search, login);
    if log6_SL=-1 then error_line(Search, login_name) else
    begin
      login_s6:=login.Strings[log6_SL];
      login_s6:=new_change_str(Search, login_s6);
      SpinEdit4.Value:=StrToInt(login_s6);
    end;
  end;
  //edithint();
end;

// сохранение параметров в файл login.xc
procedure TXCTuner_Form1.login_save;
begin
  // сохранение изменений в файл login.xc

  if (RadioButton23.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton25.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton27.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton29.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton73.Checked=True) then chek5:='true' else chek5:='false';

  // Пропустить вступительное видео / 1
  login_s1:=login.Strings[log1_SL];
  login_s1:=Smart_Replacing('"skipIntro"', login_s1, chek1);
  login.Delete(log1_SL);
  login.Insert(log1_SL, login_s1);

  // Сохранять последний сервер / 7
  login_s7:=login.Strings[log7_SL];
  login_s7:=Smart_Replacing('"saveLastServer"', login_s7, chek5);
  login.Delete(log7_SL);
  login.Insert(log7_SL, login_s7);

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

  login.SaveToFile(dir_xvm+login_name);
end;

// загрузка из файла hangar.xc
procedure TXCTuner_Form1.hangar_loading;
begin
  hangar.Clear;
  hangar.LoadFromFile(dir_xvm+hangar_name);
  // загрузка данных из файла hangar.xc в интерфейс
  hgar01_SL:=Search_Line(0, '"hangar"', hangar);
  if hgar01_SL=-1 then error_line('"hangar"', hangar_name) else
  begin
    // 1
    Search:='"hideTutorial"';
    hgar1_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar1_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s1:=hangar.Strings[hgar1_SL];
      hangar_s1:=new_change_str(Search, hangar_s1);
      if hangar_s1='true' then RadioButton32.Checked:=True else
      if hangar_s1='false' then RadioButton31.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s1, hgar1_SL));
        Application.Terminate;
      end;
    end;

    // 2
    Search:='"xwnInCompany"';
    hgar2_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar2_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s2:=hangar.Strings[hgar2_SL];
      hangar_s2:=new_change_str(Search, hangar_s2);
      if hangar_s2='true' then RadioButton33.Checked:=True else
      if hangar_s2='false' then RadioButton34.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s2, hgar2_SL));
        Application.Terminate;
      end;
    end;

    // 3
    Search:='"masteryMarkInTankCarousel"';
    hgar3_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar3_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s3:=hangar.Strings[hgar3_SL];
      hangar_s3:=new_change_str(Search, hangar_s3);
      if hangar_s3='true' then RadioButton35.Checked:=True else
      if hangar_s3='false' then RadioButton36.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s3, hgar3_SL));
        Application.Terminate;
      end;
    end;

    // 4
    Search:='"masteryMarkInTechTree"';
    hgar4_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar4_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s4:=hangar.Strings[hgar4_SL];
      hangar_s4:=new_change_str(Search, hangar_s4);
      if hangar_s4='true' then RadioButton37.Checked:=True else
      if hangar_s4='false' then RadioButton38.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s4, hgar4_SL));
        Application.Terminate;
      end;
    end;

    // 5
    Search:='"hidePricesInTechTree"';
    hgar5_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar5_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s5:=hangar.Strings[hgar5_SL];
      hangar_s5:=new_change_str(Search, hangar_s5);
      if hangar_s5='true' then RadioButton40.Checked:=True else
      if hangar_s5='false' then RadioButton39.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s5, hgar5_SL));
        Application.Terminate;
      end;
    end;

    // 6
    Search:='"widgetsEnabled"';
    hgar6_SL:=Search_Line(hgar01_SL, Search, hangar);
    if hgar6_SL=-1 then error_line(Search, hangar_name) else
    begin
      hangar_s6:=hangar.Strings[hgar6_SL];
      hangar_s6:=new_change_str(Search, hangar_s6);
      if hangar_s6='true' then RadioButton41.Checked:=True else
      if hangar_s6='false' then RadioButton42.Checked:=True else
      begin
        ShowMessage(error_message(hangar_name, hangar_s6, hgar6_SL));
        Application.Terminate;
      end;
    end;

    hgar02_SL:=Search_Line(hgar01_SL, '"pingServers"', hangar);
    if hgar02_SL=-1 then error_line('"pingServers"', hangar_name) else
    begin
      // 7
      Search:='"enabled"';
      hgar7_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar7_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s7:=hangar.Strings[hgar7_SL];
        hangar_s7:=new_change_str(Search, hangar_s7);
        if hangar_s7='true' then RadioButton43.Checked:=True else
        if hangar_s7='false' then RadioButton44.Checked:=True else
        begin
          ShowMessage(error_message(hangar_name, hangar_s7, hgar7_SL));
          Application.Terminate;
        end;
      end;

      // интервал обновления пинга
      Search:='"updateInterval"';
      hgar8_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar8_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s8:=hangar.Strings[hgar8_SL];
        hangar_s8:=new_change_str(Search, hangar_s8);
        TrackBar1.Position:=StrToInt(hangar_s8);
        SpinEdit10.Value:=StrToInt(hangar_s8);
      end;

      // положение поля по x
      Search:='"x"';
      hgar9_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar9_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s9:=hangar.Strings[hgar9_SL];
        hangar_s9:=new_change_str(Search, hangar_s9);
        SpinEdit5.Value:=StrToInt(hangar_s9);
      end;

      // положение поля по y
      Search:='"y"';
      hgar10_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar10_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s10:=hangar.Strings[hgar10_SL];
        hangar_s10:=new_change_str(Search, hangar_s10);
        SpinEdit6.Value:=StrToInt(hangar_s10);
      end;

      // прозрачность поля
      Search:='"alpha"';
      hgar11_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar11_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s11:=hangar.Strings[hgar11_SL];
        hangar_s11:=new_change_str(Search, hangar_s11);
        SpinEdit7.Value:=StrToInt(hangar_s11);
      end;

      // Разделитель / 32
      Search:='"delimiter"';
      hgar32_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar32_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s32:=hangar.Strings[hgar32_SL];
        hangar_s32:=new_change_str(Search, hangar_s32);
        Edit26.Text:=DelStartEnd(hangar_s32);
      end;

      // максимальное количество строк одной колонки
      Search:='"maxRows"';
      hgar12_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar12_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s12:=hangar.Strings[hgar12_SL];
        hangar_s12:=new_change_str(Search, hangar_s12);
        TrackBar2.Position:=StrToInt(hangar_s12);
        SpinEdit8.Value:=StrToInt(hangar_s12);
      end;

      // пространство между колонками
      Search:='"columnGap"';
      hgar13_SL:=Search_Line(hgar02_SL, Search, hangar);
      if hgar13_SL=-1 then error_line(Search, hangar_name) else
      begin
        hangar_s13:=hangar.Strings[hgar13_SL];
        hangar_s13:=new_change_str(Search, hangar_s13);
        TrackBar3.Position:=StrToInt(hangar_s13);
        SpinEdit9.Value:=StrToInt(hangar_s13);
      end;

      hgar03_SL:=Search_Line(hgar02_SL, '"fontStyle"', hangar);
      if hgar03_SL=-1 then error_line('"fontStyle"', hangar_name) else
      begin
        // Название шрифта // 14
        Search:='"name"';
        hgar14_SL:=Search_Line(hgar03_SL, Search, hangar);
        if hgar14_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s14:=hangar.Strings[hgar14_SL];
          hangar_s14:=new_change_str(Search, hangar_s14);
          Edit1.Text:=DelStartEnd(hangar_s14);
        end;

        // Размер шрифта // 15
        Search:='"size"';
        hgar15_SL:=Search_Line(hgar03_SL, Search, hangar);
        if hgar15_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s15:=hangar.Strings[hgar15_SL];
          hangar_s15:=new_change_str(Search, hangar_s15);
          SpinEdit11.Value:=StrToInt(hangar_s15);
        end;

        // Стиль жирный шрифта // 16
        Search:='"bold"';
        hgar16_SL:=Search_Line(hgar03_SL, Search, hangar);
        if hgar16_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s16:=hangar.Strings[hgar16_SL];
          hangar_s16:=new_change_str(Search, hangar_s16);
          if hangar_s16='true' then CheckBox1.Checked:=True else
          if hangar_s16='false' then CheckBox1.Checked:=False else
          begin
            ShowMessage(error_message(hangar_name, hangar_s16, hgar16_SL));
            Application.Terminate;
          end;
        end;

        // Стиль курсив шрифта // 17
        Search:='"italic"';
        hgar17_SL:=Search_Line(hgar03_SL, Search, hangar);
        if hgar17_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s17:=hangar.Strings[hgar17_SL];
          hangar_s17:=new_change_str(Search, hangar_s17);
          if hangar_s17='true' then CheckBox2.Checked:=True else
          if hangar_s17='false' then CheckBox2.Checked:=False else
          begin
            ShowMessage(error_message(hangar_name, hangar_s17, hgar17_SL));
            Application.Terminate;
          end;
        end;

        hgar04_SL:=Search_Line(hgar03_SL, '"color"', hangar);
        if hgar04_SL=-1 then error_line('"color"', hangar_name) else
        begin
          // Разные цвета в зависимости от времени отклика сервера // 18
          Search:='"great"';
          hgar18_SL:=Search_Line(hgar04_SL, Search, hangar);
          if hgar18_SL=-1 then error_line(Search, hangar_name) else
          begin
            hangar_s18:=hangar.Strings[hgar18_SL];
            hangar_s18:=DelStartEnd(new_change_str(Search, hangar_s18));
            mbColorPreview1.Color:=HexToTColor(hangar_s18);
            hangar_s18:='#' + hangar_s18;
            Edit3.Text:=hangar_s18;
            end;
          end;

          // Разные цвета в зависимости от времени отклика сервера // 19
          Search:='"good"';
          hgar19_SL:=Search_Line(hgar04_SL, Search, hangar);
          if hgar19_SL=-1 then error_line(Search, hangar_name) else
          begin
            hangar_s19:=hangar.Strings[hgar19_SL];
            hangar_s19:=DelStartEnd(new_change_str(Search, hangar_s19));
            mbColorPreview2.Color:=HexToTColor(hangar_s19);
            hangar_s19:='#' + hangar_s19;
            Edit4.Text:=hangar_s19;
          end;

          // Разные цвета в зависимости от времени отклика сервера // 20
          Search:='"poor"';
          hgar20_SL:=Search_Line(hgar04_SL, Search, hangar);
          if hgar20_SL=-1 then error_line(Search, hangar_name) else
          begin
            hangar_s20:=hangar.Strings[hgar20_SL];
            hangar_s20:=DelStartEnd(new_change_str(Search, hangar_s20));
            mbColorPreview3.Color:=HexToTColor(hangar_s20);
            hangar_s20:='#' + hangar_s20;
            Edit5.Text:=hangar_s20;
          end;

          // Разные цвета в зависимости от времени отклика сервера // 21
          Search:='"bad"';
          hgar21_SL:=Search_Line(hgar04_SL, Search, hangar);
          if hgar21_SL=-1 then error_line(Search, hangar_name) else
          begin
            hangar_s21:=hangar.Strings[hgar21_SL];
            hangar_s21:=DelStartEnd(new_change_str(Search, hangar_s21));
            mbColorPreview4.Color:=HexToTColor(hangar_s21);
            hangar_s21:='#' + hangar_s21;
            Edit6.Text:=hangar_s21;
          end;
        end;

      hgar05_SL:=Search_Line(hgar02_SL, '"threshold"', hangar);
      if hgar05_SL=-1 then error_line('"threshold"', hangar_name) else
      begin
        // Пороговые значения, определеяющие качество отклика // 22
        Search:='"great"';
        hgar22_SL:=Search_Line(hgar05_SL, Search, hangar);
        if hgar22_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s22:=hangar.Strings[hgar22_SL];
          hangar_s22:=new_change_str(Search, hangar_s22);
          SpinEdit17.Value:=StrToInt(hangar_s22);
        end;

        // Пороговые значения, определеяющие качество отклика // 23
        Search:='"good"';
        hgar23_SL:=Search_Line(hgar05_SL, Search, hangar);
        if hgar23_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s23:=hangar.Strings[hgar23_SL];
          hangar_s23:=new_change_str(Search, hangar_s23);
          SpinEdit18.Value:=StrToInt(hangar_s23);
        end;

        // Пороговые значения, определеяющие качество отклика // 24
        Search:='"poor"';
        hgar24_SL:=Search_Line(hgar05_SL, Search, hangar);
        if hgar24_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s24:=hangar.Strings[hgar24_SL];
          hangar_s24:=new_change_str(Search, hangar_s24);
          SpinEdit19.Value:=StrToInt(hangar_s24);
        end;
      end;

      hgar06_SL:=Search_Line(hgar02_SL, '"shadow"', hangar);
      if hgar06_SL=-1 then error_line('"shadow"', hangar_name) else
      begin
        // Параметры тени // 25
        Search:='"enabled"';
        hgar25_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar25_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s25:=hangar.Strings[hgar25_SL];
          hangar_s25:=new_change_str(Search, hangar_s25);
          if hangar_s25='true' then RadioButton45.Checked:=True else
          if hangar_s25='false' then RadioButton46.Checked:=True else
          begin
            ShowMessage(error_message(hangar_name, hangar_s25, hgar25_SL));
            Application.Terminate;
          end;
        end;

        // Параметры тени // 26
        Search:='"color"';
        hgar26_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar26_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s26:=hangar.Strings[hgar26_SL];
          hangar_s26:=DelStartEnd(new_change_str(Search, hangar_s26));
          mbColorPreview5.Color:=HexToTColor(hangar_s26);
          hangar_s26:='#' + hangar_s26;
          Edit2.Text:=hangar_s26;
        end;

        // Параметры тени // 27
        Search:='"distance"';
        hgar27_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar27_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s27:=hangar.Strings[hgar27_SL];
          hangar_s27:=new_change_str(Search, hangar_s27);
          SpinEdit12.Value:=StrToInt(hangar_s27);
        end;

        // Параметры тени // 28
        Search:='"angle"';
        hgar28_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar28_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s28:=hangar.Strings[hgar28_SL];
          hangar_s28:=new_change_str(Search, hangar_s28);
          SpinEdit13.Value:=StrToInt(hangar_s28);
        end;

        // Параметры тени // 29
        Search:='"alpha"';
        hgar29_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar29_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s29:=hangar.Strings[hgar29_SL];
          hangar_s29:=new_change_str(Search, hangar_s29);
          SpinEdit14.Value:=StrToInt(hangar_s29);
        end;

        // Параметры тени // 30
        Search:='"blur"';
        hgar30_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar30_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s30:=hangar.Strings[hgar30_SL];
          hangar_s30:=new_change_str(Search, hangar_s30);
          SpinEdit15.Value:=StrToInt(hangar_s30);
        end;

        // Параметры тени // 31
        Search:='"strength"';
        hgar31_SL:=Search_Line(hgar06_SL, Search, hangar);
        if hgar31_SL=-1 then error_line(Search, hangar_name) else
        begin
          hangar_s31:=hangar.Strings[hgar31_SL];
          hangar_s31:=new_change_str(Search, hangar_s31);
          SpinEdit16.Value:=StrToInt(hangar_s31);
        end;
      end;
    end;
  end;
  //edithint();
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

  // Разделитель // 32
  hangar_s32:=hangar.Strings[hgar32_SL];
  hangar_s32:=Smart_Replacing('"delimiter"', hangar_s32, RecStartEnd(Edit26.Text));
  hangar.Delete(hgar32_SL);
  hangar.Insert(hgar32_SL, hangar_s32);

end;

// Загрузка из файла
procedure TXCTuner_Form1.fragCorrelation_loading;
begin
  fragcorr.Clear;
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
  //edithint();
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

  fragcorr.SaveToFile(dir_xvm+frag_name);
end;

// Загрузка данных из файла minimap.xc
procedure TXCTuner_Form1.map_loading;
begin
  map.Clear;
  map.LoadFromFile(dir_xvm + map_name);
  MP_0_SL:=Search_Line(0, '"minimap"', map);
  if MP_0_SL=-1 then error_line('"minimap"', map_name) else
  begin
    // Функционал XVM /1
    Search:='"enabled"';
    MP_1_SL:=Search_Line(MP_0_SL, Search, map);
    if MP_1_SL=-1 then error_line(Search, map_name) else
    begin
      map_s1:=map.Strings[MP_1_SL];
      map_s1:=new_change_str(Search, map_s1);
      if map_s1='true' then RadioButton103.Checked:=True else
      if map_s1='false' then RadioButton104.Checked:=True else
      begin
        ShowMessage(error_message(map_name, map_s1, MP_1_SL));
        Application.Terminate;
      end;
    end;

    // Прозрачность изображения карты /2
    Search:='"mapBackgroundImageAlpha"';
    MP_2_SL:=Search_Line(MP_0_SL, Search, map);
    if MP_2_SL=-1 then error_line(Search, map_name) else
    begin
      map_s2:=map.Strings[MP_2_SL];
      map_s2:=new_change_str(Search, map_s2);
      SpinEdit48.Value:=StrToInt(map_s2);
      TrackBar32.Position:=SpinEdit48.Value;
    end;

    // Прозрачность своей иконки. Белая стрелка /3
    Search:='"selfIconAlpha"';
    MP_3_SL:=Search_Line(MP_0_SL, Search, map);
    if MP_3_SL=-1 then error_line(Search, map_name) else
    begin
      map_s3:=map.Strings[MP_3_SL];
      map_s3:=new_change_str(Search, map_s3);
      SpinEdit49.Value:=StrToInt(map_s3);
      TrackBar33.Position:=SpinEdit49.Value;
    end;

    // Прозрачность камеры и прикрепленной геометрии /4
    Search:='"cameraAlpha"';
    MP_4_SL:=Search_Line(MP_0_SL, Search, map);
    if MP_4_SL=-1 then error_line(Search, map_name) else
    begin
      map_s4:=map.Strings[MP_4_SL];
      map_s4:=new_change_str(Search, map_s4);
      SpinEdit50.Value:=StrToInt(map_s4);
      TrackBar34.Position:=SpinEdit50.Value;
    end;

    // Размер иконки техники /5
    Search:='"iconScale"';
    MP_5_SL:=Search_Line(MP_0_SL, Search, map);
    if MP_5_SL=-1 then error_line(Search, map_name) else
    begin
      map_s5:=map.Strings[MP_5_SL];
      map_s5:=new_change_str(Search, map_s5);
      map_s5:=currect_float(map_s5);
      FloatSpinEdit1.Value:=StrToFloat(map_s5);
      TrackBar35.Position:=StrToInt(FloatToStr(FloatSpinEdit1.Value*10));;
    end;

    // Зум / 6
    MP_01_SL:=Search_Line(MP_0_SL, '"zoom"', map);
    if MP_01_SL=-1 then error_line('"zoom"', map_name) else
    begin
      // Число пикселей для уменьшения миникарты / 6.1
      Search:='"pixelsBack"';
      MP_6_SL:=Search_Line(MP_01_SL, Search, map);
      if MP_6_SL=-1 then error_line(Search, map_name) else
      begin
        map_s6:=map.Strings[MP_6_SL];
        map_s6:=new_change_str(Search, map_s6);
        SpinEdit51.Value:=StrToInt(map_s6);
        TrackBar36.Position:=SpinEdit51.Value;
      end;

      // Центрирование миникарты / 6.2
      Search:='"centered"';
      MP_7_SL:=Search_Line(MP_01_SL, Search, map);
      if MP_7_SL=-1 then error_line(Search, map_name) else
      begin
        map_s7:=map.Strings[MP_7_SL];
        map_s7:=new_change_str(Search, map_s7);
        if map_s7='true' then CheckBox3.Checked:=True else
        if map_s7='false' then CheckBox3.Checked:=False else
        begin
          ShowMessage(error_message(map_name, map_s7, MP_7_SL));
          Application.Terminate;
        end;
      end;
    end;

    // Квадрат со стороной 1000m / 7
    MP_02_SL:=Search_Line(MP_0_SL, '"square"', map);
    if MP_02_SL=-1 then error_line('"square"', map_name) else
    begin
      // Видимость / 7.1
      Search:='"enabled"';
      MP_8_SL:=Search_Line(MP_02_SL, Search, map);
      if MP_8_SL=-1 then error_line(Search, map_name) else
      begin
        map_s8:=map.Strings[MP_8_SL];
        map_s8:=new_change_str(Search, map_s8);
        if map_s8='true' then CheckBox4.Checked:=True else
        if map_s8='false' then CheckBox4.Checked:=False else
        begin
          ShowMessage(error_message(map_name, map_s8, MP_8_SL));
          Application.Terminate;
        end;
      end;

      // Видимось для арты / 7.2
      Search:='"artilleryEnabled"';
      MP_9_SL:=Search_Line(MP_02_SL, Search, map);
      if MP_9_SL=-1 then error_line(Search, map_name) else
      begin
        map_s9:=map.Strings[MP_9_SL];
        map_s9:=new_change_str(Search, map_s9);
        if map_s9='true' then CheckBox5.Checked:=True else
        if map_s9='false' then CheckBox5.Checked:=False else
        begin
          ShowMessage(error_message(map_name, map_s9, MP_9_SL));
          Application.Terminate;
        end;
      end;

      // Толщина линии / 7.3
      Search:='"thickness"';
      MP_10_SL:=Search_Line(MP_02_SL, Search, map);
      if MP_10_SL=-1 then error_line(Search, map_name) else
      begin
        map_s10:=map.Strings[MP_10_SL];
        map_s10:=new_change_str(Search, map_s10);
        map_s10:=currect_float(map_s10);
        FloatSpinEdit2.Value:=StrToFloat(map_s10);
        TrackBar37.Position:=StrToInt(FloatToStr(FloatSpinEdit2.Value*10));
      end;

      // Прозрачность линии / 7.4
      Search:='"alpha"';
      MP_11_SL:=Search_Line(MP_02_SL, Search, map);
      if MP_11_SL=-1 then error_line(Search, map_name) else
      begin
        map_s11:=map.Strings[MP_11_SL];
        map_s11:=new_change_str(Search, map_s11);
        SpinEdit52.Value:=StrToInt(map_s11);
        TrackBar38.Position:=SpinEdit52.Value;
      end;

      // Цвет линии / 7.5
      Search:='"color"';
      MP_12_SL:=Search_Line(MP_02_SL, Search, map);
      if MP_12_SL=-1 then error_line(Search, map_name) else
      begin
        map_s12:=map.Strings[MP_12_SL];
        map_s12:=DelStartEnd(new_change_str(Search, map_s12));
        mbColorPreview6.Color:=HexToTColor(map_s12);
        map_s12:='#' + map_s12;
        Edit48.Text:=map_s12;
      end;
    end;
  end;
end;

// Сохранение данных в файл minimap.xc
procedure TXCTuner_Form1.map_save;
begin
  if (RadioButton103.Checked=True) then chek1:='true' else chek1:='false';
  if (CheckBox3.Checked=True) then      chek2:='true' else chek2:='false';
  if (CheckBox4.Checked=True) then      chek3:='true' else chek3:='false';
  if (CheckBox5.Checked=True) then      chek4:='true' else chek4:='false';

  // Функционал XVM /1
  map_s1:=map.Strings[MP_1_SL];
  map_s1:=Smart_Replacing('"enabled"', map_s1, chek1);
  map.Delete(MP_1_SL);
  map.Insert(MP_1_SL, map_s1);

  // Прозрачность изображения карты /2
  map_s2:=map.Strings[MP_2_SL];
  map_s2:=Smart_Replacing('"mapBackgroundImageAlpha"', map_s2, IntToStr(SpinEdit48.Value));
  map.Delete(MP_2_SL);
  map.Insert(MP_2_SL, map_s2);

  // Прозрачность своей иконки. Белая стрелка /3
  map_s3:=map.Strings[MP_3_SL];
  map_s3:=Smart_Replacing('"selfIconAlpha"', map_s3, IntToStr(SpinEdit49.Value));
  map.Delete(MP_3_SL);
  map.Insert(MP_3_SL, map_s3);

  // Прозрачность камеры и прикрепленной геометрии /4
  map_s4:=map.Strings[MP_4_SL];
  map_s4:=Smart_Replacing('"cameraAlpha"', map_s4, IntToStr(SpinEdit50.Value));
  map.Delete(MP_4_SL);
  map.Insert(MP_4_SL, map_s4);

  // Размер иконки техники /5
  map_s5:=map.Strings[MP_5_SL];
  map_s5:=Smart_Replacing('"iconScale"', map_s5,
                          currect_float_back(FloatToStr(FloatSpinEdit1.Value)));
  map.Delete(MP_5_SL);
  map.Insert(MP_5_SL, map_s5);

  // Зум / 6
    // Число пикселей для уменьшения миникарты / 6.1
  map_s6:=map.Strings[MP_6_SL];
  map_s6:=Smart_Replacing('"pixelsBack"', map_s6, IntToStr(SpinEdit51.Value));
  map.Delete(MP_6_SL);
  map.Insert(MP_6_SL, map_s6);

    // Центрирование миникарты / 6.2
  map_s7:=map.Strings[MP_7_SL];
  map_s7:=Smart_Replacing('"centered"', map_s7, chek2);
  map.Delete(MP_7_SL);
  map.Insert(MP_7_SL, map_s7);

  // Квадрат со стороной 1000m / 7
    // Видимость / 7.1
  map_s8:=map.Strings[MP_8_SL];
  map_s8:=Smart_Replacing('"enabled"', map_s8, chek3);
  map.Delete(MP_8_SL);
  map.Insert(MP_8_SL, map_s8);

    // Видимось для арты / 7.2
  map_s9:=map.Strings[MP_9_SL];
  map_s9:=Smart_Replacing('"artilleryEnabled"', map_s9, chek4);
  map.Delete(MP_9_SL);
  map.Insert(MP_9_SL, map_s9);

    // Толщина линии / 7.3
  map_s10:=map.Strings[MP_10_SL];
  map_s10:=Smart_Replacing('"thickness"', map_s10,
                          currect_float_back(FloatToStr(FloatSpinEdit2.Value)));
  map.Delete(MP_10_SL);
  map.Insert(MP_10_SL, map_s10);

    // Прозрачность / 7.4
  map_s11:=map.Strings[MP_11_SL];
  map_s11:=Smart_Replacing('"alpha"', map_s11, IntToStr(SpinEdit52.Value));
  map.Delete(MP_11_SL);
  map.Insert(MP_11_SL, map_s11);

    // Цвет / 7.5
  map_s12:=map.Strings[MP_12_SL];
  map_s12:=Smart_Replacing('"color"', map_s12, RecStartEnd(Edit48.Text));
  map.Delete(MP_12_SL);
  map.Insert(MP_12_SL, map_s12);

  map.SaveToFile(dir_xvm+map_name);
end;

// Процедура загрузки из файла minimapCircles.xc
procedure TXCTuner_Form1.circlemap_loading;
var
CIR_02_SL, CIR_03_SL, CIR_04_SL, CIR_05_SL, CIR_06_SL, CIR_07_SL: integer;
begin
  circle.Clear;
  circle.LoadFromFile(dir_xvm+circle_name);
  CIR_0_SL:=Search_Line(0, '"circles"', circle);
  if CIR_0_SL=-1 then error_line('"circles"', circle_name) else
  begin
    //Общая видимость / 1
    Search:='"enabled"';
    CIR_1_SL:=Search_Line(CIR_0_SL, Search, circle);
    if CIR_1_SL=-1 then error_line(Search, circle_name) else
    begin
      circle_s1:=circle.Strings[CIR_1_SL];
      circle_s1:=new_change_str(Search, circle_s1);
      if circle_s1='true' then RadioButton105.Checked:=True else
      if circle_s1='false' then RadioButton106.Checked:=True else
      begin
        ShowMessage(error_message(circle_name, circle_s1, CIR_1_SL));
        Application.Terminate;
      end;
    end;

    // Основные круги
    {CIR_01_SL:=Search_Line(CIR_0_SL, '"major"', circle);
    if CIR_01_SL=-1 then error_line('"major"', circle_name) else
    begin
      CIR_02_SL:=Search_Line(CIR_01_SL, '{', circle); // для 1-го
      CIR_03_SL:=Search_Line(CIR_02_SL+1, '{', circle); // для 2-го
      // Первый круг
      // Видимость / 2
      Search:='"enabled"';
      CIR_2_SL:=Search_Line(CIR_02_SL, Search, circle);
      if CIR_2_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s2:=circle.Strings[CIR_2_SL];
        circle_s2:=new_change_str(Search, circle_s2);
        if circle_s2='true' then RadioButton107.Checked:=True else
        if circle_s2='false' then RadioButton108.Checked:=True else
        begin
          ShowMessage(error_message(circle_name, circle_s2, CIR_2_SL));
          Application.Terminate;
        end;
      end;

      // Дистанция / 3
      Search:='"distance"';
      CIR_3_SL:=Search_Line(CIR_02_SL, Search, circle);
      if CIR_3_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s3:=circle.Strings[CIR_3_SL];
        circle_s3:=new_change_str(Search, circle_s3);
        GroupBox92.Caption:='Круг '+circle_s3+' м.';
        GroupBox92.Refresh;
        SpinEdit53.Value:=StrToInt(circle_s3);
        TrackBar39.Position:=SpinEdit53.Value;
      end;

      // Толщина / 4
      Search:='"thickness"';
      CIR_4_SL:=Search_Line(CIR_02_SL, Search, circle);
      if CIR_4_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s4:=circle.Strings[CIR_4_SL];
        circle_s4:=new_change_str(Search, circle_s4);
        circle_s4:=currect_float_for4(circle_s4);
        FloatSpinEdit3.Value:=StrToFloat(circle_s4);
        TrackBar40.Position:=StrToInt(FloatToStr(FloatSpinEdit3.Value*100));
      end;

      // Прозрачность / 5
      Search:='"alpha"';
      CIR_5_SL:=Search_Line(CIR_02_SL, Search, circle);
      if CIR_5_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s5:=circle.Strings[CIR_5_SL];
        circle_s5:=new_change_str(Search, circle_s5);
        SpinEdit54.Value:=StrToInt(circle_s5);
        TrackBar41.Position:=SpinEdit54.Value;
      end;

      // Цвет / 6
      Search:='"color"';
      CIR_6_SL:=Search_Line(CIR_02_SL, Search, circle);
      if CIR_6_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s6:=circle.Strings[CIR_6_SL];
        circle_s6:=DelStartEnd(new_change_str(Search, circle_s6));
        mbColorPreview7.Color:=HexToTColor(circle_s6);
        circle_s6:='#' + circle_s6;
        Edit53.Text:=circle_s6;
      end;

      // Второй круг
      // Видимость / 7
      Search:='"enabled"';
      CIR_7_SL:=Search_Line(CIR_03_SL, Search, circle);
      if CIR_7_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s7:=circle.Strings[CIR_7_SL];
        circle_s7:=new_change_str(Search, circle_s7);
        if circle_s7='true' then RadioButton109.Checked:=True else
        if circle_s7='false' then RadioButton110.Checked:=True else
        begin
          ShowMessage(error_message(circle_name, circle_s7, CIR_7_SL));
          Application.Terminate;
        end;
      end;

      // Дистанция / 8
      Search:='"distance"';
      CIR_8_SL:=Search_Line(CIR_03_SL, Search, circle);
      if CIR_8_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s8:=circle.Strings[CIR_8_SL];
        circle_s8:=new_change_str(Search, circle_s8);
        GroupBox93.Caption:='Круг '+circle_s8+' м.';
        GroupBox93.Refresh;
        SpinEdit55.Value:=StrToInt(circle_s8);
        TrackBar42.Position:=SpinEdit55.Value;
      end;

      // Толщина / 9
      Search:='"thickness"';
      CIR_9_SL:=Search_Line(CIR_03_SL, Search, circle);
      if CIR_9_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s9:=circle.Strings[CIR_9_SL];
        circle_s9:=new_change_str(Search, circle_s9);
        circle_s9:=currect_float_for4(circle_s9);
        FloatSpinEdit4.Value:=StrToFloat(circle_s9);
        TrackBar43.Position:=StrToInt(FloatToStr(FloatSpinEdit4.Value*100));
      end;

      // Прозрачность / 10
      Search:='"alpha"';
      CIR_10_SL:=Search_Line(CIR_03_SL, Search, circle);
      if CIR_10_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s10:=circle.Strings[CIR_10_SL];
        circle_s10:=new_change_str(Search, circle_s10);
        SpinEdit56.Value:=StrToInt(circle_s10);
        TrackBar44.Position:=SpinEdit56.Value;
      end;

      // Цвет / 11
      Search:='"color"';
      CIR_11_SL:=Search_Line(CIR_03_SL, Search, circle);
      if CIR_11_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s11:=circle.Strings[CIR_11_SL];
        circle_s11:=DelStartEnd(new_change_str(Search, circle_s11));
        mbColorPreview8.Color:=HexToTColor(circle_s11);
        circle_s11:='#' + circle_s11;
        Edit54.Text:=circle_s11;
      end;
    end;}}}

    // Дальнобойность арты / 12
    CIR_04_SL:=Search_Line(CIR_0_SL, '"artillery"', circle);
    if CIR_04_SL=-1 then error_line('"artillery"', circle_name) else
    begin
      // Видимость / 12
      Search:='"enabled"';
      CIR_12_SL:=Search_Line(CIR_04_SL, Search, circle);
      if CIR_12_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s12:=circle.Strings[CIR_12_SL];
        circle_s12:=new_change_str(Search, circle_s12);
        if circle_s12='true' then RadioButton111.Checked:=True else
        if circle_s12='false' then RadioButton112.Checked:=True else
        begin
          ShowMessage(error_message(circle_name, circle_s12, CIR_12_SL));
          Application.Terminate;
        end;
      end;

      // Толщина / 13
      Search:='"thickness"';
      CIR_13_SL:=Search_Line(CIR_04_SL, Search, circle);
      if CIR_13_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s13:=circle.Strings[CIR_13_SL];
        circle_s13:=new_change_str(Search, circle_s13);
        circle_s13:=currect_float_for4(circle_s13);
        FloatSpinEdit5.Value:=StrToFloat(circle_s13);
        TrackBar45.Position:=StrToInt(FloatToStr(FloatSpinEdit5.Value*100));
      end;

      // Прозрачность / 14
      Search:='"alpha"';
      CIR_14_SL:=Search_Line(CIR_04_SL, Search, circle);
      if CIR_14_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s14:=circle.Strings[CIR_14_SL];
        circle_s14:=new_change_str(Search, circle_s14);
        SpinEdit57.Value:=StrToInt(circle_s14);
        TrackBar46.Position:=SpinEdit57.Value;
      end;

      // Цвет / 15
      Search:='"color"';
      CIR_15_SL:=Search_Line(CIR_04_SL, Search, circle);
      if CIR_15_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s15:=circle.Strings[CIR_15_SL];
        circle_s15:=DelStartEnd(new_change_str(Search, circle_s15));
        mbColorPreview9.Color:=HexToTColor(circle_s15);
        circle_s15:='#' + circle_s15;
        Edit55.Text:=circle_s15;
      end;
    end;

    // Максимальная дальность полета снаряда для пулеметных танков / 16
    CIR_05_SL:=Search_Line(CIR_0_SL, '"shell"', circle);
    if CIR_05_SL=-1 then error_line('"shell"', circle_name) else
    begin
      // Видимость / 16
      Search:='"enabled"';
      CIR_16_SL:=Search_Line(CIR_05_SL, Search, circle);
      if CIR_16_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s16:=circle.Strings[CIR_16_SL];
        circle_s16:=new_change_str(Search, circle_s16);
        if circle_s16='true' then RadioButton113.Checked:=True else
        if circle_s16='false' then RadioButton114.Checked:=True else
        begin
          ShowMessage(error_message(circle_name, circle_s16, CIR_16_SL));
          Application.Terminate;
        end;
      end;

      // Толщина / 17
      Search:='"thickness"';
      CIR_17_SL:=Search_Line(CIR_05_SL, Search, circle);
      if CIR_17_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s17:=circle.Strings[CIR_17_SL];
        circle_s17:=new_change_str(Search, circle_s17);
        circle_s17:=currect_float_for4(circle_s17);
        FloatSpinEdit6.Value:=StrToFloat(circle_s17);
        TrackBar47.Position:=StrToInt(FloatToStr(FloatSpinEdit6.Value*100));
      end;

      // Прозрачность / 18
      Search:='"alpha"';
      CIR_18_SL:=Search_Line(CIR_05_SL, Search, circle);
      if CIR_18_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s18:=circle.Strings[CIR_18_SL];
        circle_s18:=new_change_str(Search, circle_s18);
        SpinEdit58.Value:=StrToInt(circle_s18);
        TrackBar48.Position:=SpinEdit58.Value;
      end;

      // Цвет / 19
      Search:='"color"';
      CIR_19_SL:=Search_Line(CIR_05_SL, Search, circle);
      if CIR_19_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s19:=circle.Strings[CIR_19_SL];
        circle_s19:=DelStartEnd(new_change_str(Search, circle_s19));
        mbColorPreview10.Color:=HexToTColor(circle_s19);
        circle_s19:='#' + circle_s19;
        Edit56.Text:=circle_s19;
      end;
    end;

    { TODO : Доработать! }
    (*

    // Дальность обзора / 20
    CIR_06_SL:=Search_Line(CIR_0_SL, '"view"', circle);
    if CIR_06_SL=-1 then error_line('"view"', circle_name) else
    begin
      // Видимость / 20
      Search:='"enabled"';
      CIR_20_SL:=Search_Line(CIR_06_SL, Search, circle);
      if CIR_20_SL=-1 then error_line(Search, circle_name) else
      begin
        circle_s20:=circle.Strings[CIR_20_SL];
        circle_s20:=new_change_str(Search, circle_s20);
        if circle_s20='true' then RadioButton115.Checked:=True else
        if circle_s20='false' then RadioButton116.Checked:=True else
        begin
          ShowMessage(error_message(circle_name, circle_s20, CIR_20_SL));
          Application.Terminate;
        end;
      end;

      // Дальность обзора / активный круг / 21
      CIR_07_SL:=Search_Line(CIR_06_SL, '"enabled"', circle);
      if CIR_07_SL=-1 then error_line('"enabled"', circle_name) else
      begin
          // Дистнция /
        Search:='"distance"';
        CIR_28_SL:=Search_Line(CIR_07_SL, Search, circle);
        if CIR_28_SL=-1 then error_line(Search, circle_name) else
        begin
          circle_s28:=circle.Strings[CIR_28_SL];
          circle_s28:=DelStartEnd(new_change_str(Search, circle_s28));
          Edit58.Text:=circle_s28;
        end;
          // Масштаб / 20
        Search:='"scale"';
        CIR_27_SL:=Search_Line(CIR_07_SL, Search, circle);
        if CIR_27_SL=-1 then error_line(Search, circle_name) else
        begin
          circle_s27:=circle.Strings[CIR_27_SL];
          circle_s27:=new_change_str(Search, circle_s27);
          circle_s27:=currect_float_for4(circle_s27);
          FloatSpinEdit8.Value:=StrToFloat(circle_s27);
          TrackBar51.Position:=StrToInt(FloatToStr(FloatSpinEdit8.Value*100));
        end;
        // Толщина / 21
        Search:='"thickness"';
        CIR_21_SL:=Search_Line(CIR_07_SL, Search, circle);
        if CIR_21_SL=-1 then error_line(Search, circle_name) else
        begin
          circle_s21:=circle.Strings[CIR_21_SL];
          circle_s21:=new_change_str(Search, circle_s21);
          circle_s21:=currect_float_for4(circle_s21);
          FloatSpinEdit7.Value:=StrToFloat(circle_s21);
          TrackBar49.Position:=StrToInt(FloatToStr(FloatSpinEdit7.Value*100));
        end;

        // Прозрачность / 22
        Search:='"alpha"';
        CIR_22_SL:=Search_Line(CIR_07_SL, Search, circle);
        if CIR_22_SL=-1 then error_line(Search, circle_name) else
        begin
          circle_s22:=circle.Strings[CIR_22_SL];
          circle_s22:=new_change_str(Search, circle_s22);
          SpinEdit59.Value:=StrToInt(circle_s22);
          TrackBar50.Position:=SpinEdit59.Value;
        end;

        // Цвет / 23
        Search:='"color"';
        CIR_23_SL:=Search_Line(CIR_07_SL, Search, circle);
        if CIR_23_SL=-1 then error_line(Search, circle_name) else
        begin
          circle_s23:=circle.Strings[CIR_23_SL];
          circle_s23:=DelStartEnd(new_change_str(Search, circle_s23));
          mbColorPreview11.Color:=HexToTColor(circle_s23);
          circle_s23:='#' + circle_s23;
          Edit57.Text:=circle_s23;
        end;
      end;
    end;
    *)

  end;
end;

// Процедура сохранения в файл minimapCircles.xc
procedure TXCTuner_Form1.circlemap_save;
begin
  if (RadioButton105.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton107.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton109.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton111.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton113.Checked=True) then chek5:='true' else chek5:='false';
  if (RadioButton115.Checked=True) then chek6:='true' else chek6:='false';

  //Общая видимость / 1
  circle_s1:=circle.Strings[CIR_1_SL];
  circle_s1:=Smart_Replacing('"enabled"', circle_s1, chek1);
  circle.Delete(CIR_1_SL);
  circle.Insert(CIR_1_SL, circle_s1);

  { TODO : Доработать! }
  (*
  // Основные круги
  // Первый круг
  // Видимость / 2
  circle_s2:=circle.Strings[CIR_2_SL];
  circle_s2:=Smart_Replacing('"enabled"', circle_s2, chek2);
  circle.Delete(CIR_2_SL);
  circle.Insert(CIR_2_SL, circle_s2);

  // Дистанция / 3
  circle_s3:=circle.Strings[CIR_3_SL];
  circle_s3:=Smart_Replacing('"distance"', circle_s3, IntToStr(SpinEdit53.Value));
  circle.Delete(CIR_3_SL);
  circle.Insert(CIR_3_SL, circle_s3);

  // Толщина / 4
  circle_s4:=circle.Strings[CIR_4_SL];
  circle_s4:=Smart_Replacing('"thickness"', circle_s4,
                              currect_float_back(FloatToStr(FloatSpinEdit3.Value)));
  circle.Delete(CIR_4_SL);
  circle.Insert(CIR_4_SL, circle_s4);

  // Прозрачность / 5
  circle_s5:=circle.Strings[CIR_5_SL];
  circle_s5:=Smart_Replacing('"alpha"', circle_s5, IntToStr(SpinEdit54.Value));
  circle.Delete(CIR_5_SL);
  circle.Insert(CIR_5_SL, circle_s5);

  // Цвет / 6
  circle_s6:=circle.Strings[CIR_6_SL];
  circle_s6:=Smart_Replacing('"color"', circle_s6, RecStartEnd(Edit53.Text));
  circle.Delete(CIR_6_SL);
  circle.Insert(CIR_6_SL, circle_s6);

  // Второй круг
  // Видимость / 7
  circle_s7:=circle.Strings[CIR_7_SL];
  circle_s7:=Smart_Replacing('"enabled"', circle_s7, chek3);
  circle.Delete(CIR_7_SL);
  circle.Insert(CIR_7_SL, circle_s7);

  // Дистанция / 8
  circle_s8:=circle.Strings[CIR_8_SL];
  circle_s8:=Smart_Replacing('"distance"', circle_s8, IntToStr(SpinEdit55.Value));
  circle.Delete(CIR_8_SL);
  circle.Insert(CIR_8_SL, circle_s8);

  // Толщина / 9
  circle_s9:=circle.Strings[CIR_9_SL];
  circle_s9:=Smart_Replacing('"thickness"', circle_s9,
                              currect_float_back(FloatToStr(FloatSpinEdit4.Value)));
  circle.Delete(CIR_9_SL);
  circle.Insert(CIR_9_SL, circle_s9);

  // Прозрачность / 10
  circle_s10:=circle.Strings[CIR_10_SL];
  circle_s10:=Smart_Replacing('"alpha"', circle_s10, IntToStr(SpinEdit56.Value));
  circle.Delete(CIR_10_SL);
  circle.Insert(CIR_10_SL, circle_s10);

  // Цвет / 11
  circle_s11:=circle.Strings[CIR_11_SL];
  circle_s11:=Smart_Replacing('"color"', circle_s11, RecStartEnd(Edit54.Text));
  circle.Delete(CIR_11_SL);
  circle.Insert(CIR_11_SL, circle_s11);

  *)

  // Дальнобойность арты / 12
  // Видимость / 12
  circle_s12:=circle.Strings[CIR_12_SL];
  circle_s12:=Smart_Replacing('"enabled"', circle_s12, chek4);
  circle.Delete(CIR_12_SL);
  circle.Insert(CIR_12_SL, circle_s12);

  // Толщина / 13
  circle_s13:=circle.Strings[CIR_13_SL];
  circle_s13:=Smart_Replacing('"thickness"', circle_s13,
                              currect_float_back(FloatToStr(FloatSpinEdit5.Value)));
  circle.Delete(CIR_13_SL);
  circle.Insert(CIR_13_SL, circle_s13);

  // Прозрачность / 14
  circle_s14:=circle.Strings[CIR_14_SL];
  circle_s14:=Smart_Replacing('"alpha"', circle_s14, IntToStr(SpinEdit57.Value));
  circle.Delete(CIR_14_SL);
  circle.Insert(CIR_14_SL, circle_s14);

  // Цвет / 15
  circle_s15:=circle.Strings[CIR_15_SL];
  circle_s15:=Smart_Replacing('"color"', circle_s15, RecStartEnd(Edit55.Text));
  circle.Delete(CIR_15_SL);
  circle.Insert(CIR_15_SL, circle_s15);

  // Пулеметы
  // Видимость / 16
  circle_s16:=circle.Strings[CIR_16_SL];
  circle_s16:=Smart_Replacing('"enabled"', circle_s16, chek5);
  circle.Delete(CIR_16_SL);
  circle.Insert(CIR_16_SL, circle_s16);

  // Толщина / 17
  circle_s17:=circle.Strings[CIR_17_SL];
  circle_s17:=Smart_Replacing('"thickness"', circle_s17,
                              currect_float_back(FloatToStr(FloatSpinEdit6.Value)));
  circle.Delete(CIR_17_SL);
  circle.Insert(CIR_17_SL, circle_s17);

  // Прозрачность / 18
  circle_s18:=circle.Strings[CIR_18_SL];
  circle_s18:=Smart_Replacing('"alpha"', circle_s18, IntToStr(SpinEdit58.Value));
  circle.Delete(CIR_18_SL);
  circle.Insert(CIR_18_SL, circle_s18);

  // Цвет / 19
  circle_s19:=circle.Strings[CIR_19_SL];
  circle_s19:=Smart_Replacing('"color"', circle_s19, RecStartEnd(Edit56.Text));
  circle.Delete(CIR_19_SL);
  circle.Insert(CIR_19_SL, circle_s19);

  { TODO : Доработать! }
  (*
  // Дальность обзора / 20
  // Видимость / 20
  circle_s20:=circle.Strings[CIR_20_SL];
  circle_s20:=Smart_Replacing('"enabled"', circle_s20, chek6);
  circle.Delete(CIR_20_SL);
  circle.Insert(CIR_20_SL, circle_s20);

  // Толщина / 21
  circle_s21:=circle.Strings[CIR_21_SL];
  circle_s21:=Smart_Replacing('"thickness"', circle_s21,
                              currect_float_back(FloatToStr(FloatSpinEdit7.Value)));
  circle.Delete(CIR_21_SL);
  circle.Insert(CIR_21_SL, circle_s21);

  // Прозрачность / 22
  circle_s22:=circle.Strings[CIR_22_SL];
  circle_s22:=Smart_Replacing('"alpha"', circle_s22, IntToStr(SpinEdit59.Value));
  circle.Delete(CIR_22_SL);
  circle.Insert(CIR_22_SL, circle_s22);

  // Цвет / 23
  circle_s23:=circle.Strings[CIR_23_SL];
  circle_s23:=Smart_Replacing('"color"', circle_s23, RecStartEnd(Edit57.Text));
  circle.Delete(CIR_23_SL);
  circle.Insert(CIR_23_SL, circle_s23);

  *)

  circle.SaveToFile(dir_xvm+circle_name);
end;

// Процедура загрузки данных из файла userInfo.xc в программу /
procedure TXCTuner_Form1.userinfo_loading;
var temp: string;
begin
  userInfo.Clear;
  userInfo.LoadFromFile(dir_xvm+userInfo_name);
  UI0_SL:=Search_Line(0, '"userInfo"', userInfo);
  if UI0_SL=-1 then error_line('"userInfo"', userInfo_name) else
  begin
    // Номер начальной страницы // 1
    Search:='"startPage"';
    UI1_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI1_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s1:=userInfo.Strings[UI1_SL];
      UserInfo_s1:=new_change_str(Search, UserInfo_s1);
      ComboBox2.ItemIndex:=StrToInt(UserInfo_s1) - 1;
    end;

    // Номер колонки для сортировки // 2
    Search:='"sortColumn"';
    UI2_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI2_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s2:=userInfo.Strings[UI2_SL];
      UserInfo_s2:=new_change_str(Search, UserInfo_s2);
      if (UserInfo_s2[1] <> '-') then
        ComboBox3.ItemIndex:=StrToInt(UserInfo_s2) - 1;
      if (UserInfo_s2[1] = '-') then
        begin
          temp := Copy(UserInfo_s2, 2, Length(UserInfo_s2));
          ComboBox3.ItemIndex:=StrToInt(temp) + 7;
        end;
    end;

    // Показывать расширенные данные в профиле // 3
    Search:='"showExtraDataInProfile"';
    UI3_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI3_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s3:=userInfo.Strings[UI3_SL];
      UserInfo_s3:=new_change_str(Search, UserInfo_s3);
      if UserInfo_s3='true' then RadioButton47.Checked:=True else
      if UserInfo_s3='false' then RadioButton48.Checked:=True else
      begin
        ShowMessage(error_message(userInfo_name, UserInfo_s3, UI3_SL));
        Application.Terminate;
      end;
    end;

    // Включить фильтр отображения танков в ангаре по умолчанию // 4
    Search:='"inHangarFilterEnabled"';
    UI4_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI4_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s4:=userInfo.Strings[UI4_SL];
      UserInfo_s4:=new_change_str(Search, UserInfo_s4);
      if UserInfo_s4='true' then RadioButton49.Checked:=True else
      if UserInfo_s4='false' then RadioButton50.Checked:=True else
      begin
        ShowMessage(error_message(userInfo_name, UserInfo_s4, UI4_SL));
        Application.Terminate;
      end;
    end;

    // Показывать фильтры отображения танков // 5
    Search:='"showFilters"';
    UI5_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI5_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s5:=userInfo.Strings[UI5_SL];
      UserInfo_s5:=new_change_str(Search, UserInfo_s5);
      if UserInfo_s5='true' then RadioButton51.Checked:=True else
      if UserInfo_s5='false' then RadioButton52.Checked:=True else
      begin
        ShowMessage(error_message(userInfo_name, UserInfo_s5, UI5_SL));
        Application.Terminate;
      end;
    end;

    // Выбрать поле ввода фильтра по умолчанию // 6
    Search:='"filterFocused"';
    UI6_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI6_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s6:=userInfo.Strings[UI6_SL];
      UserInfo_s6:=new_change_str(Search, UserInfo_s6);
      if UserInfo_s6='true' then RadioButton53.Checked:=True else
      if UserInfo_s6='false' then RadioButton54.Checked:=True else
      begin
        ShowMessage(error_message(userInfo_name, UserInfo_s6, UI6_SL));
        Application.Terminate;
      end;
    end;

    // Значение фильтра по умолчанию // 7
    Search:='"defaultFilterValue"';
    UI7_SL:=Search_Line(UI0_SL, Search, userInfo);
    if UI7_SL=-1 then error_line(Search, userInfo_name) else
    begin
      UserInfo_s7:=userInfo.Strings[UI7_SL];
      UserInfo_s7:=new_change_str(Search, UserInfo_s7);
      Edit7.Text:=DelStartEnd(UserInfo_s7);
    end;
  end;
  //edithint();
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
  if (ComboBox3.ItemIndex <= 7) then
    begin
      UserInfo_s2:=Smart_Replacing('"sortColumn"', UserInfo_s2, IntToStr(ComboBox3.ItemIndex+1));
      userInfo.Delete(UI2_SL);
      userInfo.Insert(UI2_SL, UserInfo_s2);
    end;
  if (ComboBox3.ItemIndex >= 8) then
    begin
      UserInfo_s2:=Smart_Replacing('"sortColumn"', UserInfo_s2, '-'+IntToStr((ComboBox3.ItemIndex-7)));
      userInfo.Delete(UI2_SL);
      userInfo.Insert(UI2_SL, UserInfo_s2);
    end;

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

  userInfo.SaveToFile(dir_xvm+userInfo_name);
end;

// загрузка из файла playersPanel.xc
procedure TXCTuner_Form1.pl_panel_loading;
begin
  pl_panel.Clear;
  pl_panel.LoadFromFile(dir_xvm+pl_panel_name);
  pl0_SL:=Search_Line(0, '"playersPanel"', pl_panel);
  if pl0_SL=-1 then error_line('"playersPanel"', pl_panel_name) else
  begin
    // Прозрачность в процентах ушей // 1
    Search:='"alpha"';
    pl1_SL:=Search_Line(pl0_SL, Search, pl_panel);
    if pl1_SL=-1 then error_line(Search, pl_panel_name) else
    begin
      pl_s1:=pl_panel.Strings[pl1_SL];
      pl_s1:=new_change_str(Search, pl_s1);
      SpinEdit20.Value:=StrToInt(pl_s1);
      TrackBar4.Position:=SpinEdit20.Value;
    end;

    // Прозрачность в процентах иконок // 2
    Search:='"iconAlpha"';
    pl2_SL:=Search_Line(pl0_SL, Search, pl_panel);
    if pl2_SL=-1 then error_line(Search, pl_panel_name) else
    begin
      pl_s2:=pl_panel.Strings[pl2_SL];
      pl_s2:=new_change_str(Search, pl_s2);
      SpinEdit21.Value:=StrToInt(pl_s2);
      TrackBar5.Position:=SpinEdit21.Value;
    end;

    // убрать отображение иконки взвода // 3
    Search:='"removeSquadIcon"';
    pl3_SL:=Search_Line(pl0_SL, Search, pl_panel);
    if pl3_SL=-1 then error_line(Search, pl_panel_name) else
    begin
      pl_s3:=pl_panel.Strings[pl3_SL];
      pl_s3:=new_change_str(Search, pl_s3);
      if pl_s3='true' then RadioButton76.Checked:=True else
      if pl_s3='false' then RadioButton75.Checked:=True else
      begin
        ShowMessage(error_message(pl_panel_name, pl_s3, pl3_SL));
        Application.Terminate;
      end;
    end;

    // убрать переключатель режимов ушей мышкой // 4
    Search:='"removePanelsModeSwitcher"';
    pl4_SL:=Search_Line(pl0_SL, Search, pl_panel);
    if pl4_SL=-1 then error_line(Search, pl_panel_name) else
    begin
      pl_s4:=pl_panel.Strings[pl4_SL];
      pl_s4:=new_change_str(Search, pl_s4);
      if pl_s4='true' then RadioButton78.Checked:=True else
      if pl_s4='false' then RadioButton77.Checked:=True else
      begin
        ShowMessage(error_message(pl_panel_name, pl_s4, pl4_SL));
        Application.Terminate;
      end;
    end;

    // Переключатель режима ушей // 41
    Search:='"startMode"';
    pl41_SL:=Search_Line(pl0_SL, Search, pl_panel);
    if pl41_SL=-1 then error_line(Search, pl_panel_name) else
    begin
      pl_s41:=pl_panel.Strings[pl41_SL];
      pl_s41:=new_change_str(Search, pl_s41);
      if pl_s41='"none"' then ComboBox8.ItemIndex:=0 else
      if pl_s41='"short"' then ComboBox8.ItemIndex:=1 else
      if pl_s41='"medium"' then ComboBox8.ItemIndex:=2 else
      if pl_s41='"medium2"' then ComboBox8.ItemIndex:=3 else
      if pl_s41='"large"' then ComboBox8.ItemIndex:=4 else
      begin
        ShowMessage('Ошибка считывания!' +
        ' Возможные значения для "startMode" это: "none", "short", "medium", "medium2", "large"');
        Application.Terminate;
      end;
    end;

    // клановые эмблемы  // 4
    pl00_SL:=Search_Line(pl0_SL, '"clanIcon"', pl_panel);
    if pl00_SL=-1 then error_line('"clanIcon"', pl_panel_name) else
    begin
      // видимость // 4.1
      Search:='"show"';
      pl5_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl5_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s5:=pl_panel.Strings[pl5_SL];
        pl_s5:=new_change_str(Search, pl_s5);
        if pl_s5='true' then RadioButton79.Checked:=True else
        if pl_s5='false' then RadioButton80.Checked:=True else
        begin
          ShowMessage(error_message(pl_panel_name, pl_s5, pl5_SL));
          Application.Terminate;
        end;
      end;

      // Позиция x (слева) // 4.2
      Search:='"x"';
      pl6_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl6_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s6:=pl_panel.Strings[pl6_SL];
        pl_s6:=new_change_str(Search, pl_s6);
        SpinEdit22.Value:=StrToInt(pl_s6);
        TrackBar6.Position:=SpinEdit22.Value;
      end;

      // Позиция y (слева) // 4.3
      Search:='"y"';
      pl7_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl7_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s7:=pl_panel.Strings[pl7_SL];
        pl_s7:=new_change_str(Search, pl_s7);
        SpinEdit23.Value:=StrToInt(pl_s7);
        TrackBar7.Position:=SpinEdit23.Value;
      end;

      // Позиция x (справа) // 4.4
      Search:='"xr"';
      pl8_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl8_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s8:=pl_panel.Strings[pl8_SL];
        pl_s8:=new_change_str(Search, pl_s8);
        SpinEdit24.Value:=StrToInt(pl_s8);
        TrackBar8.Position:=SpinEdit24.Value;
      end;

      // Позиция y (справа) // 4.5
      Search:='"yr"';
      pl9_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl9_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s9:=pl_panel.Strings[pl9_SL];
        pl_s9:=new_change_str(Search, pl_s9);
        SpinEdit25.Value:=StrToInt(pl_s9);
        TrackBar9.Position:=SpinEdit25.Value;
      end;

      // Ширина иконки // 4.6
      Search:='"w"';
      pl10_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl10_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s10:=pl_panel.Strings[pl10_SL];
        pl_s10:=new_change_str(Search, pl_s10);
        SpinEdit26.Value:=StrToInt(pl_s10);
        TrackBar10.Position:=SpinEdit26.Value;
      end;

      // Высота иконки // 4.7
      Search:='"h"';
      pl11_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl11_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s11:=pl_panel.Strings[pl11_SL];
        pl_s11:=new_change_str(Search, pl_s11);
        SpinEdit27.Value:=StrToInt(pl_s11);
        TrackBar11.Position:=SpinEdit27.Value;
      end;

      // Прозрачность // 4.8
      Search:='"alpha"';
      pl12_SL:=Search_Line(pl00_SL, Search, pl_panel);
      if pl12_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s12:=pl_panel.Strings[pl12_SL];
        pl_s12:=new_change_str(Search, pl_s12);
        SpinEdit28.Value:=StrToInt(pl_s12);
        TrackBar12.Position:=SpinEdit28.Value;
      end;
    end;

    // Маркер статуса засвета  // 5
    pl000_SL:=Search_Line(pl0_SL, '"enemySpottedMarker"', pl_panel);
    if pl00_SL=-1 then error_line('"enemySpottedMarker"', pl_panel_name) else
    begin
      // видимость // 5.1
      Search:='"enabled"';
      pl13_SL:=Search_Line(pl000_SL, Search, pl_panel);
      if pl13_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s13:=pl_panel.Strings[pl13_SL];
        pl_s13:=new_change_str(Search, pl_s13);
        if pl_s13='true' then RadioButton83.Checked:=True else
        if pl_s13='false' then RadioButton84.Checked:=True else
        begin
          ShowMessage(error_message(pl_panel_name, pl_s13, pl13_SL));
          Application.Terminate;
        end;
      end;

      // смещение по X // 5.2
      Search:='"Xoffset"';
      pl14_SL:=Search_Line(pl000_SL, Search, pl_panel);
      if pl14_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s14:=pl_panel.Strings[pl14_SL];
        pl_s14:=new_change_str(Search, pl_s14);
        SpinEdit29.Value:=StrToInt(pl_s14);
        TrackBar13.Position:=SpinEdit29.Value;
      end;

      // смещение по Y // 5.3
      Search:='"Yoffset"';
      pl15_SL:=Search_Line(pl000_SL, Search, pl_panel);
      if pl15_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s15:=pl_panel.Strings[pl15_SL];
        pl_s15:=new_change_str(Search, pl_s15);
        SpinEdit30.Value:=StrToInt(pl_s15);
        TrackBar14.Position:=SpinEdit30.Value;
      end;

      // Формат  // 6
      pl04_SL:=Search_Line(pl000_SL, '"format"', pl_panel);
      if pl04_SL=-1 then error_line('"format"', pl_panel_name) else
      begin
        // Этот враг никогда не светился // 6.1
        Search:='"neverSeen"';
        pl16_SL:=Search_Line(pl04_SL, Search, pl_panel);
        if pl16_SL=-1 then error_line(Search, pl_panel_name) else
        begin
          pl_s16:=pl_panel.Strings[pl16_SL];
          pl_s16:=new_change_str(Search, pl_s16);
          Edit27.Text:=DelStartEnd(pl_s16);
        end;

        // Этот враг светился хотя бы один раз // 6.2
        Search:='"lost"';
        pl17_SL:=Search_Line(pl04_SL, Search, pl_panel);
        if pl17_SL=-1 then error_line(Search, pl_panel_name) else
        begin
          pl_s17:=pl_panel.Strings[pl17_SL];
          pl_s17:=new_change_str(Search, pl_s17);
          Edit28.Text:=DelStartEnd(pl_s17);
        end;

        // Виден на миникарте прямо сейчас // 6.3
        Search:='"revealed"';
        pl18_SL:=Search_Line(pl04_SL, Search, pl_panel);
        if pl18_SL=-1 then error_line(Search, pl_panel_name) else
        begin
          pl_s18:=pl_panel.Strings[pl18_SL];
          pl_s18:=new_change_str(Search, pl_s18);
          Edit29.Text:=DelStartEnd(pl_s18);
        end;

        // Уничтоженный враг // 6.4
        Search:='"dead"';
        pl19_SL:=Search_Line(pl04_SL, Search, pl_panel);
        if pl19_SL=-1 then error_line(Search, pl_panel_name) else
        begin
          pl_s19:=pl_panel.Strings[pl19_SL];
          pl_s19:=new_change_str(Search, pl_s19);
          Edit30.Text:=DelStartEnd(pl_s19);
        end;

        // Специфичные значения для артиллерии  // 7
        pl05_SL:=Search_Line(pl04_SL, '"artillery"', pl_panel);
        if pl05_SL=-1 then error_line('"artillery"', pl_panel_name) else
        begin
          // Этот враг никогда не светился // 7.1
          Search:='"neverSeen"';
          pl20_SL:=Search_Line(pl05_SL, Search, pl_panel);
          if pl20_SL=-1 then error_line(Search, pl_panel_name) else
          begin
            pl_s20:=pl_panel.Strings[pl20_SL];
            pl_s20:=new_change_str(Search, pl_s20);
            Edit31.Text:=DelStartEnd(pl_s20);
          end;

          // Этот враг светился хотя бы один раз // 7.2
          Search:='"lost"';
          pl21_SL:=Search_Line(pl05_SL, Search, pl_panel);
          if pl21_SL=-1 then error_line(Search, pl_panel_name) else
          begin
            pl_s21:=pl_panel.Strings[pl21_SL];
            pl_s21:=new_change_str(Search, pl_s21);
            Edit32.Text:=DelStartEnd(pl_s21);
          end;

          // Виден на миникарте прямо сейчас // 7.3
          Search:='"revealed"';
          pl22_SL:=Search_Line(pl05_SL, Search, pl_panel);
          if pl22_SL=-1 then error_line(Search, pl_panel_name) else
          begin
            pl_s22:=pl_panel.Strings[pl22_SL];
            pl_s22:=new_change_str(Search, pl_s22);
            Edit33.Text:=DelStartEnd(pl_s22);
          end;

          // Уничтоженный враг // 7.4
          Search:='"dead"';
          pl23_SL:=Search_Line(pl05_SL, Search, pl_panel);
          if pl23_SL=-1 then error_line(Search, pl_panel_name) else
          begin
            pl_s23:=pl_panel.Strings[pl23_SL];
            pl_s23:=new_change_str(Search, pl_s23);
            Edit34.Text:=DelStartEnd(pl_s23);
          end;
        end;
      end;
    end;
    // Режим ушей "medium" - первые средние уши в игре  // 8
    pl06_SL:=Search_Line(pl0_SL, '"medium"', pl_panel);
    if pl06_SL=-1 then error_line('"medium"', pl_panel_name) else
    begin
      // Ширина поля имени игрока // 8.1
      Search:='"width"';
      pl24_SL:=Search_Line(pl06_SL, Search, pl_panel);
      if pl24_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s24:=pl_panel.Strings[pl24_SL];
        pl_s24:=new_change_str(Search, pl_s24);
        SpinEdit31.Value:=StrToInt(pl_s24);
        TrackBar15.Position:=SpinEdit31.Value;
      end;

      // Формат отображения для левой панели // 8.2
      Search:='"formatLeft"';
      pl25_SL:=Search_Line(pl06_SL, Search, pl_panel);
      if pl25_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s25:=pl_panel.Strings[pl25_SL];
        pl_s25:=new_change_str(Search, pl_s25);
        Edit35.Text:=DelStartEnd(pl_s25);
      end;

      // Формат отображения для правой панели // 8.3
      Search:='"formatRight"';
      pl26_SL:=Search_Line(pl06_SL, Search, pl_panel);
      if pl26_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s26:=pl_panel.Strings[pl26_SL];
        pl_s26:=new_change_str(Search, pl_s26);
        Edit36.Text:=DelStartEnd(pl_s26);
      end;
    end;

    // Режим ушей "medium2" - вторые средние уши в игре  // 9
    pl07_SL:=Search_Line(pl0_SL, '"medium2"', pl_panel);
    if pl07_SL=-1 then error_line('"medium2"', pl_panel_name) else
    begin
      // Ширина поля названия танка // 9.1
      Search:='"width"';
      pl27_SL:=Search_Line(pl07_SL, Search, pl_panel);
      if pl27_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s27:=pl_panel.Strings[pl27_SL];
        pl_s27:=new_change_str(Search, pl_s27);
        SpinEdit32.Value:=StrToInt(pl_s27);
        TrackBar16.Position:=SpinEdit32.Value;
      end;

      // Формат отображения для левой панели // 8.2
      Search:='"formatLeft"';
      pl28_SL:=Search_Line(pl07_SL, Search, pl_panel);
      if pl28_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s28:=pl_panel.Strings[pl28_SL];
        pl_s28:=new_change_str(Search, pl_s28);
        Edit37.Text:=DelStartEnd(pl_s28);
      end;

      // Формат отображения для правой панели // 8.3
      Search:='"formatRight"';
      pl29_SL:=Search_Line(pl07_SL, Search, pl_panel);
      if pl29_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s29:=pl_panel.Strings[pl29_SL];
        pl_s29:=new_change_str(Search, pl_s29);
        Edit38.Text:=DelStartEnd(pl_s29);
      end;
    end;

    // Режим ушей "large" - широкие уши в игре  // 10
    pl08_SL:=Search_Line(pl0_SL, '"large"', pl_panel);
    if pl08_SL=-1 then error_line('"large"', pl_panel_name) else
    begin
      // Ширина поля названия танка // 10.1
      Search:='"width"';
      pl30_SL:=Search_Line(pl08_SL, Search, pl_panel);
      if pl30_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s30:=pl_panel.Strings[pl30_SL];
        pl_s30:=new_change_str(Search, pl_s30);
        SpinEdit33.Value:=StrToInt(pl_s30);
        TrackBar17.Position:=SpinEdit33.Value;
      end;

      // Формат отображения имени игрока // 10.2
      Search:='"nickFormatLeft"';
      pl31_SL:=Search_Line(pl08_SL, Search, pl_panel);
      if pl31_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s31:=pl_panel.Strings[pl31_SL];
        pl_s31:=new_change_str(Search, pl_s31);
        Edit39.Text:=DelStartEnd(pl_s31);
      end;

      // Формат отображения имени игрока // 10.3
      Search:='"nickFormatRight"';
      pl32_SL:=Search_Line(pl08_SL, Search, pl_panel);
      if pl32_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s32:=pl_panel.Strings[pl32_SL];
        pl_s32:=new_change_str(Search, pl_s32);
        Edit40.Text:=DelStartEnd(pl_s32);
      end;

      // Формат отображения названия танка // 10.4
      Search:='"vehicleFormatLeft"';
      pl33_SL:=Search_Line(pl08_SL, Search, pl_panel);
      if pl33_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s33:=pl_panel.Strings[pl33_SL];
        pl_s33:=new_change_str(Search, pl_s33);
        Edit41.Text:=DelStartEnd(pl_s33);
      end;

      // Формат отображения названия танка // 10.5
      Search:='"vehicleFormatRight"';
      pl34_SL:=Search_Line(pl08_SL, Search, pl_panel);
      if pl34_SL=-1 then error_line(Search, pl_panel_name) else
      begin
        pl_s34:=pl_panel.Strings[pl34_SL];
        pl_s34:=new_change_str(Search, pl_s34);
        Edit42.Text:=DelStartEnd(pl_s34);
      end;
    end;
  end;
  //edithint();
end;

// сохранение в файл playersPanel.xc
procedure TXCTuner_Form1.pl_panel_save;
begin
  if (RadioButton76.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton78.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton79.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton83.Checked=True) then chek4:='true' else chek4:='false';
  // Прозрачность в процентах ушей // 1
  pl_s1:=pl_panel.Strings[pl1_SL];
  pl_s1:=Smart_Replacing('"alpha"', pl_s1, IntToStr(SpinEdit20.Value));
  pl_panel.Delete(pl1_SL);
  pl_panel.Insert(pl1_SL, pl_s1);

  // Прозрачность в процентах иконок // 2
  pl_s2:=pl_panel.Strings[pl2_SL];
  pl_s2:=Smart_Replacing('"iconAlpha"', pl_s2, IntToStr(SpinEdit21.Value));
  pl_panel.Delete(pl2_SL);
  pl_panel.Insert(pl2_SL, pl_s2);

  // убрать отображение иконки взвода // 3
  pl_s3:=pl_panel.Strings[pl3_SL];
  pl_s3:=Smart_Replacing('"removeSquadIcon"', pl_s3, chek1);
  pl_panel.Delete(pl3_SL);
  pl_panel.Insert(pl3_SL, pl_s3);

  // убрать переключатель режимов ушей мышкой // 4
  pl_s4:=pl_panel.Strings[pl4_SL];
  pl_s4:=Smart_Replacing('"removePanelsModeSwitcher"', pl_s4, chek2);
  pl_panel.Delete(pl4_SL);
  pl_panel.Insert(pl4_SL, pl_s4);

  // Стартовый режим ушей // 41
  if ComboBox8.ItemIndex=0 then chek5:='"none"' else
  if ComboBox8.ItemIndex=1 then chek5:='"short"' else
  if ComboBox8.ItemIndex=2 then chek5:='"medium"' else
  if ComboBox8.ItemIndex=3 then chek5:='"medium2"' else
  if ComboBox8.ItemIndex=4 then chek5:='"large"';
  pl_s41:=pl_panel.Strings[pl41_SL];
  pl_s41:=Smart_Replacing('"startMode"', pl_s41, chek5);
  pl_panel.Delete(pl41_SL);
  pl_panel.Insert(pl41_SL, pl_s41);

  // видимость клановых эмблемм // 4.1
  pl_s5:=pl_panel.Strings[pl5_SL];
  pl_s5:=Smart_Replacing('"show"', pl_s5, chek3);
  pl_panel.Delete(pl5_SL);
  pl_panel.Insert(pl5_SL, pl_s5);

  // Позиция x (слева) // 4.2
  pl_s6:=pl_panel.Strings[pl6_SL];
  pl_s6:=Smart_Replacing('"x"', pl_s6, IntToStr(SpinEdit22.Value));
  pl_panel.Delete(pl6_SL);
  pl_panel.Insert(pl6_SL, pl_s6);

  // Позиция y (слева) // 4.3
  pl_s7:=pl_panel.Strings[pl7_SL];
  pl_s7:=Smart_Replacing('"y"', pl_s7, IntToStr(SpinEdit23.Value));
  pl_panel.Delete(pl7_SL);
  pl_panel.Insert(pl7_SL, pl_s7);

  // Позиция x (справа) // 4.4
  pl_s8:=pl_panel.Strings[pl8_SL];
  pl_s8:=Smart_Replacing('"xr"', pl_s8, IntToStr(SpinEdit24.Value));
  pl_panel.Delete(pl8_SL);
  pl_panel.Insert(pl8_SL, pl_s8);

  // Позиция y (справа) // 4.5
  pl_s9:=pl_panel.Strings[pl9_SL];
  pl_s9:=Smart_Replacing('"yr"', pl_s9, IntToStr(SpinEdit25.Value));
  pl_panel.Delete(pl9_SL);
  pl_panel.Insert(pl9_SL, pl_s9);

  // Ширина иконки // 4.6
  pl_s10:=pl_panel.Strings[pl10_SL];
  pl_s10:=Smart_Replacing('"w"', pl_s10, IntToStr(SpinEdit26.Value));
  pl_panel.Delete(pl10_SL);
  pl_panel.Insert(pl10_SL, pl_s10);

  // Высота иконки // 4.7
  pl_s11:=pl_panel.Strings[pl11_SL];
  pl_s11:=Smart_Replacing('"h"', pl_s11, IntToStr(SpinEdit27.Value));
  pl_panel.Delete(pl11_SL);
  pl_panel.Insert(pl11_SL, pl_s11);

  // Прозрачность // 4.8
  pl_s12:=pl_panel.Strings[pl12_SL];
  pl_s12:=Smart_Replacing('"alpha"', pl_s12, IntToStr(SpinEdit28.Value));
  pl_panel.Delete(pl12_SL);
  pl_panel.Insert(pl12_SL, pl_s12);

  // видимость маркера статуса засвета // 5.1
  pl_s13:=pl_panel.Strings[pl13_SL];
  pl_s13:=Smart_Replacing('"enabled"', pl_s13, chek4);
  pl_panel.Delete(pl13_SL);
  pl_panel.Insert(pl13_SL, pl_s13);

  // Смещение относительно X // 5.2
  pl_s14:=pl_panel.Strings[pl14_SL];
  pl_s14:=Smart_Replacing('"Xoffset"', pl_s14, IntToStr(SpinEdit29.Value));
  pl_panel.Delete(pl14_SL);
  pl_panel.Insert(pl14_SL, pl_s14);

  // Смещение относительно Y // 5.3
  pl_s15:=pl_panel.Strings[pl15_SL];
  pl_s15:=Smart_Replacing('"Yoffset"', pl_s15, IntToStr(SpinEdit30.Value));
  pl_panel.Delete(pl15_SL);
  pl_panel.Insert(pl15_SL, pl_s15);

  // Этот враг никогда не светился // 6.1
  pl_s16:=pl_panel.Strings[pl16_SL];
  pl_s16:=Smart_Replacing('"neverSeen"', pl_s16, RecStartEnd(Edit27.Text));
  pl_panel.Delete(pl16_SL);
  pl_panel.Insert(pl16_SL, pl_s16);

  // Этот враг светился хотя бы один раз // 6.2
  pl_s17:=pl_panel.Strings[pl17_SL];
  pl_s17:=Smart_Replacing('"lost"', pl_s17, RecStartEnd(Edit28.Text));
  pl_panel.Delete(pl17_SL);
  pl_panel.Insert(pl17_SL, pl_s17);

  // Виден на миникарте прямо сейчас // 6.3
  pl_s18:=pl_panel.Strings[pl18_SL];
  pl_s18:=Smart_Replacing('"revealed"', pl_s18, RecStartEnd(Edit29.Text));
  pl_panel.Delete(pl18_SL);
  pl_panel.Insert(pl18_SL, pl_s18);

  // Уничтоженный враг // 6.4
  pl_s19:=pl_panel.Strings[pl19_SL];
  pl_s19:=Smart_Replacing('"dead"', pl_s19, RecStartEnd(Edit30.Text));
  pl_panel.Delete(pl19_SL);
  pl_panel.Insert(pl19_SL, pl_s19);

  // Этот враг никогда не светился // 7.1
  pl_s20:=pl_panel.Strings[pl20_SL];
  pl_s20:=Smart_Replacing('"neverSeen"', pl_s20, RecStartEnd(Edit31.Text));
  pl_panel.Delete(pl20_SL);
  pl_panel.Insert(pl20_SL, pl_s20);

  // Этот враг светился хотя бы один раз // 7.2
  pl_s21:=pl_panel.Strings[pl21_SL];
  pl_s21:=Smart_Replacing('"lost"', pl_s21, RecStartEnd(Edit32.Text));
  pl_panel.Delete(pl21_SL);
  pl_panel.Insert(pl21_SL, pl_s21);

  // Виден на миникарте прямо сейчас // 7.3
  pl_s22:=pl_panel.Strings[pl22_SL];
  pl_s22:=Smart_Replacing('"revealed"', pl_s22, RecStartEnd(Edit33.Text));
  pl_panel.Delete(pl22_SL);
  pl_panel.Insert(pl22_SL, pl_s22);

  // Уничтоженный враг // 7.4
  pl_s23:=pl_panel.Strings[pl23_SL];
  pl_s23:=Smart_Replacing('"dead"', pl_s23, RecStartEnd(Edit34.Text));
  pl_panel.Delete(pl23_SL);
  pl_panel.Insert(pl23_SL, pl_s23);

  // Ширина поля имени игрока // 8.1
  pl_s24:=pl_panel.Strings[pl24_SL];
  pl_s24:=Smart_Replacing('"width"', pl_s24, IntToStr(SpinEdit31.Value));
  pl_panel.Delete(pl24_SL);
  pl_panel.Insert(pl24_SL, pl_s24);

  // Формат отображения для левой панели // 8.2
  pl_s25:=pl_panel.Strings[pl25_SL];
  pl_s25:=Smart_Replacing('"formatLeft"', pl_s25, RecStartEnd(Edit35.Text));
  pl_panel.Delete(pl25_SL);
  pl_panel.Insert(pl25_SL, pl_s25);

  // Формат отображения для правой панели // 8.3
  pl_s26:=pl_panel.Strings[pl26_SL];
  pl_s26:=Smart_Replacing('"formatRight"', pl_s26, RecStartEnd(Edit36.Text));
  pl_panel.Delete(pl26_SL);
  pl_panel.Insert(pl26_SL, pl_s26);

  // Ширина поля названия танка // 9.1
  pl_s27:=pl_panel.Strings[pl27_SL];
  pl_s27:=Smart_Replacing('"width"', pl_s27, IntToStr(SpinEdit32.Value));
  pl_panel.Delete(pl27_SL);
  pl_panel.Insert(pl27_SL, pl_s27);

  // Формат отображения для левой панели // 9.2
  pl_s28:=pl_panel.Strings[pl28_SL];
  pl_s28:=Smart_Replacing('"formatLeft"', pl_s28, RecStartEnd(Edit37.Text));
  pl_panel.Delete(pl28_SL);
  pl_panel.Insert(pl28_SL, pl_s28);

  // Формат отображения для правой панели // 9.3
  pl_s29:=pl_panel.Strings[pl29_SL];
  pl_s29:=Smart_Replacing('"formatRight"', pl_s29, RecStartEnd(Edit38.Text));
  pl_panel.Delete(pl29_SL);
  pl_panel.Insert(pl29_SL, pl_s29);

  // Ширина поля имени игрока // 10.1
  pl_s30:=pl_panel.Strings[pl30_SL];
  pl_s30:=Smart_Replacing('"width"', pl_s30, IntToStr(SpinEdit33.Value));
  pl_panel.Delete(pl30_SL);
  pl_panel.Insert(pl30_SL, pl_s30);

  // Формат отображения для правой панели // 10.2
  pl_s31:=pl_panel.Strings[pl31_SL];
  pl_s31:=Smart_Replacing('"nickFormatLeft"', pl_s31, RecStartEnd(Edit39.Text));
  pl_panel.Delete(pl31_SL);
  pl_panel.Insert(pl31_SL, pl_s31);

  // Формат отображения для правой панели // 10.3
  pl_s32:=pl_panel.Strings[pl32_SL];
  pl_s32:=Smart_Replacing('"nickFormatRight"', pl_s32, RecStartEnd(Edit40.Text));
  pl_panel.Delete(pl32_SL);
  pl_panel.Insert(pl32_SL, pl_s32);

  // Формат отображения для правой панели // 10.4
  pl_s33:=pl_panel.Strings[pl33_SL];
  pl_s33:=Smart_Replacing('"vehicleFormatLeft"', pl_s33, RecStartEnd(Edit41.Text));
  pl_panel.Delete(pl33_SL);
  pl_panel.Insert(pl33_SL, pl_s33);

  // Формат отображения для правой панели // 10.5
  pl_s34:=pl_panel.Strings[pl34_SL];
  pl_s34:=Smart_Replacing('"vehicleFormatRight"', pl_s34, RecStartEnd(Edit42.Text));
  pl_panel.Delete(pl34_SL);
  pl_panel.Insert(pl34_SL, pl_s34);


  // сохранение в файл
  pl_panel.SaveToFile(dir_xvm+pl_panel_name);
end;

// сохранение параметров в файл battle.xc
procedure TXCTuner_Form1.battle_save;
begin
  // процедура подготовки изменений для сохранения в файл battle.xc
  if (RadioButton1.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton3.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton7.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton81.Checked=True) then chek5:='true' else chek5:='false';

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

  // 4
  b_s4:=battle.Strings[bs4_SL];
  b_s4:=Smart_Replacing('"highlightVehicleIcon"', b_s4, chek4);
  battle.Delete(bs4_SL);
  battle.Insert(bs4_SL, b_s4);

  // 8
  b_s8:=battle.Strings[bs8_SL];
  b_s8:=Smart_Replacing('"allowHpInPanelsAndMinimap"', b_s8, chek5);
  battle.Delete(bs8_SL);
  battle.Insert(bs8_SL, b_s8);

  // 6
  b_s6:=battle.Strings[bs6_SL];
  b_s6:=Smart_Replacing('"clockFormat"', b_s6, RecStartEnd(Edit24.Text));
  battle.Delete(bs6_SL);
  battle.Insert(bs6_SL, b_s6);

  // 7
  b_s7:=battle.Strings[bs7_SL];
  b_s7:=Smart_Replacing('"clanIconsFolder"', b_s7, RecStartEnd(Edit25.Text));
  battle.Delete(bs7_SL);
  battle.Insert(bs7_SL, b_s7);

  battle.SaveToFile(dir_xvm+battle_name);
end;

// Загрузка из файла Battleloading.xc
procedure TXCTuner_Form1.battload_loading;
begin
  battload.Clear;
  battload.LoadFromFile(dir_xvm+battload_name);
  // загрузка данных из файла Battleloading.xc в интерфейс
  BL_0_SL:=Search_Line(0, '"battleLoading"', battload);
  if BL_0_SL=-1 then error_line('"battleLoading"', battload_name) else
  begin
    // Формат часов / 1
    Search:='"clockFormat"';
    BL_1_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_1_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s1:=battload.Strings[BL_1_SL];
      battload_s1:=new_change_str(Search, battload_s1);
      Edit43.Text:=DelStartEnd(battload_s1);
    end;

    // включить отображение шансов на победу // 2
    Search:='"showChances"';
    BL_2_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_2_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s2:=battload.Strings[BL_2_SL];
      battload_s2:=new_change_str(Search, battload_s2);
      if battload_s2='true' then RadioButton85.Checked:=True else
      if battload_s2='false' then RadioButton86.Checked:=True else
      begin
        ShowMessage(error_message(battload_name, battload_s2, BL_2_SL));
        Application.Terminate;
      end;
    end;

    // включить отображение уровня боя // 3
    Search:='"showBattleTier"';
    BL_3_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_3_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s3:=battload.Strings[BL_3_SL];
      battload_s3:=new_change_str(Search, battload_s3);
      if battload_s3='true' then RadioButton87.Checked:=True else
      if battload_s3='false' then RadioButton88.Checked:=True else
      begin
        ShowMessage(error_message(battload_name, battload_s3, BL_3_SL));
        Application.Terminate;
      end;
    end;

    // убрать отображение иконки взвода // 4
    Search:='"removeSquadIcon"';
    BL_4_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_4_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s4:=battload.Strings[BL_4_SL];
      battload_s4:=new_change_str(Search, battload_s4);
      if battload_s4='true' then RadioButton90.Checked:=True else
      if battload_s4='false' then RadioButton89.Checked:=True else
      begin
        ShowMessage(error_message(battload_name, battload_s4, BL_4_SL));
        Application.Terminate;
      end;
    end;

    // клановые эмблемы  // 5
    BL_01_SL:=Search_Line(BL_0_SL, '"clanIcon"', battload);
    if BL_01_SL=-1 then error_line('"clanIcon"', battload_name) else
    begin
      // видимость // 5.1
      Search:='"show"';
      BL_5_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_5_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s5:=battload.Strings[BL_5_SL];
        battload_s5:=new_change_str(Search, battload_s5);
        if battload_s5='true' then RadioButton91.Checked:=True else
        if battload_s5='false' then RadioButton92.Checked:=True else
        begin
          ShowMessage(error_message(battload_name, battload_s5, BL_5_SL));
          Application.Terminate;
        end;
      end;

      // Позиция x (слева) // 5.2
      Search:='"x"';
      BL_6_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_6_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s6:=battload.Strings[BL_6_SL];
        battload_s6:=new_change_str(Search, battload_s6);
        SpinEdit34.Value:=StrToInt(battload_s6);
        TrackBar18.Position:=SpinEdit34.Value;
      end;

      // Позиция y (слева) // 5.3
      Search:='"y"';
      BL_7_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_7_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s7:=battload.Strings[BL_7_SL];
        battload_s7:=new_change_str(Search, battload_s7);
        SpinEdit35.Value:=StrToInt(battload_s7);
        TrackBar19.Position:=SpinEdit35.Value;
      end;

      // Позиция x (справа) // 5.4
      Search:='"xr"';
      BL_8_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_8_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s8:=battload.Strings[BL_8_SL];
        battload_s8:=new_change_str(Search, battload_s8);
        SpinEdit36.Value:=StrToInt(battload_s8);
        TrackBar20.Position:=SpinEdit36.Value;
      end;

      // Позиция y (справа) // 5.5
      Search:='"yr"';
      BL_9_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_9_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s9:=battload.Strings[BL_9_SL];
        battload_s9:=new_change_str(Search, battload_s9);
        SpinEdit37.Value:=StrToInt(battload_s9);
        TrackBar21.Position:=SpinEdit37.Value;
      end;

      // Ширина иконки // 5.6
      Search:='"w"';
      BL_10_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_10_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s10:=battload.Strings[BL_10_SL];
        battload_s10:=new_change_str(Search, battload_s10);
        SpinEdit38.Value:=StrToInt(battload_s10);
        TrackBar22.Position:=SpinEdit38.Value;
      end;

      // Высота иконки // 5.7
      Search:='"h"';
      BL_11_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_11_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s11:=battload.Strings[BL_11_SL];
        battload_s11:=new_change_str(Search, battload_s11);
        SpinEdit39.Value:=StrToInt(battload_s11);
        TrackBar23.Position:=SpinEdit39.Value;
      end;

      // Прозрачность // 5.8
      Search:='"alpha"';
      BL_12_SL:=Search_Line(BL_01_SL, Search, battload);
      if BL_12_SL=-1 then error_line(Search, battload_name) else
      begin
        battload_s12:=battload.Strings[BL_12_SL];
        battload_s12:=new_change_str(Search, battload_s12);
        SpinEdit40.Value:=StrToInt(battload_s12);
        TrackBar24.Position:=SpinEdit40.Value;
      end;
    end;

    // Формат отображения имени игрока // 6
    Search:='"formatLeftNick"';
    BL_13_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_13_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s13:=battload.Strings[BL_13_SL];
      battload_s13:=new_change_str(Search, battload_s13);
      Edit44.Text:=DelStartEnd(battload_s13);
    end;

    // Формат отображения имени игрока // 7
    Search:='"formatRightNick"';
    BL_14_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_14_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s14:=battload.Strings[BL_14_SL];
      battload_s14:=new_change_str(Search, battload_s14);
      Edit45.Text:=DelStartEnd(battload_s14);
    end;

    // Формат отображения названия танка // 8
    Search:='"formatLeftVehicle"';
    BL_15_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_15_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s15:=battload.Strings[BL_15_SL];
      battload_s15:=new_change_str(Search, battload_s15);
      Edit46.Text:=DelStartEnd(battload_s15);
    end;

    // Формат отображения названия танка // 9
    Search:='"formatRightVehicle"';
    BL_16_SL:=Search_Line(BL_0_SL, Search, battload);
    if BL_16_SL=-1 then error_line(Search, battload_name) else
    begin
      battload_s16:=battload.Strings[BL_16_SL];
      battload_s16:=new_change_str(Search, battload_s16);
      Edit47.Text:=DelStartEnd(battload_s16);
    end;
  end;
  //edithint();
end;

// сохранение в файл Battleloading.xc
procedure TXCTuner_Form1.battload_save;
begin
  if (RadioButton85.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton87.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton90.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton91.Checked=True) then chek4:='true' else chek4:='false';
  // Формат часов на экране загрузки боя // 1
  battload_s1:=battload.Strings[BL_1_SL];
  battload_s1:=Smart_Replacing('"clockFormat"', battload_s1, RecStartEnd(Edit43.Text));
  battload.Delete(BL_1_SL);
  battload.Insert(BL_1_SL, battload_s1);

  // отображение шансов на победу // 2
  battload_s2:=battload.Strings[BL_2_SL];
  battload_s2:=Smart_Replacing('"showChances"', battload_s2, chek1);
  battload.Delete(BL_2_SL);
  battload.Insert(BL_2_SL, battload_s2);

  // отображение уровня боя // 3
  battload_s3:=battload.Strings[BL_3_SL];
  battload_s3:=Smart_Replacing('"showBattleTier"', battload_s3, chek2);
  battload.Delete(BL_3_SL);
  battload.Insert(BL_3_SL, battload_s3);

  // убрать отображение иконки взвода // 4
  battload_s4:=battload.Strings[BL_4_SL];
  battload_s4:=Smart_Replacing('"removeSquadIcon"', battload_s4, chek3);
  battload.Delete(BL_4_SL);
  battload.Insert(BL_4_SL, battload_s4);

  // Параметры отображения иконки игрока/клана // 5.1
  battload_s5:=battload.Strings[BL_5_SL];
  battload_s5:=Smart_Replacing('"show"', battload_s5, chek4);
  battload.Delete(BL_5_SL);
  battload.Insert(BL_5_SL, battload_s5);

  // Положение по оси X относительно иконки танка // 5.2
  battload_s6:=battload.Strings[BL_6_SL];
  battload_s6:=Smart_Replacing('"x"', battload_s6, IntToStr(SpinEdit34.Value));
  battload.Delete(BL_6_SL);
  battload.Insert(BL_6_SL, battload_s6);

  // Положение по оси Y относительно иконки танка // 5.3
  battload_s7:=battload.Strings[BL_7_SL];
  battload_s7:=Smart_Replacing('"y"', battload_s7, IntToStr(SpinEdit35.Value));
  battload.Delete(BL_7_SL);
  battload.Insert(BL_7_SL, battload_s7);

  // Положение по оси X для правых ушей // 5.4
  battload_s8:=battload.Strings[BL_8_SL];
  battload_s8:=Smart_Replacing('"xr"', battload_s8, IntToStr(SpinEdit36.Value));
  battload.Delete(BL_8_SL);
  battload.Insert(BL_8_SL, battload_s8);

  // Положение по оси Y для правых ушей // 5.5
  battload_s9:=battload.Strings[BL_9_SL];
  battload_s9:=Smart_Replacing('"yr"', battload_s9, IntToStr(SpinEdit37.Value));
  battload.Delete(BL_9_SL);
  battload.Insert(BL_9_SL, battload_s9);

  // Ширина иконки игрока/клана // 5.6
  battload_s10:=battload.Strings[BL_10_SL];
  battload_s10:=Smart_Replacing('"w"', battload_s10, IntToStr(SpinEdit38.Value));
  battload.Delete(BL_10_SL);
  battload.Insert(BL_10_SL, battload_s10);

  // Высота иконки игрока/клана // 5.7
  battload_s11:=battload.Strings[BL_11_SL];
  battload_s11:=Smart_Replacing('"h"', battload_s11, IntToStr(SpinEdit39.Value));
  battload.Delete(BL_11_SL);
  battload.Insert(BL_11_SL, battload_s11);

  // Прозрачность иконки игрока/клана // 5.8
  battload_s12:=battload.Strings[BL_12_SL];
  battload_s12:=Smart_Replacing('"alpha"', battload_s12, IntToStr(SpinEdit40.Value));
  battload.Delete(BL_12_SL);
  battload.Insert(BL_12_SL, battload_s12);

  // Формат отображения для левой панели // 6
  battload_s13:=battload.Strings[BL_13_SL];
  battload_s13:=Smart_Replacing('"formatLeftNick"', battload_s13, RecStartEnd(Edit44.Text));
  battload.Delete(BL_13_SL);
  battload.Insert(BL_13_SL, battload_s13);

  // Формат отображения для правой панели // 7
  battload_s14:=battload.Strings[BL_14_SL];
  battload_s14:=Smart_Replacing('"formatRightNick"', battload_s14, RecStartEnd(Edit45.Text));
  battload.Delete(BL_14_SL);
  battload.Insert(BL_14_SL, battload_s14);

  // Формат отображения для левой панели // 8
  battload_s15:=battload.Strings[BL_15_SL];
  battload_s15:=Smart_Replacing('"formatLeftVehicle"', battload_s15, RecStartEnd(Edit46.Text));
  battload.Delete(BL_15_SL);
  battload.Insert(BL_15_SL, battload_s15);

  // Формат отображения для правой панели // 9
  battload_s16:=battload.Strings[BL_16_SL];
  battload_s16:=Smart_Replacing('"formatRightVehicle"', battload_s16, RecStartEnd(Edit47.Text));
  battload.Delete(BL_16_SL);
  battload.Insert(BL_16_SL, battload_s16);

  // само сохранение
  battload.SaveToFile(dir_xvm+battload_name);
end;

// загрузка из файла battleresults.xc
procedure TXCTuner_Form1.bt_result_loading;
begin
  bt_result.Clear;
  bt_result.LoadFromFile(dir_xvm + bt_result_name);
  bt_res0_SL:=Search_Line(0, '"battleResults"', bt_result);
  if bt_res0_SL=-1 then error_line('"battleResults"', bt_result_name) else
  begin
    // Номер начальной страницы // 1
    Search:='"startPage"';
    bt_res1_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res1_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s1:=bt_result.Strings[bt_res1_SL];
      bt_res_s1:=new_change_str(Search, bt_res_s1);
      ComboBox6.ItemIndex:=StrToInt(bt_res_s1) - 1;
    end;

    // Отображать чистый доход на первой странице // 2
    Search:='"showNetIncome"';
    bt_res2_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res2_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s2:=bt_result.Strings[bt_res2_SL];
      bt_res_s2:=new_change_str(Search, bt_res_s2);
      if bt_res_s2='true' then RadioButton63.Checked:=True else
      if bt_res_s2='false' then RadioButton64.Checked:=True else
      begin
        ShowMessage(error_message(bt_result_name, bt_res_s2, bt_res2_SL));
        Application.Terminate;
      end;
    end;

    // Отображать процент попаданий и урон на первой странице, под кредитами и опытом // 3
    Search:='"showExtendedInfo"';
    bt_res3_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res3_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s3:=bt_result.Strings[bt_res3_SL];
      bt_res_s3:=new_change_str(Search, bt_res_s3);
      if bt_res_s3='true' then RadioButton65.Checked:=True else
      if bt_res_s3='false' then RadioButton66.Checked:=True else
      begin
        ShowMessage(error_message(bt_result_name, bt_res_s3, bt_res3_SL));
        Application.Terminate;
      end;
    end;

    // Показывать итог по вашей боевой эффективности на первой странице // 4
    Search:='"showTotals"';
    bt_res4_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res4_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s4:=bt_result.Strings[bt_res4_SL];
      bt_res_s4:=new_change_str(Search, bt_res_s4);
      if bt_res_s4='true' then RadioButton67.Checked:=True else
      if bt_res_s4='false' then RadioButton68.Checked:=True else
      begin
        ShowMessage(error_message(bt_result_name, bt_res_s4, bt_res4_SL));
        Application.Terminate;
      end;
    end;

    // включить отображение шансов на победу // 5
    Search:='"showChances"';
    bt_res5_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res5_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s5:=bt_result.Strings[bt_res5_SL];
      bt_res_s5:=new_change_str(Search, bt_res_s5);
      if bt_res_s5='true' then RadioButton69.Checked:=True else
      if bt_res_s5='false' then RadioButton70.Checked:=True else
      begin
        ShowMessage(error_message(bt_result_name, bt_res_s5, bt_res5_SL));
        Application.Terminate;
      end;
    end;

    // включить отображение уровня боя // 6
    Search:='"showBattleTier"';
    bt_res6_SL:=Search_Line(bt_res0_SL, Search, bt_result);
    if bt_res6_SL=-1 then error_line(Search, bt_result_name) else
    begin
      bt_res_s6:=bt_result.Strings[bt_res6_SL];
      bt_res_s6:=new_change_str(Search, bt_res_s6);
      if bt_res_s6='true' then RadioButton71.Checked:=True else
      if bt_res_s6='false' then RadioButton72.Checked:=True else
      begin
        ShowMessage(error_message(bt_result_name, bt_res_s6, bt_res6_SL));
        Application.Terminate;
      end;
    end;
  end;
  //edithint();
end;

// сохранение в файл battleresults.xc
procedure TXCTuner_Form1.bt_result_save;
begin

  if (RadioButton63.Checked=True) then chek1:='true' else chek1:='false';
  if (RadioButton65.Checked=True) then chek2:='true' else chek2:='false';
  if (RadioButton67.Checked=True) then chek3:='true' else chek3:='false';
  if (RadioButton69.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton71.Checked=True) then chek5:='true' else chek5:='false';

  // Номер начальной страницы // 1
  bt_res_s1:=bt_result.Strings[bt_res1_SL];
  bt_res_s1:=Smart_Replacing('"startPage"', bt_res_s1, IntToStr(ComboBox6.ItemIndex+1));
  bt_result.Delete(bt_res1_SL);
  bt_result.Insert(bt_res1_SL, bt_res_s1);

  // Отображать чистый доход на первой странице // 2
  bt_res_s2:=bt_result.Strings[bt_res2_SL];
  bt_res_s2:=Smart_Replacing('"showNetIncome"', bt_res_s2, chek1);
  bt_result.Delete(bt_res2_SL);
  bt_result.Insert(bt_res2_SL, bt_res_s2);

  // Отображать процент попаданий и урон на первой странице, под кредитами и опытом // 3
  bt_res_s3:=bt_result.Strings[bt_res3_SL];
  bt_res_s3:=Smart_Replacing('"showExtendedInfo"', bt_res_s3, chek2);
  bt_result.Delete(bt_res3_SL);
  bt_result.Insert(bt_res3_SL, bt_res_s3);

  // Показывать итог по вашей боевой эффективности на первой странице // 4
  bt_res_s4:=bt_result.Strings[bt_res4_SL];
  bt_res_s4:=Smart_Replacing('"showTotals"', bt_res_s4, chek3);
  bt_result.Delete(bt_res4_SL);
  bt_result.Insert(bt_res4_SL, bt_res_s4);

  // включить отображение шансов на победу // 5
  bt_res_s5:=bt_result.Strings[bt_res5_SL];
  bt_res_s5:=Smart_Replacing('"showChances"', bt_res_s5, chek4);
  bt_result.Delete(bt_res5_SL);
  bt_result.Insert(bt_res5_SL, bt_res_s5);

  // включить отображение уровня боя // 6
  bt_res_s6:=bt_result.Strings[bt_res6_SL];
  bt_res_s6:=Smart_Replacing('"showBattleTier"', bt_res_s6, chek5);
  bt_result.Delete(bt_res6_SL);
  bt_result.Insert(bt_res6_SL, bt_res_s6);

  bt_result.SaveToFile(dir_xvm+bt_result_name);
end;

// загрузка из файла @xvm.xc /
procedure TXCTuner_Form1.xvm_loading;
begin
  // загрузка данных из файла @xvm.xc
  Search:='"configVersion"';
  xvm1_SL:=Search_Line(0, Search, xvm);
  if xvm1_SL=-1 then error_line(Search, xvm_file_name) else
  begin
    xvm_s1:=xvm.Strings[xvm1_SL];
    xvm_s1:=DelStartEnd(new_change_str(Search, xvm_s1));
    Label2.Caption:=xvm_s1;
  end;

  Search:='"editorVersion"';
  xvm2_SL:=Search_Line(0, Search, xvm);
  if xvm2_SL=-1 then error_line(Search, xvm_file_name) else
  begin
    xvm_s2:=xvm.Strings[xvm2_SL];
    xvm_s2:=DelStartEnd(new_change_str(Search, xvm_s2));
    Label4.Caption:=xvm_s2;
  end;

  Search:='"language"';
  xvm3_SL:=Search_Line(0, Search, xvm);
  if xvm3_SL=-1 then error_line(Search, xvm_file_name) else
  begin
    xvm_s3:=xvm.Strings[xvm3_SL];
    xvm_s3:=DelStartEnd(new_change_str(Search, xvm_s3));
    Label6.Caption:=xvm_s3;
  end;

  Search:='"region"';
  xvm4_SL:=Search_Line(0, Search, xvm);
  if xvm4_SL=-1 then error_line(Search, xvm_file_name) else
  begin
    xvm_s4:=xvm.Strings[xvm4_SL];
    xvm_s4:=DelStartEnd(new_change_str(Search, xvm_s4));
    Label8.Caption:=xvm_s4;
  end;

  xvm0_SL:=Search_Line(0, '"definition"', xvm);
  if xvm0_SL=-1 then error_line('"definition"', xvm_file_name) else
  begin
    Search:='"author"';
    xvm5_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm5_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s5:=xvm.Strings[xvm5_SL];
      xvm_s5:=DelStartEnd(new_change_str(Search, xvm_s5));
      Label10.Caption:=xvm_s5;
    end;

    Search:='"description"';
    xvm6_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm6_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s6:=xvm.Strings[xvm6_SL];
      xvm_s6:=DelStartEnd(new_change_str(Search, xvm_s6));
      Label12.Caption:=xvm_s6;
    end;

    Search:='"date"';
    xvm7_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm7_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s7:=xvm.Strings[xvm7_SL];
      xvm_s7:=DelStartEnd(new_change_str(Search, xvm_s7));
      Label14.Caption:=xvm_s7;
    end;

    Search:='"gameVersion"';
    xvm8_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm8_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s8:=xvm.Strings[xvm8_SL];
      xvm_s8:=DelStartEnd(new_change_str(Search, xvm_s8));
      Label16.Caption:=xvm_s8;
    end;

    Search:='"url"';
    xvm9_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm9_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s9:=xvm.Strings[xvm9_SL];
      xvm_s9:=DelStartEnd(new_change_str(Search, xvm_s9));
      Label63.Caption:=xvm_s9;
      Label63.Hint:='Перейти по адресу - '+xvm_s9;
    end;

    Search:='"modMinVersion"';
    xvm10_SL:=Search_Line(xvm0_SL, Search, xvm);
    if xvm10_SL=-1 then error_line(Search, xvm_file_name) else
    begin
      xvm_s10:=xvm.Strings[xvm10_SL];
      xvm_s10:=DelStartEnd(new_change_str(Search, xvm_s10));
      Label64.Caption:=xvm_s10;
    end;
  end;
end;

// загрузка из файла rating.xc /
procedure TXCTuner_Form1.rating_loading;
begin
  rating.Clear;
  rating.LoadFromFile(dir_xvm+rating_name);
  rat0_SL:=Search_Line(0, '"rating"', rating);
  if rat0_SL=-1 then error_line('"rating"', rating_name) else
  begin
    // Глобальный переключатель / 1
    Search:='"showPlayersStatistics"';
    rat1_SL:=Search_Line(rat0_SL, Search, rating);
    if rat1_SL=-1 then error_line(Search, rating_name) else
    begin
      rating_s1:=rating.Strings[rat1_SL];
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
    rat2_SL:=Search_Line(rat0_SL, Search, rating);
    if rat2_SL=-1 then error_line(Search, rating_name) else
    begin
      rating_s2:=rating.Strings[rat2_SL];
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
    rat3_SL:=Search_Line(rat0_SL, Search, rating);
    if rat3_SL=-1 then error_line(Search, rating_name) else
    begin
      rating_s3:=rating.Strings[rat3_SL];
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
    rat4_SL:=Search_Line(rat0_SL, Search, rating);
    if rat4_SL=-1 then error_line(Search, rating_name) else
    begin
      rating_s4:=rating.Strings[rat4_SL];
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
    rat5_SL:=Search_Line(rat0_SL, Search, rating);
    if rat5_SL=-1 then error_line(Search, rating_name) else
    begin
      rating_s5:=rating.Strings[rat5_SL];
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

  rating.SaveToFile(dir_xvm+rating_name);

end;

// Загрузка из файла squad.xc в программу /
procedure TXCTuner_Form1.squad_loading;
begin
  squad.Clear;
  squad.LoadFromFile(dir_xvm+squad_name);
  SQ0_SL:=Search_Line(0, '"squad"', squad);
  if SQ0_SL=-1 then error_line('"squad"', squad_name) else
  begin
    // Отображение информации // 1
    Search:='"enabled"';
    SQ1_SL:=Search_Line(SQ0_SL, Search, squad);
    if SQ1_SL=-1 then error_line(Search, squad_name) else
    begin
      squad_s1:=squad.Strings[SQ1_SL];
      squad_s1:=new_change_str(Search, squad_s1);
      if squad_s1='true' then RadioButton59.Checked:=True else
      if squad_s1='false' then RadioButton60.Checked:=True else
      begin
        ShowMessage(error_message(squad_name, squad_s1, SQ1_SL));
        Application.Terminate;
      end;
    end;

    // Отображение клана // 2
    Search:='"showClan"';
    SQ2_SL:=Search_Line(SQ0_SL, Search, squad);
    if SQ2_SL=-1 then error_line(Search, squad_name) else
    begin
      squad_s2:=squad.Strings[SQ2_SL];
      squad_s2:=new_change_str(Search, squad_s2);
      if squad_s2='true' then RadioButton61.Checked:=True else
      if squad_s2='false' then RadioButton62.Checked:=True else
      begin
        ShowMessage(error_message(squad_name, squad_s2, SQ2_SL));
        Application.Terminate;
      end;
    end;

    // Формат поля информации о танке // 3
    Search:='"formatInfoField"';
    SQ3_SL:=Search_Line(SQ0_SL, Search, squad);
    if SQ3_SL=-1 then error_line(Search, squad_name) else
    begin
      squad_s3:=squad.Strings[SQ3_SL];
      squad_s3:=new_change_str(Search, squad_s3);
      Edit16.Text:=DelStartEnd(squad_s3);
    end;
  end;
  //edithint();
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

  squad.SaveToFile(dir_xvm+squad_name);
end;

// Загрузка из файла iconset.xc в программу
procedure TXCTuner_Form1.iconset_loading;
begin
  iconset.Clear;
  iconset.LoadFromFile(dir_xvm+iconset_name);
  IS0_SL:=Search_Line(0, '"iconset"', iconset);
  if IS0_SL=-1 then error_line('"iconset"', iconset_name) else
  begin
    // Набор иконок для экрана загрузки боя / свои // 1
    Search:='"battleLoadingAlly"';
    IS1_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS1_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s1:=iconset.Strings[IS1_SL];
      iconset_s1:=new_change_str(Search, iconset_s1);
      Edit8.Text:=DelStartEnd(iconset_s1);
    end;

    // Набор иконок для экрана загрузки боя / чужие // 2
    Search:='"battleLoadingEnemy"';
    IS2_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS2_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s2:=iconset.Strings[IS2_SL];
      iconset_s2:=new_change_str(Search, iconset_s2);
      Edit9.Text:=DelStartEnd(iconset_s2);
    end;

    // Набор иконок для формы статистики (по Tab) / свои // 3
    Search:='"statisticFormAlly"';
    IS3_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS3_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s3:=iconset.Strings[IS3_SL];
      iconset_s3:=new_change_str(Search, iconset_s3);
      Edit10.Text:=DelStartEnd(iconset_s3);
    end;

    // Набор иконок для формы статистики (по Tab) / чужие // 4
    Search:='"statisticFormEnemy"';
    IS4_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS4_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s4:=iconset.Strings[IS4_SL];
      iconset_s4:=new_change_str(Search, iconset_s4);
      Edit11.Text:=DelStartEnd(iconset_s4);
    end;

    // Набор иконок для "ушей" / свои // 5
    Search:='"playersPanelAlly"';
    IS5_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS5_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s5:=iconset.Strings[IS5_SL];
      iconset_s5:=new_change_str(Search, iconset_s5);
      Edit12.Text:=DelStartEnd(iconset_s5);
    end;

    // Набор иконок для "ушей" / чужие // 6
    Search:='"playersPanelEnemy"';
    IS6_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS6_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s6:=iconset.Strings[IS6_SL];
      iconset_s6:=new_change_str(Search, iconset_s6);
      Edit13.Text:=DelStartEnd(iconset_s6);
    end;

    // Набор иконок для маркеров над танками / свои // 7
    Search:='"vehicleMarkerAlly"';
    IS7_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS7_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s7:=iconset.Strings[IS7_SL];
      iconset_s7:=new_change_str(Search, iconset_s7);
      Edit14.Text:=DelStartEnd(iconset_s7);
    end;

    // Набор иконок для маркеров над танками / чужие // 8
    Search:='"vehicleMarkerEnemy"';
    IS8_SL:=Search_Line(IS0_SL, Search, iconset);
    if IS8_SL=-1 then error_line(Search, iconset_name) else
    begin
      iconset_s8:=iconset.Strings[IS8_SL];
      iconset_s8:=new_change_str(Search, iconset_s8);
      Edit15.Text:=DelStartEnd(iconset_s8);
    end;
  end;
  //edithint();
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

  iconset.SaveToFile(dir_xvm+iconset_name);
end;

// Загрузка из файла hotkeys.xc в программу
procedure TXCTuner_Form1.hotkeys_loading;
begin
  hotkeys.Clear;
  hotkeys.LoadFromFile(dir_xvm+hotkeys_name);
  HK0_SL:=Search_Line(0, '"hotkeys"', hotkeys);
  if HK0_SL=-1 then error_line('"hotkeys"', hotkeys_name) else
  HK0_SL:=Search_Line(HK0_SL, '"minimapZoom"', hotkeys);
  if HK0_SL=-1 then error_line('"minimapZoom"', hotkeys_name) else
  begin
    // Отображение информации // 1
    Search:='"enabled"';
    HK1_SL:=Search_Line(HK0_SL, Search, hotkeys);
    if HK1_SL=-1 then error_line(Search, hotkeys_name) else
    begin
      hotkeys_s1:=hotkeys.Strings[HK1_SL];
      hotkeys_s1:=new_change_str(Search, hotkeys_s1);
      if hotkeys_s1='true' then RadioButton55.Checked:=True else
      if hotkeys_s1='false' then RadioButton56.Checked:=True else
      begin
        ShowMessage(error_message(hotkeys_name, hotkeys_s1, HK1_SL));
        Application.Terminate;
      end;
    end;

    // действие по разовому нажатию клавиши // 2
    Search:='"onHold"';
    HK2_SL:=Search_Line(HK0_SL, Search, hotkeys);
    if HK2_SL=-1 then error_line(Search, hotkeys_name) else
    begin
      hotkeys_s2:=hotkeys.Strings[HK2_SL];
      hotkeys_s2:=new_change_str(Search, hotkeys_s2);
      if hotkeys_s2='true' then RadioButton57.Checked:=True else
      if hotkeys_s2='false' then RadioButton58.Checked:=True else
      begin
        ShowMessage(error_message(hotkeys_name, hotkeys_s2, HK2_SL));
        Application.Terminate;
      end;
    end;

    // Код клавиши // 3
    Search:='"keyCode"';
    HK3_SL:=Search_Line(HK0_SL, Search, hotkeys);
    if HK3_SL=-1 then error_line(Search, hotkeys_name) else
    begin
      hotkeys_s3:=hotkeys.Strings[HK3_SL];
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
  //edithint();
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

  hotkeys.SaveToFile(dir_xvm+hotkeys_name);
end;

// Загрузка из файла texts.xc в программу
procedure TXCTuner_Form1.texts_loading;
begin
  texts.Clear;
  texts.LoadFromFile(dir_xvm+texts_name);
  TXT0_SL:=Search_Line(0, '"texts"', texts);
  TXT00_SL:=Search_Line(TXT0_SL, '"vtype"', texts);
  if TXT0_SL=-1 then error_line('"texts"', texts_name) else
  if TXT00_SL=-1 then error_line('"vtype"', texts_name) else
  begin
    // Текст для легких танков // 1
    Search:='"LT"';
    TXT1_SL:=Search_Line(TXT00_SL, Search, texts);
    if TXT1_SL=-1 then error_line(Search, texts_name) else
    begin
      texts_s1:=texts.Strings[TXT1_SL];
      texts_s1:=new_change_str(Search, texts_s1);
      Edit17.Text:=DelStartEnd(texts_s1);
    end;

    // Текст для средних танков // 2
    Search:='"MT"';
    TXT2_SL:=Search_Line(TXT00_SL, Search, texts);
    if TXT2_SL=-1 then error_line(Search, texts_name) else
    begin
      texts_s2:=texts.Strings[TXT2_SL];
      texts_s2:=new_change_str(Search, texts_s2);
      Edit18.Text:=DelStartEnd(texts_s2);
    end;

    // Текст для тяжелых танков // 3
    Search:='"HT"';
    TXT3_SL:=Search_Line(TXT00_SL, Search, texts);
    if TXT3_SL=-1 then error_line(Search, texts_name) else
    begin
      texts_s3:=texts.Strings[TXT3_SL];
      texts_s3:=new_change_str(Search, texts_s3);
      Edit19.Text:=DelStartEnd(texts_s3);
    end;

    // Текст для арты // 4
    Search:='"SPG"';
    TXT4_SL:=Search_Line(TXT00_SL, Search, texts);
    if TXT4_SL=-1 then error_line(Search, texts_name) else
    begin
      texts_s4:=texts.Strings[TXT4_SL];
      texts_s4:=new_change_str(Search, texts_s4);
      Edit20.Text:=DelStartEnd(texts_s4);
    end;

    // Текст для ПТ // 5
    Search:='"TD"';
    TXT5_SL:=Search_Line(TXT00_SL, Search, texts);
    if TXT5_SL=-1 then error_line(Search, texts_name) else
    begin
      texts_s5:=texts.Strings[TXT5_SL];
      texts_s5:=new_change_str(Search, texts_s5);
      Edit21.Text:=DelStartEnd(texts_s5);
    end;
  end;
  //edithint();
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

// Загрузка из файла statisticForm.xc
procedure TXCTuner_Form1.tab_loading;
begin
  tab.Clear;
  tab.LoadFromFile(dir_xvm+tab_name);
  // загрузка данных из файла statisticForm.xc в интерфейс
  tab_0_SL:=Search_Line(0, '"statisticForm"', tab);
  if tab_0_SL=-1 then error_line('"statisticForm"', tab_name) else
  begin
    // включить отображение шансов на победу / 1
    Search:='"showChances"';
    tab_1_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_1_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s1:=tab.Strings[tab_1_SL];
      tab_s1:=new_change_str(Search, tab_s1);
      if tab_s1='true' then RadioButton93.Checked:=True else
      if tab_s1='false' then RadioButton94.Checked:=True else
      begin
        ShowMessage(error_message(tab_name, tab_s1, tab_1_SL));
        Application.Terminate;
      end;
    end;

    // Показывать шансы только для живых танков // 2
    Search:='"showChancesLive"';
    tab_2_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_2_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s2:=tab.Strings[tab_2_SL];
      tab_s2:=new_change_str(Search, tab_s2);
      if tab_s2='true' then RadioButton95.Checked:=True else
      if tab_s2='false' then RadioButton96.Checked:=True else
      begin
        ShowMessage(error_message(tab_name, tab_s2, tab_2_SL));
        Application.Terminate;
      end;
    end;

    // включить отображение уровня боя // 3
    Search:='"showBattleTier"';
    tab_3_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_3_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s3:=tab.Strings[tab_3_SL];
      tab_s3:=new_change_str(Search, tab_s3);
      if tab_s3='true' then RadioButton97.Checked:=True else
      if tab_s3='false' then RadioButton98.Checked:=True else
      begin
        ShowMessage(error_message(tab_name, tab_s3, tab_3_SL));
        Application.Terminate;
      end;
    end;

    // убрать отображение иконки взвода // 4
    Search:='"removeSquadIcon"';
    tab_4_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_4_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s4:=tab.Strings[tab_4_SL];
      tab_s4:=new_change_str(Search, tab_s4);
      if tab_s4='true' then RadioButton100.Checked:=True else
      if tab_s4='false' then RadioButton99.Checked:=True else
      begin
        ShowMessage(error_message(tab_name, tab_s4, tab_4_SL));
        Application.Terminate;
      end;
    end;

    // клановые эмблемы  // 5
    tab_01_SL:=Search_Line(tab_0_SL, '"clanIcon"', tab);
    if tab_01_SL=-1 then error_line('"clanIcon"', tab_name) else
    begin
      // видимость // 5.1
      Search:='"show"';
      tab_5_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_5_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s5:=tab.Strings[tab_5_SL];
        tab_s5:=new_change_str(Search, tab_s5);
        if tab_s5='true' then RadioButton101.Checked:=True else
        if tab_s5='false' then RadioButton102.Checked:=True else
        begin
          ShowMessage(error_message(tab_name, tab_s5, tab_5_SL));
          Application.Terminate;
        end;
      end;

      // Позиция x (слева) // 5.2
      Search:='"x"';
      tab_6_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_6_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s6:=tab.Strings[tab_6_SL];
        tab_s6:=new_change_str(Search, tab_s6);
        SpinEdit41.Value:=StrToInt(tab_s6);
        TrackBar25.Position:=SpinEdit41.Value;
      end;

      // Позиция y (слева) // 5.3
      Search:='"y"';
      tab_7_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_7_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s7:=tab.Strings[tab_7_SL];
        tab_s7:=new_change_str(Search, tab_s7);
        SpinEdit42.Value:=StrToInt(tab_s7);
        TrackBar26.Position:=SpinEdit42.Value;
      end;

      // Позиция x (справа) // 5.4
      Search:='"xr"';
      tab_8_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_8_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s8:=tab.Strings[tab_8_SL];
        tab_s8:=new_change_str(Search, tab_s8);
        SpinEdit43.Value:=StrToInt(tab_s8);
        TrackBar27.Position:=SpinEdit43.Value;
      end;

      // Позиция y (справа) // 5.5
      Search:='"yr"';
      tab_9_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_9_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s9:=tab.Strings[tab_9_SL];
        tab_s9:=new_change_str(Search, tab_s9);
        SpinEdit44.Value:=StrToInt(tab_s9);
        TrackBar28.Position:=SpinEdit44.Value;
      end;

      // Ширина иконки // 5.6
      Search:='"w"';
      tab_10_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_10_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s10:=tab.Strings[tab_10_SL];
        tab_s10:=new_change_str(Search, tab_s10);
        SpinEdit45.Value:=StrToInt(tab_s10);
        TrackBar29.Position:=SpinEdit45.Value;
      end;

      // Высота иконки // 5.7
      Search:='"h"';
      tab_11_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_11_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s11:=tab.Strings[tab_11_SL];
        tab_s11:=new_change_str(Search, tab_s11);
        SpinEdit46.Value:=StrToInt(tab_s11);
        TrackBar30.Position:=SpinEdit46.Value;
      end;

      // Прозрачность // 5.8
      Search:='"alpha"';
      tab_12_SL:=Search_Line(tab_01_SL, Search, tab);
      if tab_12_SL=-1 then error_line(Search, tab_name) else
      begin
        tab_s12:=tab.Strings[tab_12_SL];
        tab_s12:=new_change_str(Search, tab_s12);
        SpinEdit47.Value:=StrToInt(tab_s12);
        TrackBar31.Position:=SpinEdit47.Value;
      end;
    end;

    // Формат отображения имени игрока // 6
    Search:='"formatLeftNick"';
    tab_13_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_13_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s13:=tab.Strings[tab_13_SL];
      tab_s13:=new_change_str(Search, tab_s13);
      Edit49.Text:=DelStartEnd(tab_s13);
    end;

    // Формат отображения имени игрока // 7
    Search:='"formatRightNick"';
    tab_14_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_14_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s14:=tab.Strings[tab_14_SL];
      tab_s14:=new_change_str(Search, tab_s14);
      Edit50.Text:=DelStartEnd(tab_s14);
    end;

    // Формат отображения названия танка // 8
    Search:='"formatLeftVehicle"';
    tab_15_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_15_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s15:=tab.Strings[tab_15_SL];
      tab_s15:=new_change_str(Search, tab_s15);
      Edit51.Text:=DelStartEnd(tab_s15);
    end;

    // Формат отображения названия танка // 9
    Search:='"formatRightVehicle"';
    tab_16_SL:=Search_Line(tab_0_SL, Search, tab);
    if tab_16_SL=-1 then error_line(Search, tab_name) else
    begin
      tab_s16:=tab.Strings[tab_16_SL];
      tab_s16:=new_change_str(Search, tab_s16);
      Edit52.Text:=DelStartEnd(tab_s16);
    end;
  end;
  //edithint();
end;

// Сохранение в файл statisticForm.xc
procedure TXCTuner_Form1.tab_save;
begin
  if (RadioButton93.Checked=True)  then chek1:='true' else chek1:='false';
  if (RadioButton95.Checked=True)  then chek2:='true' else chek2:='false';
  if (RadioButton97.Checked=True)  then chek3:='true' else chek3:='false';
  if (RadioButton100.Checked=True) then chek4:='true' else chek4:='false';
  if (RadioButton101.Checked=True) then chek5:='true' else chek5:='false';
  // отображение шансов на победу // 1
  tab_s1:=tab.Strings[tab_1_SL];
  tab_s1:=Smart_Replacing('"showChances"', tab_s1, chek1);
  tab.Delete(tab_1_SL);
  tab.Insert(tab_1_SL, tab_s1);

  // Показывать шансы только для живых танков. // 2
  tab_s2:=tab.Strings[tab_2_SL];
  tab_s2:=Smart_Replacing('"showChancesLive"', tab_s2, chek2);
  tab.Delete(tab_2_SL);
  tab.Insert(tab_2_SL, tab_s2);

  // отображение уровня боя // 3
  tab_s3:=tab.Strings[tab_3_SL];
  tab_s3:=Smart_Replacing('"showBattleTier"', tab_s3, chek3);
  tab.Delete(tab_3_SL);
  tab.Insert(tab_3_SL, tab_s3);

  // убрать отображение иконки взвода // 4
  tab_s4:=tab.Strings[tab_4_SL];
  tab_s4:=Smart_Replacing('"removeSquadIcon"', tab_s4, chek4);
  tab.Delete(tab_4_SL);
  tab.Insert(tab_4_SL, tab_s4);

  // Параметры отображения иконки игрока/клана // 5.1
  tab_s5:=tab.Strings[tab_5_SL];
  tab_s5:=Smart_Replacing('"show"', tab_s5, chek5);
  tab.Delete(tab_5_SL);
  tab.Insert(tab_5_SL, tab_s5);

  // Положение по оси X относительно иконки танка // 5.2
  tab_s6:=tab.Strings[tab_6_SL];
  tab_s6:=Smart_Replacing('"x"', tab_s6, IntToStr(SpinEdit41.Value));
  tab.Delete(tab_6_SL);
  tab.Insert(tab_6_SL, tab_s6);

  // Положение по оси Y относительно иконки танка // 5.3
  tab_s7:=tab.Strings[tab_7_SL];
  tab_s7:=Smart_Replacing('"y"', tab_s7, IntToStr(SpinEdit42.Value));
  tab.Delete(tab_7_SL);
  tab.Insert(tab_7_SL, tab_s7);

  // Положение по оси X для правых ушей // 5.4
  tab_s8:=tab.Strings[tab_8_SL];
  tab_s8:=Smart_Replacing('"xr"', tab_s8, IntToStr(SpinEdit43.Value));
  tab.Delete(tab_8_SL);
  tab.Insert(tab_8_SL, tab_s8);

  // Положение по оси Y для правых ушей // 5.5
  tab_s9:=tab.Strings[tab_9_SL];
  tab_s9:=Smart_Replacing('"yr"', tab_s9, IntToStr(SpinEdit44.Value));
  tab.Delete(tab_9_SL);
  tab.Insert(tab_9_SL, tab_s9);

  // Ширина иконки игрока/клана // 5.6
  tab_s10:=tab.Strings[tab_10_SL];
  tab_s10:=Smart_Replacing('"w"', tab_s10, IntToStr(SpinEdit45.Value));
  tab.Delete(tab_10_SL);
  tab.Insert(tab_10_SL, tab_s10);

  // Высота иконки игрока/клана // 5.7
  tab_s11:=tab.Strings[tab_11_SL];
  tab_s11:=Smart_Replacing('"h"', tab_s11, IntToStr(SpinEdit46.Value));
  tab.Delete(tab_11_SL);
  tab.Insert(tab_11_SL, tab_s11);

  // Прозрачность иконки игрока/клана // 5.8
  tab_s12:=tab.Strings[tab_12_SL];
  tab_s12:=Smart_Replacing('"alpha"', tab_s12, IntToStr(SpinEdit47.Value));
  tab.Delete(tab_12_SL);
  tab.Insert(tab_12_SL, tab_s12);

  // Формат отображения для левой панели // 6
  tab_s13:=tab.Strings[tab_13_SL];
  tab_s13:=Smart_Replacing('"formatLeftNick"', tab_s13, RecStartEnd(Edit49.Text));
  tab.Delete(tab_13_SL);
  tab.Insert(tab_13_SL, tab_s13);

  // Формат отображения для правой панели // 7
  tab_s14:=tab.Strings[tab_14_SL];
  tab_s14:=Smart_Replacing('"formatRightNick"', tab_s14, RecStartEnd(Edit50.Text));
  tab.Delete(tab_14_SL);
  tab.Insert(tab_14_SL, tab_s14);

  // Формат отображения для левой панели // 8
  tab_s15:=tab.Strings[tab_15_SL];
  tab_s15:=Smart_Replacing('"formatLeftVehicle"', tab_s15, RecStartEnd(Edit51.Text));
  tab.Delete(tab_15_SL);
  tab.Insert(tab_15_SL, tab_s15);

  // Формат отображения для правой панели // 9
  tab_s16:=tab.Strings[tab_16_SL];
  tab_s16:=Smart_Replacing('"formatRightVehicle"', tab_s16, RecStartEnd(Edit52.Text));
  tab.Delete(tab_16_SL);
  tab.Insert(tab_16_SL, tab_s16);

  // само сохранение
  tab.SaveToFile(dir_xvm+tab_name);
end;

// Загрузка из файла turretMarkers.xc в программу
procedure TXCTuner_Form1.turret_loading;
begin
  turret.Clear;
  turret.LoadFromFile(dir_xvm+turret_name);
  TUR0_SL:=Search_Line(0, '"turretMarkers"', turret);
  if TUR0_SL=-1 then error_line('"turretMarkers"', turret_name) else
  begin
    // Субъект имеет стоковую башню и топ орудие не может быть установлено. Субъект сильно уязвим. // 1
    Search:='"highVulnerability"';
    TUR1_SL:=Search_Line(TUR0_SL, Search, turret);
    if TUR1_SL=-1 then error_line(Search, turret_name) else
    begin
      turret_s1:=turret.Strings[TUR1_SL];
      turret_s1:=new_change_str(Search, turret_s1);
      Edit22.Text:=DelStartEnd(turret_s1);
    end;

    // Субъект имеет стоковую башню и топ орудие может быть установлено. Субъект немного уязвим. // 2
    Search:='"lowVulnerability"';
    TUR2_SL:=Search_Line(TUR0_SL, Search, turret);
    if TUR2_SL=-1 then error_line(Search, turret_name) else
    begin
      turret_s2:=turret.Strings[TUR2_SL];
      turret_s2:=new_change_str(Search, turret_s2);
      Edit23.Text:=DelStartEnd(turret_s2);
    end;
  end;
  //edithint();
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

  turret.SaveToFile(dir_xvm+turret_name);
end;

procedure TXCTuner_Form1.alpha_loading;
begin
 LoadAlphaTab('alphaRating.', '"alphaRating":(.*?)"alphaHP"', ScrollBox23, False);
 LoadAlphaTab('alphaHP.', '"alphaHP":(.*?)"alpha"', ScrollBox24, False);
 LoadAlphaTabEx('"hp":(.*?)"hp_ratio"', ScrollBox27);
 LoadAlphaTabEx('"hp_ratio":(.*?)"x"', ScrollBox28);
 LoadAlphaTabEx('"x":(.*?)"eff"', ScrollBox29);
 LoadAlphaTabEx('"eff":(.*?)"wn6"', ScrollBox30);
 LoadAlphaTabEx('"wn6":(.*?)"wn8"', ScrollBox31);
 LoadAlphaTabEx('"wn8":(.*?)"e"', ScrollBox32);
 LoadAlphaTabEx('"e":(.*?)"rating"', ScrollBox33);
 LoadAlphaTabEx('"rating":(.*?)"kb"', ScrollBox34);
 LoadAlphaTabEx('"kb":(.*?)"avglvl"', ScrollBox35);
 LoadAlphaTabEx('"avglvl":(.*?)"t_battles"', ScrollBox36);
 LoadAlphaTabEx('"t_battles":(.*?)"tdb"', ScrollBox37);
 LoadAlphaTabEx('"tdb":(.*?)"tdv"', ScrollBox38);
 LoadAlphaTabEx('"tdv":(.*?)"tfb"', ScrollBox39);
 LoadAlphaTabEx('"tfb":(.*?)"tsb"', ScrollBox40);
 LoadAlphaTabEx('"tsb":(.*?)]', ScrollBox41);
end;

procedure TXCTuner_Form1.color_loading;
begin
ColorSubStrValue.Clear;
LoadColorsTab('def.', '"def":(.*?)"colorRating"', ScrollBox1, False);
LoadColorsTab('def.colorRating.', '"colorRating":(.*?)"colorHP"', ScrollBox2, False);
LoadColorsTab('def.colorHP.', '"colorHP":(.*?)"colors"', ScrollBox3, False);
LoadColorsTab('', '"system":(.*?)"dmg_kind"', ScrollBox4, True);
LoadColorsTab('', '"dmg_kind":(.*?)"vtype":', ScrollBox5, True);
LoadColorsTab('', '"vtype":(.*?)"damage":', ScrollBox6, True);
LoadColorsTab('', '"damage":(.*?)"hp":', ScrollBox7, True);
LoadColorsTabEx('"hp":(.*?)"hp_ratio":', ScrollBox8);
LoadColorsTabEx('"hp_ratio":(.*?)"x":', ScrollBox9);
LoadColorsTabEx('"x":(.*?)"eff":', ScrollBox10);
LoadColorsTabEx('"eff":(.*?)"wn6":', ScrollBox11);
LoadColorsTabEx('"wn6":(.*?)"wn8":', ScrollBox12);
LoadColorsTabEx('"wn8":(.*?)"e":', ScrollBox13);
LoadColorsTabEx('"e":(.*?)"rating":', ScrollBox14);
LoadColorsTabEx('"rating":(.*?)"kb":', ScrollBox15);
LoadColorsTabEx('"kb":(.*?)"avglvl":', ScrollBox16);
LoadColorsTabEx('"avglvl":(.*?)"t_battles":', ScrollBox17);
LoadColorsTabEx('"t_battles":(.*?)"tdb":', ScrollBox18);
LoadColorsTabEx('"tdb":(.*?)"tdv":', ScrollBox19);
LoadColorsTabEx('"tdv":(.*?)"tfb":', ScrollBox20);
LoadColorsTabEx('"tfb":(.*?)"tsb":', ScrollBox21);
LoadColorsTabEx('"tsb":(.*?)]', ScrollBox22);
end;

// Загрузка из файла
procedure TXCTuner_Form1.expanel_loading;
begin
  expanel.Clear;
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
  //edithint();
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

  expanel.SaveToFile(dir_xvm+expanel_name);
end;

// заполнение подсказок в edit-ах
(*
procedure TXCTuner_Form1.edithint;
var i: Integer;
begin
  for i:=0 to XCTuner_Form1.ComponentCount - 1 do
    begin
      if (XCTuner_Form1.Components[i] is TEdit) then
        begin
          (XCTuner_Form1.Components[i] as TEdit).ShowHint:=true;
          (XCTuner_Form1.Components[i] as TEdit).Hint:=(XCTuner_Form1.Components[i] as TEdit).Text;
        end;
    end;
  Edit24.Hint:='Формат часов на экране панели отладки (возле FPS). Формат: "Y.m.d H:i:s" => 2013.05.20 01:23:45, "H:i" => 01:23, Y:год, M:месяц, D:день, H:часы, N:минуты, S:секунды. Чтобы убрать часы, нужно оставить поле пустым!';
  Edit25.Hint:='Путь к папке иконок кланов относительно res_mods/xvm/res';
  Edit43.Hint:='Формат часов на экране загрузки боя. Формат: "Y.m.d H:i:s" => 2013.05.20 01:23:45, "H:i" => 01:23, Y:год, M:месяц, D:день, H:часы, N:минуты, S:секунды. Чтобы убрать часы, нужно оставить поле пустым!';
end;
*)

end.

