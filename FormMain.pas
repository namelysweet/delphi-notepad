unit FormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ComCtrls, Winapi.ShellAPI;

type
  TfrmMain = class(TForm)
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    mmo1: TMemo;
    mmMain: TMainMenu;
    menuFile: TMenuItem;
    menuEdit: TMenuItem;
    menuHelp: TMenuItem;
    menuNew: TMenuItem;
    N2: TMenuItem;
    menuOpen: TMenuItem;
    menuSave: TMenuItem;
    N3: TMenuItem;
    menuExit: TMenuItem;
    statMain: TStatusBar;
    menuAbout: TMenuItem;
    menuSelectAll: TMenuItem;
    procedure FormCreate(Sender: TObject);

    procedure mmo1Change(Sender: TObject);
    procedure menuNewClick(Sender: TObject);
    procedure menuOpenClick(Sender: TObject);
    procedure menuExitClick(Sender: TObject);
    procedure menuSaveClick(Sender: TObject);

    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure menuSelectAllClick(Sender: TObject);
    procedure mmo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure menuAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

var boolSave:Boolean;

{$R *.dfm}





procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var iResult:Integer;
begin

if (boolSave) then begin
  iResult:= Application.MessageBox(PWideChar('是否将更改保存文件？'), PWideChar(frmMain.Caption),
            MB_YESNOCANCEL + MB_ICONQUESTION);
  case iResult of
      ID_YES: begin
          menuSaveClick(Self);
          CanClose:= True;
        end;
      ID_NO: CanClose:= True;

      ID_CANCEL: CanClose:=False;
    end;
end;


end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  boolSave:=False;
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

procedure TfrmMain.menuAboutClick(Sender: TObject);
begin
ShellExecute(Application.Handle, nil, 'https://commandnotfound.cn/', nil, nil, SW_SHOWNORMAL);
end;

procedure TfrmMain.menuExitClick(Sender: TObject);
var iResult:Integer;
begin
  Close;
end;

procedure TfrmMain.menuNewClick(Sender: TObject);
var iResult:Integer;
begin
  if (boolSave) then begin

    iResult:= Application.MessageBox(PWideChar('是否将更改保存文件？'), PWideChar(frmMain.Caption),
              MB_YESNOCANCEL + MB_ICONQUESTION);
    case iResult of
        ID_YES: begin
                  menuSaveClick(Self);
                  mmo1.Text:='';
                  boolSave:=False;
          end;
        ID_NO: begin
                 mmo1.Text:='';
                 boolSave:=False;
               end;

        ID_CANCEL:
      end;

  end else begin
    mmo1.Text:='';
  end;



end;

procedure TfrmMain.menuOpenClick(Sender: TObject);
begin
  if dlgOpen1.Execute then begin
    frmMain.Caption := dlgOpen1.FileName + ' - NotePad++';
    mmo1.Lines.LoadFromFile(dlgOpen1.FileName);{xxx}
    mmo1.SelStart := 0;//
  end;
end;

procedure TfrmMain.menuSaveClick(Sender: TObject);
begin
  dlgSave1.FileName := 'CommandNotFound-Delphi';
  if dlgSave1.Execute then begin
    mmo1.Lines.SaveToFile
    (dlgSave1.FileName + '.txt');

    frmMain.Caption:= dlgSave1.FileName + ' - NotePad++';
  end;
end;

procedure TfrmMain.menuSelectAllClick(Sender: TObject);
begin
  mmo1.SelectAll;
end;

procedure TfrmMain.mmo1Change(Sender: TObject);
begin
  boolSave:=True;
end;




procedure TfrmMain.mmo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=$41) and (Shift=[ssctrl]) then
  mmo1.SelectAll;
end;

end.
