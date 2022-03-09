Algoritmo "somaSalario"


Var

   x: inteiro
   salario, n: real


Inicio
   x <- 1

   repita
      escreva("Digite o salario: ")
      leia(n)

      se n > 0 entao
         salario <- salario + n
      fimse

   ate(n = 0)

   escreval("soma salario: ", salario)


Fimalgoritmo