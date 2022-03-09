Algoritmo "somarSubtrairMultiplicar"

Var
   A, B: inteiro


Inicio
      escreva("Digite o primeiro numero: ")
      leia(A)
      escreva("Digite o segundo numero: ")
      leia(B)

      se A = B entao
      escreva("a soma de A e B é:", A+B)
    fimse
        se A < B entao
        escreva("a sobtracao de A e B é: ", A-B)
    senao
        se B < A entao
        escreva("a multiplicacao de A e B é: ", B*A)
        senao
    fimse
fimse

Fimalgoritmo
