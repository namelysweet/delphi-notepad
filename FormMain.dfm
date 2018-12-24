object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'NotePad++'
  ClientHeight = 470
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 655
    Height = 470
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    Lines.Strings = (
      'Delphi '#25945#31243#65306
      'CommandNotFound - '#22353#21542)
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object dlgOpen1: TOpenDialog
    Left = 48
    Top = 96
  end
  object dlgSave1: TSaveDialog
    Left = 48
    Top = 152
  end
  object mmMain: TMainMenu
    Left = 104
    Top = 96
    object F1: TMenuItem
      Caption = #25991#20214'(&F)'
      object N1: TMenuItem
        Caption = #26032#24314'(&N)'
        OnClick = N1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object O1: TMenuItem
        Caption = #25171#24320'(&O)...'
        OnClick = O1Click
      end
      object D1: TMenuItem
        Caption = #20445#23384'(&S)...'
        OnClick = D1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object X1: TMenuItem
        Caption = #36864#20986'(&X)'
        OnClick = X1Click
      end
    end
    object E1: TMenuItem
      Caption = #32534#36753'(&E)'
    end
    object H1: TMenuItem
      Caption = #24110#21161'(&H)'
    end
  end
end
