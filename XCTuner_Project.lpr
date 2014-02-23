program XCTuner_Project;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, Unit2, Unit3, pl_visualplanit, pl_excontrols,
  runtimetypeinfocontrols, Unit4
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TXCTuner_Form1, XCTuner_Form1);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TEdit_XVM, Edit_XVM);
  Application.CreateForm(TColorSelectMy, ColorSelectMy);
  Application.Run;
end.

