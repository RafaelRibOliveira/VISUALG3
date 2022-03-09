Algoritmo "maiorMenorEnquanto"


Var

   x, n, maior, menor: inteiro


Inicio
   x <- 1
   
   enquanto x < 10 faca
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
   fimenquanto
   
   escreval("maior numero: ", maior)
   escreval("menor numero: ", menor)
   




Fimalgoritmo