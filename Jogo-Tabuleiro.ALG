Algoritmo "Trabalho Gilberto "
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Gilberto Viana
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Equipe     : Marcia,Rafaela,Rafael,Italo e Fabiano
Var
   //inicio dos procedimento

Procedimento menu
var
   opcao:inteiro

inicio

   escreval("")
   escreval("            JOGO DO LUPO")
   escreval("")
   escreval("            TEMA - A FAZENDA")
   escreval("")

   escreval("+--------------------------------------------+")
   escreval("|   1 - Cadastrar nomes jogadores            |")
   escreval("|   2 - jogar nova partida                   |")
   escreval("|   3 - Mostrar pontuação de jogadores       |")
   escreval("|   4 - sair do jogo                         |")
   escreval("+--------------------------------------------+")
   Escreval("Escolha uma das opções acima")
   leia(opcao)

   escolha opcao
   caso 1
      CADASTRAJOGADOR
      ordem_jogadas
      menu
   caso 2
      se verifica_cad_jogadores=falso entao //caso não tenha clicado na opção 1 ele força o cadastro
         escreval("")
         escreval("Você esqueceu de cadastrar os jogadores:")
         escreval("")
         CADASTRAJOGADOR
         ordem_jogadas
      fimse
      organiza_jogadas
      //colocar procedimento aqui - iniciar nova partida

   caso 3
      //colocar procedimento aqui - mostrar tela de pontos
      se verifica_cad_jogadores=falso entao //caso não tenha clicado na opção 1 ele força o cadastro
         escreval("")
         escreval("Você esqueceu de cadastrar os jogadores:")
         escreval("")
      senao
         escreval("------------------------------")
         escreval("O placar esta de: ")
         escreval("Jogador - ",NOME[0]," - ",placar_jogador1," pts")
         escreval("Jogador - ",NOME[1]," - ",placar_jogador2," pts")
         escreval("Jogador - ",NOME[2]," - ",placar_jogador3," pts")
         escreval("------------------------------")
      fimse
      menu
   caso 4
      limpatela
      escreval("+----------------------------------------+")
      escreval("|Obrigado por jogar nosso jogo!! \o/     |")
      escreval("|                                 |      |")
      escreval("|                                / \     |")
      escreval("+----------------------------------------+")
      escreval("DIGITE ESC PARA SAIR")
      LEIA(X)
   fimescolha
fimprocedimento


//--------

PROCEDIMENTO CADASTRAJOGADOR

VAR
   CONT: INTEIRO
   RETORNO: INTEIRO  //INTEIRAÇÃO COM JOGAR DODS DADOS

INICIO

   verifica_cad_jogadores<-verdadeiro
   CONT<-0

   ENQUANTO CONT < 3 FACA
      ESCREVAL("ESCREVA O NOME DO JOGADOR ",CONT+1, ": ")
      LEIA(NOME[CONT])
      CONT <- CONT+1
   FIMENQUANTO

   PARA CONT DE 0 ATE 2 PASSO 1 FACA
      ESCREVAL("Jogador ", CONT+1 , ": ",NOME[CONT])
   FIMPARA

FIMPROCEDIMENTO

//--------

FUNCAO DADOS(T:inteiro): INTEIRO
// "T" refere-se qual dado vai foi escolhido de 4 lados ou 6 lados
VAR

   VALOR :INTEIRO

INICIO

   SE T=4 ENTAO
      ALEATORIO 1,4
      LEIA(VALOR)
      ALEATORIO OFF

   SENAO

      ALEATORIO 1,6
      LEIA(VALOR)
      ALEATORIO OFF

   FIMSE

   RETORNE VALOR

FIMFUNCAO

//--------

procedimento ordem_jogadas
var
   jogador1, jogador2, jogador3, aux, maior, menor :inteiro
   temp: caracter
