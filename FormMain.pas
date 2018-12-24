unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    mmo1: TMemo;
    mmMain: TMainMenu;
    F1: TMenuItem;
    E1: TMenuItem;
    H1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    O1: TMenuItem;
    D1: TMenuItem;
    N3: TMenuItem;
    X1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.D1Click(Sender: TObject);
begin
  dlgSave1.FileName := 'CommandNotFound-Delphi';
  if dlgSave1.Execute then begin
    mmo1.Lines.SaveToFile
    (dlgSave1.FileName + '.txt');

    frmMain.Caption:= dlgSave1.FileName + ' - NotePad++';
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  with dlgOpen1 do begin
    Options:=Options+[ofPathMustExist,ofFileMustExist];
    InitialDir:=ExtractFilePath(Application.ExeName);
    Filter:='Text files (*.txt)|*.txt';
  end;
  with dlgSave1 do begin
    InitialDir:=ExtractFilePath(Application.ExeName);
    Filter:='Text files (*.txt)|*.txt';
  end;
  mmo1.ScrollBars := ssBoth;
end;

procedure TfrmMain.N1Click(Sender: TObject);
begin
mmo1.Text:='';
end;

procedure TfrmMain.O1Click(Sender: TObject);
begin
  if dlgOpen1.Execute then begin
    frmMain.Caption := dlgOpen1.FileName + ' - NotePad++';
    mmo1.Lines.LoadFromFile(dlgOpen1.FileName);{xxx}
    mmo1.SelStart := 0;//
  end;
end;

procedure TfrmMain.X1Click(Sender: TObject);
begin
Close;
end;

end.
