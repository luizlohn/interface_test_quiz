#language:pt
@play @acceptance
Funcionalidade: Jogar uma partida
  Como um usuário
  Eu quero jogar com outro adversário

  @play_topic_going_out @acceptance
  Cenário: Jogar o tópico Going Out
    Dado que esteja na tela Home
    Quando clicar no botão Play
    E clicar no tópico Going Out
    Então o jogo deverá carregar

