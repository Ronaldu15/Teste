object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 622
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 41
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 568
    ExplicitTop = 384
    ExplicitWidth = 185
    object Shape1: TShape
      Left = 7
      Top = 8
      Width = 210
      Height = 27
      Brush.Color = clSkyBlue
    end
    object edtPesquisa: TEdit
      Left = 16
      Top = 11
      Width = 177
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 240
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1112
    Height = 581
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -8
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 1110
      Height = 579
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Dados'
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 1102
          Height = 549
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 736
          ExplicitTop = 368
          ExplicitWidth = 185
          ExplicitHeight = 41
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 1098
            Height = 545
            Align = alClient
            DataSource = dsTarefa
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tabela'
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Data'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cd_status'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Descri'#231#227'o'
                Width = 500
                Visible = True
              end>
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Cadastro'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1102
          Height = 549
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 2
          object Label1: TLabel
            Left = 51
            Top = 27
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
          end
          object Label2: TLabel
            Left = 223
            Top = 27
            Width = 24
            Height = 15
            Caption = 'Data'
          end
          object Label3: TLabel
            Left = 56
            Top = 83
            Width = 31
            Height = 15
            Caption = 'Tarefa'
          end
          object Label4: TLabel
            Left = 56
            Top = 112
            Width = 32
            Height = 15
            Caption = 'Status'
          end
          object Label5: TLabel
            Left = 39
            Top = 138
            Width = 51
            Height = 15
            Caption = 'Descri'#231#227'o'
          end
          object edtCodigo: TDBEdit
            Left = 96
            Top = 24
            Width = 65
            Height = 23
            Color = clLightblue
            DataField = 'C'#243'digo'
            DataSource = dsTarefaCadastro
            TabOrder = 0
          end
          object edtData: TDBEdit
            Left = 253
            Top = 24
            Width = 100
            Height = 23
            Color = clLightblue
            DataField = 'Data'
            DataSource = dsTarefaCadastro
            TabOrder = 1
          end
          object edtTarefa: TDBEdit
            Left = 96
            Top = 80
            Width = 214
            Height = 23
            DataField = 'C'#243'digo'
            DataSource = dsTarefaCadastro
            TabOrder = 2
          end
          object edtStatus: TDBLookupComboBox
            Left = 96
            Top = 109
            Width = 145
            Height = 23
            DataField = 'cd_status'
            DataSource = dsTarefaCadastro
            KeyField = 'cd_status'
            ListField = 'nm_status'
            ListSource = dsStatus
            TabOrder = 3
          end
          object edtDescricao: TDBEdit
            Left = 96
            Top = 138
            Width = 285
            Height = 37
            DataField = 'Descri'#231#227'o'
            DataSource = dsTarefaCadastro
            TabOrder = 4
          end
          object Panel4: TPanel
            Left = 1
            Top = 507
            Width = 1100
            Height = 41
            Align = alBottom
            TabOrder = 5
            ExplicitLeft = 2
            ExplicitTop = 459
            object Button2: TButton
              Left = 10
              Top = 8
              Width = 75
              Height = 25
              Caption = '&Inserir'
              TabOrder = 0
              OnClick = Button2Click
            end
            object Button3: TButton
              Left = 171
              Top = 8
              Width = 75
              Height = 25
              Caption = '&Excluir'
              TabOrder = 1
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 90
              Top = 8
              Width = 75
              Height = 25
              Caption = '&Editar'
              TabOrder = 2
              OnClick = Button4Click
            end
            object Button5: TButton
              Left = 850
              Top = 8
              Width = 75
              Height = 25
              Caption = '&Gravar'
              TabOrder = 3
              OnClick = Button5Click
            end
            object Button6: TButton
              Left = 946
              Top = 8
              Width = 75
              Height = 25
              Caption = '&Cancelar'
              TabOrder = 4
              OnClick = Button6Click
            end
          end
        end
      end
    end
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=ronaldo_teste'
      'User_Name=root'
      'Password=@borntowin15151528@'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 696
    Top = 232
  end
  object qryTarefa: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select '
      'cd_tarefa as '#39'C'#243'digo'#39','
      'nm_tarefa as '#39'Tabela'#39','
      'cd_status,'
      'nm_descricao as '#39'Descri'#231#227'o'#39','
      'dt_tarefa as '#39'Data'#39
      ' from tarefa'
      ' where'
      '  nm_tarefa like :nm_tafera')
    Left = 728
    Top = 232
    ParamData = <
      item
        Name = 'NM_TAFERA'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryTarefaCódigo: TIntegerField
      FieldName = 'C'#243'digo'
      Origin = 'cd_tarefa'
      Required = True
    end
    object qryTarefaTabela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tabela'
      Origin = 'nm_tarefa'
      Size = 100
    end
    object qryTarefacd_status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cd_status'
      Origin = 'cd_status'
    end
    object qryTarefaDescrição: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descri'#231#227'o'
      Origin = 'nm_descricao'
      Size = 120
    end
    object qryTarefaData: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data'
      Origin = 'dt_tarefa'
    end
  end
  object dsTarefa: TDataSource
    DataSet = qryTarefa
    Left = 760
    Top = 232
  end
  object qryStatus: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select'
      'cd_status,'
      'nm_status'
      'from '
      'tarefa_status')
    Left = 728
    Top = 296
    object qryStatuscd_status: TIntegerField
      FieldName = 'cd_status'
      Origin = 'cd_status'
      Required = True
    end
    object qryStatusnm_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nm_status'
      Origin = 'nm_status'
      Size = 45
    end
  end
  object dsStatus: TDataSource
    DataSet = qryStatus
    Left = 760
    Top = 296
  end
  object qryTarefaCadastro: TFDQuery
    AfterCancel = qryTarefaCadastroAfterCancel
    OnNewRecord = qryTarefaCadastroNewRecord
    Connection = conexao
    UpdateObject = updTarefaCadastro
    SQL.Strings = (
      'select '
      'cd_tarefa as '#39'C'#243'digo'#39','
      'nm_tarefa as '#39'Tabela'#39','
      'cd_status,'
      'nm_descricao as '#39'Descri'#231#227'o'#39','
      'dt_tarefa as '#39'Data'#39
      ' from tarefa')
    Left = 792
    Top = 296
    object qryTarefaCadastroCódigo: TIntegerField
      FieldName = 'C'#243'digo'
      Origin = 'cd_tarefa'
      Required = True
    end
    object qryTarefaCadastroTabela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Tabela'
      Origin = 'nm_tarefa'
      Size = 100
    end
    object qryTarefaCadastrocd_status: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cd_status'
      Origin = 'cd_status'
    end
    object qryTarefaCadastroDescrição: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descri'#231#227'o'
      Origin = 'nm_descricao'
      Size = 120
    end
    object qryTarefaCadastroData: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Data'
      Origin = 'dt_tarefa'
    end
  end
  object dsTarefaCadastro: TDataSource
    DataSet = qryTarefaCadastro
    Left = 824
    Top = 296
  end
  object qryUpdTarefaCadastro: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'declare @cd_tarefa int'
      ''
      'select @cd_tarefa = max(cd_tarefa) from Tarefa'
      ''
      'set @cd_tarefa = @cd_tarefa + 1'
      '@cd_tarefa as cd_tarefa')
    Left = 856
    Top = 296
  end
  object updTarefaCadastro: TFDUpdateSQL
    Connection = conexao
    InsertSQL.Strings = (
      'INSERT INTO ronaldo_teste.tarefa'
      '(cd_tarefa, nm_tarefa, cd_status, dt_tarefa, '
      '  nm_descricao)'
      
        'VALUES (:new_cd_tarefa, :new_nm_tarefa, :new_cd_status, :new_dt_' +
        'tarefa, '
      '  :new_nm_descricao)')
    ModifySQL.Strings = (
      'UPDATE ronaldo_teste.tarefa'
      
        'SET cd_tarefa = :new_cd_tarefa, nm_tarefa = :new_nm_tarefa, cd_s' +
        'tatus = :new_cd_status, '
      '   nm_descricao = :new_nm_descricao'
      'WHERE cd_tarefa = :old_cd_tarefa')
    DeleteSQL.Strings = (
      'DELETE FROM ronaldo_teste.tarefa'
      'WHERE cd_tarefa = :old_cd_tarefa')
    FetchRowSQL.Strings = (
      'SELECT cd_tarefa, nm_tarefa, cd_status, dt_tarefa, nm_descricao'
      'FROM ronaldo_teste.tarefa'
      'WHERE cd_tarefa = :old_cd_tarefa')
    Left = 789
    Top = 340
  end
end
