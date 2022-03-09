Algoritmo "maiorN"


Var

   x, n, maior: inteiro


Inicio
   x <- 1
   
   enquanto x > 0 faca
     escreva("Digite um numero: ")
     leia(n)

     se x = 1 entao
        maior <- n
     fimse
     
     se n > maior entao
        maior <- n
     fimse

     
     x <- n
   fimenquanto
   
   escreval("maior numero: ", maior)


Fimalgoritmo