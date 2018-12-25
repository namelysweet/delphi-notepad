object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'NotePad++'
  ClientHeight = 470
  ClientWidth = 655
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object mmo1: TMemo
    Left = 0
    Top = 0
    Width = 655
    Height = 451
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
    OnChange = mmo1Change
    OnKeyDown = mmo1KeyDown
    ExplicitHeight = 470
  end
  object statMain: TStatusBar
    Left = 0
    Top = 451
    Width = 655
    Height = 19
    Panels = <
      item
        Width = 500
      end
      item
        Alignment = taCenter
        Text = 'CommandNotFound'
        Width = 50
      end>
    ExplicitLeft = 336
    ExplicitTop = 256
    ExplicitWidth = 0
  end
  object dlgOpen1: TOpenDialog
    Left = 160
    Top = 104
  end
  object dlgSave1: TSaveDialog
    Left = 288
    Top = 104
  end
  object mmMain: TMainMenu
    Left = 224
    Top = 104
    object menuFile: TMenuItem
      Caption = #25991#20214'(&F)'
      object menuNew: TMenuItem
        Caption = #26032#24314'(&N)'
        ShortCut = 16462
        OnClick = menuNewClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object menuOpen: TMenuItem
        Caption = #25171#24320'(&O)...'
        ShortCut = 16463
        OnClick = menuOpenClick
      end
      object menuSave: TMenuItem
        Caption = #20445#23384'(&S)...'
        ShortCut = 16467
        OnClick = menuSaveClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object menuExit: TMenuItem
        Caption = #36864#20986'(&X)'
        OnClick = menuExitClick
      end
    end
    object menuEdit: TMenuItem
      Caption = #32534#36753'(&E)'
      object menuSelectAll: TMenuItem
        Caption = #20840#36873'(&A)'
        ShortCut = 16449
        OnClick = menuSelectAllClick
      end
    end
    object menuHelp: TMenuItem
      Caption = #24110#21161'(&H)'
      object menuAbout: TMenuItem
        Caption = #20851#20110'(&A) ...'
        ShortCut = 112
        OnClick = menuAboutClick
      end
    end
  end
end