inicio
   limpatela
   escreval("")
   escreval("Sorteio da ordem de jogo: ")
   jogador1 <- randi(6) + 1
   enquanto jogador2 = 0 faca
      aux <- randi(6) + 1
      se aux <> jogador1 entao
         jogador2 <- aux
      fimse
   fimenquanto
   enquanto jogador3 = 0 faca
      aux <- randi(6) + 1
      se (aux <> jogador1) e (aux <> jogador2) entao
         jogador3 <- aux
      fimse
   fimenquanto

   se (jogador1 > jogador2) e (jogador1 > jogador3) entao
      se jogador2 < jogador3 entao
         temp <- NOME[1]
         NOME[1] <- NOME[2]
         NOME[2] <- temp
      fimse
   fimse

   se (jogador2 > jogador1) e (jogador2 > jogador3) entao
      se jogador1 > jogador3 entao
         temp <- NOME[0]
         NOME[0] <- NOME[1]
         NOME[1] <- temp
      senao
         temp <- NOME[0]
         NOME[0] <- NOME[1]
         NOME[1] <- NOME[2]
         NOME[2] <- temp
      fimse
   fimse

   se (jogador3 > jogador1) e (jogador3 > jogador2) entao
      se jogador1 > jogador2 entao
         temp <- NOME[0]
         NOME[0] <- NOME[2]
         NOME[2] <- NOME[1]
         NOME[1] <- temp
      senao
         temp <- NOME[0]
         NOME[0] <- NOME[2]
         NOME[2] <- temp
      fimse
   fimse
   escreval("")
   escreval("O primeiro jogador será.: ", NOME[0])
   escreval("O segundo jogador será..: ", NOME[1])
   escreval("O terceiro jogador será.: ", NOME[2])
fimprocedimento

procedimento organiza_jogadas
var

   cont,x:inteiro
   tipo_dado:caracter
   auxiliar,casa_a_analisar,n: inteiro
   especial:logico
inicio

   repita
      para cont de 0 ate 2 passo 1 faca


         escreval("")
         escreval("E a vez do Jogador ",cont+1," - ",NOME[cont])
         escreval("")


         se (D6_jogador1=falso) e (cont=0) entao
            escreval("Desejar usar o dado D6 'S' ou 'N'?")
            leia(tipo_dado)
            se (tipo_dado="s") ou (tipo_dado="S") entao
               D6_jogador1<-verdadeiro
            fimse
         senao
            se (D6_jogador2=falso) e (cont=1) entao
               escreval("Desejar usar o dado D6 'S' ou 'N'?")
               leia(tipo_dado)
               se (tipo_dado="s") ou (tipo_dado="S") entao
                  D6_jogador2<-verdadeiro
               fimse
            senao
               se (D6_jogador3=falso) e (cont=2) entao
                  escreval("Desejar usar o dado D6 'S' ou 'N'?")
                  leia(tipo_dado)
                  se (tipo_dado="s") ou (tipo_dado="S") entao
                     D6_jogador3<-verdadeiro
                  fimse
               fimse
            fimse
         fimse

         se (tipo_dado="S") ou (tipo_dado="s") entao
            n<-6
         senao
            n<-4
         fimse

         escreval("Digite enter para continuar......")
         leia(x)
         tipo_dado<-""

         escreval("Você tirou o numero: ")
         numero_sorteado<-dados(n)

         //movimenta o jogador
         se cont = 0 entao
            jogador1 <- jogador1+numero_sorteado
            casa_a_analisar<-jogador1
         fimse
         se cont = 1 entao
            jogador2 <- jogador2+numero_sorteado
            casa_a_analisar<-jogador2
         fimse
         se cont = 2 entao
            jogador3 <- jogador3+numero_sorteado
            casa_a_analisar<-jogador3
         fimse

         auxiliar <- bonifica_penaliza(casa_a_analisar, cont)
      fimpara
   ate ganhador=verdadeiro

fimprocedimento

funcao bonifica_penaliza (position, gamer: inteiro):inteiro  //procedimento de analise e bonificação do jogador

var

   jgnov,casa_local: inteiro
   auxliar:inteiro
