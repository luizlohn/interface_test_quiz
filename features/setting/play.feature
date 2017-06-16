#language:pt
@setting
Funcionalidade: Configurando aplicativo
  Como um usuário
  Eu quero poder alterar as configurações
  De modo que eu possa escolher minha configuração

  @desativar_som
  Cenário: Desativar som
    Dado que esteja na tela de Configurações
    E o botão da música estiver habilitado
    Quando clicar no botão desligar som
    Então a música deverá parar de tocar

  @ativar_som
  Cenário: Desativar som
    Dado que esteja na tela de Configurações
    E o botão da música estiver desabilitado
    Quando clicar no botão habilitar som
    Então a música deverá tocar

  @ativar_notificacoes
  Cenário: Ativar Notificações
    Dado que esteja na tela de Configurações
    E o botão da notificacções estiver desativado
    Quando clicar no botão ativar notificações
    Então deverá receber notificações

  @desativar_notificacoes
  Cenário: Desativar Notificações
    Dado que esteja na tela de Configurações
    E o botão da notificacções estiver ativado
    Quando clicar no botão desativar notificações
    Então não deverá mais receber notificações
