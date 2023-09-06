# show-message-fmx
Copiado de https://github.com/deividyalcantara/show-message-fmx

procedure TFormHome.ButtonClick(Sender: TObject);
TMensagemDlg.MessageDlg(
    FormHome,
    'XXXXXXXXX',
    'XXXX XXXXXXXXX XXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXX!',
    TModeloDialogType.mdModelo1Aviso,
    [mbSim, mbNao, mbAjuda],
    [EventoMensagem1, EventoMensagem2, EventoMensagem3],
    [False, False, True]
  );
end;

procedure TFormHome.Button11Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Mensagem',
    'Deseja apagar a mensagem?',
    TModeloDialogType.mdModelo1Questionamento,
    [mbSim, mbNao],
    [EventoMensagem1, EventoMensagem2]
  );
end;

procedure TFormHome.Button1Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'E-mail',
    'E-mail enviado com sucesso! Deseja enviar novo e-mail?',
    TModeloDialogType.mdModelo2Sucesso,
    [mbSim, mbNao],
    [EventoMensagem1, EventoMensagem2]
  );
end;

procedure TFormHome.Button2Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Cliente',
    'Erro ao tentar adicionar o cliente!',
    TModeloDialogType.mdModelo1Erro,
    [mbIgnorar, mbVoltar],
    [EventoMensagem1, EventoMensagem2]
  );
end;

procedure TFormHome.Button3Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Sincronização',
    'A sincronização dos dados falhou!',
    TModeloDialogType.mdModelo2Erro,
    [mbTentarNovamente],
    [EventoMensagem4]
  );
end;

procedure TFormHome.Button4Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Olá, Dêividy!',
    'Sua conta foi criada com sucesso!',
    TModeloDialogType.mdModelo3Sucesso,
    [mbContinuar],
    [EventoMensagem1]
  );
end;

procedure TFormHome.Button5Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Bloqueado',
    'Sua conta foi bloqueada após infringir as regras da plataforma!',
    TModeloDialogType.mdModelo3Erro,
    [mbSair],
    [EventoMensagem1]
  );
end;

procedure TFormHome.Button6Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Mensagem',
    'Uma nova mensagem foi recebida.',
    TModeloDialogType.mdModelo1Informacao,
    [mbOk],
    [EventoMensagem1]
  );
end;

procedure TFormHome.Button7Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Cliente',
    'É necessário informar o nome do cliente para continuar!',
    TModeloDialogType.mdModelo1Aviso,
    [mbOk],
    [EventoMensagem1]
  );
end;

procedure TFormHome.Button8Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Produto',
    'Produto cadastrado com sucesso! Código: 140.251',
    TModeloDialogType.mdModelo1Confirmacao,
    [mbOk],
    [EventoMensagem1]
  );
end;

procedure TFormHome.Button9Click(Sender: TObject);
begin
  TMensagemDlg.MessageDlg(
    FormHome,
    'Grupos',
    'Deseja excluir todos os grupos selecionados?',
    TModeloDialogType.mdModelo1Questionamento,
    [mbSim, mbNao],
    [EventoMensagem1, EventoMensagem2],
    [False, True]
  );
end;

procedure TFormHome.EventoMensagem1(Sender: TObject);
begin
  ShowMessage('Evento 1');
  TMensagemDlg.Destruir;
end;

procedure TFormHome.EventoMensagem2(Sender: TObject);
begin
  ShowMessage('Evento 2');
  TMensagemDlg.Destruir;
end;

procedure TFormHome.EventoMensagem3(Sender: TObject);
begin
  ShowMessage('Evento 3');
  TMensagemDlg.Destruir;
end;

procedure TFormHome.EventoMensagem4(Sender: TObject);
begin
  TMensagemDlg.Destruir;

  TMensagemDlg.MessageDlg(
    FormHome,
    'Sincronização',
    'A sincronização foi realizada com sucesso!',
    TModeloDialogType.mdModelo2Sucesso,
    [mbContinuar],
    [EventoMensagem3]
  );
end;

procedure TFormHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TMensagemDlg.Destruir;
end;