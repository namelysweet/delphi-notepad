program NotePad;

uses
  Vcl.Forms,
  FormMain in 'FormMain.pas' {frmMain};

{$R *.res}

{ Reduce EXE size by disabling as much of RTTI as possible (delphi 2009/2010) }

{$IF CompilerVersion >= 21.0}

{$WEAKLINKRTTI ON}

{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

{$IFEND}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