inicio
   //limpatela
   se (position = 4)ou(position = 12)ou(position = 20) entao

      escreval("Você irrigou sua plantação, jogue novamente.")
      escreval("Jogando dado......")
      jgnov <- DADOS(4)
      escreval("")
      escreval("Parabéns, você ganhou mais: ",  jgnov)
      se gamer = 0 entao
         jogador1 <- jogador1 + jgnov
      fimse
      se gamer = 1 entao
         jogador2 <- jogador2 + jgnov
      fimse
      se gamer = 2 entao
         jogador3 <- jogador3 + jgnov
      fimse
   senao
      se(position = 8)ou(position = 16)ou(position = 24) entao
         escreval("O dia esta otimo para trabalhar avance 3 casas.")
         se gamer = 0 entao
            jogador1 <- jogador1 + 3
         fimse
         se gamer = 1 entao
            jogador2 <- jogador2 + 3
         fimse
         se gamer = 2 entao
            jogador3 <- jogador3 + 3
         fimse
      fimse
   fimse

   se (position = 5) entao
      escreval("A geada tomou conta da fazenda e você não guardou as galinhas, não avance nenhuma casa.")
      se gamer = 0 entao
         jogador1 <- jogador1 - numero_sorteado
      fimse
      se gamer = 1 entao
         jogador2 <- jogador2 - numero_sorteado
      fimse
      se gamer = 2 entao
         jogador3 <- jogador3 - numero_sorteado
      fimse
   senao
      se(position = 10) entao
         escreval("Você esqueceu de colocar ração para as vacas, volte tres casas.")
         se gamer = 0 entao
            jogador1 <- jogador1 - 3
         fimse
         se gamer = 1 entao
            jogador2 <- jogador2 - 3
         fimse
         se gamer = 2 entao
            jogador3 <- jogador3 - 3
         fimse
      senao
         se(position = 15) entao
            escreval("Você esqueceu o rastelo volte ao inicio jogo.")
            se gamer = 0 entao
               jogador1 <- 1
            fimse
            se gamer = 1 entao
               jogador2 <- 1
            fimse
            se gamer = 2 entao
               jogador3 <- 1
            fimse
         fimse
      fimse
   fimse


   se gamer = 0 entao
      casa_local<-jogador1
   fimse
   se gamer = 1 entao
      casa_local<-jogador2
   fimse
   se gamer = 2 entao
      casa_local<-jogador3
   fimse

   se casa_local>25 entao
   casa_local<-25
   fimse

   escreval("--------------------------------")
   escreval(nome[gamer]," estava na casa ",position-numero_sorteado)
   escreval("Ele foi para casa ",casa_local)
   escreval("--------------------------------")
   se (jogador1>=25) ou (jogador2>=25)ou (jogador3>=25)entao
      ganhador<-verdadeiro
      jogador1<-1
      jogador2<-1
      jogador3<-1
      auxliar<-pontua(gamer)
      zeramento
      menu
   fimse

fimfuncao

funcao pontua(jogador:inteiro):inteiro
var
inicio

   se jogador = 0 entao
      placar_jogador1<-placar_jogador1+1
   fimse
   se jogador = 1 entao
      placar_jogador2<-placar_jogador2+1
   fimse
   se jogador = 2 entao
      placar_jogador3<-placar_jogador3+1
   fimse

fimfuncao

procedimento placar
escreval("------------------------------")
escreval("O placar esta de: ")
escreval("Jogador - ",NOME[0]," - ",placar_jogador1," pts")
escreval("Jogador - ",NOME[1]," - ",placar_jogador2," pts")
escreval("Jogador - ",NOME[2]," - ",placar_jogador3," pts")
escreval("------------------------------")
fimprocedimento


procedimento zeramento()
var
inicio
   jogador1<-1
   jogador2<-1
   jogador3<-1

   D6_jogador1<-falso
   D6_jogador2<-falso
   D6_jogador3<-falso
   ganhador<-falso
fimprocedimento

//PROCEDIMENTO ACIMA
placar_jogador1,placar_jogador2,placar_jogador3:inteiro
D6_jogador1,D6_jogador2,D6_jogador3,verifica_cad_jogadores:logico
jogador1,jogador2,jogador3:inteiro
numero_sorteado,X:inteiro
NOME: VETOR[0..2] DE CARACTERE // NOME DO JOGADOR
ganhador:logico
Inicio

   jogador1<-1
   jogador2<-1
   jogador3<-1
   menu

Fimalgoritmo


