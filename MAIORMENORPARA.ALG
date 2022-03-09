Algoritmo "maiorMenorPara"


Var

   x, n, maior, menor: inteiro


Inicio
   
   para x de 1 ate 10 passo 1 faca
     escreva("Digite um numero: ")
     leia(n)

     se x = 1 entao
        maior <- n
        menor <- n
     fimse
     
     se n > maior entao
        maior <- n
     fimse
     
     se n < menor entao
        menor <- n
     fimse
     
     x <- x +1
   fimpara
   
   escreval("maior numero: ", maior)
   escreval("menor numero: ", menor)
   




Fimalgoritmo