object FAnalisadorLexico: TFAnalisadorLexico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Linguagens Formais - Analisador L'#233'xico'
  ClientHeight = 648
  ClientWidth = 1161
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 274
    Top = 9
    Width = 54
    Height = 16
    Caption = 'Consulta:'
  end
  object stg_analisador: TStringGrid
    Left = 274
    Top = 37
    Width = 879
    Height = 603
    ColCount = 27
    DefaultColWidth = 30
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
    OnDrawCell = stg_analisadorDrawCell
  end
  object edt_busca: TEdit
    Left = 334
    Top = 6
    Width = 819
    Height = 24
    TabOrder = 1
    OnKeyDown = edt_buscaKeyDown
    OnKeyUp = edt_buscaKeyUp
  end
  object btn_limpar: TButton
    Left = 159
    Top = 5
    Width = 109
    Height = 26
    Caption = 'Limpar Entrada(s)'
    TabOrder = 2
    OnClick = btn_limparClick
  end
  object dbg_entrada: TDBGrid
    Left = 8
    Top = 37
    Width = 260
    Height = 603
    DataSource = src_entrada
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Entrada'
        Width = 223
        Visible = True
      end>
  end
  object dbn_entrada: TDBNavigator
    Left = 9
    Top = 8
    Width = 144
    Height = 23
    DataSource = src_entrada
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    ConfirmDelete = False
    TabOrder = 4
  end
  object cds_entrada: TClientDataSet
    PersistDataPacket.Data = {
      360000009619E0BD010000001800000001000000000003000000360007456E74
      72616461020049000000010005574944544802000200D0070000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Entrada'
        DataType = ftString
        Size = 2000
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforePost = cds_entradaBeforePost
    AfterPost = cds_entradaAfterPost
    BeforeDelete = cds_entradaBeforeDelete
    AfterDelete = cds_entradaAfterDelete
    Left = 24
    Top = 592
    object cds_entradaEntrada: TStringField
      FieldName = 'Entrada'
      Size = 2000
    end
  end
  object src_entrada: TDataSource
    DataSet = cds_entrada
    Left = 88
    Top = 592
  end
end
