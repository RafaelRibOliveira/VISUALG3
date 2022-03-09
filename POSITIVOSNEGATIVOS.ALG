Algoritmo "positivosNegativos"


Var

 x, n, positivo, negativo: inteiro

Inicio
      x <- 10
      positivo <- 0
      negativo <- 0
      
      enquanto x > 0 faca
         escreva( "Digite um numero: ")
         leia(n)
         se n > 0 entao
            positivo <- positivo+1
         senao
            negativo <- negativo+1
         fimse
         x <- x -1
      fimenquanto
      
      escreval("Quantidade de numeros positivos ", positivo)
      escreval("Quantidade de numeros negativos ", negativo)

Fimalgoritmo