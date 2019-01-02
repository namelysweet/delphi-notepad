program NotePad;

{ Reduce EXE size by disabling as much of RTTI as possible Delphi}

{$IF CompilerVersion >= 21.0}

{$WEAKLINKRTTI ON}

{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

{$IFEND}

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
