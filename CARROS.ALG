Algoritmo "Carros"

Var
ano, anoFinal: inteiro
preco, precoFinal: real
 ctrl, nome: caractere
Inicio

      enquanto ctrl <> "n" faca
         escreva("Nome do carro: ")
         leia(nome)
         escreva("Preco do carro: ")
         leia(preco)
         escreva("Ano do carro: ")
         leia(ano)
         
         se anoFinal = 0 entao
            anoFinal <- ano
         fimse
         
         se preco > precoFinal entao
            precoFinal <- preco
         fimse
         
         se ano < anoFinal entao
            anoFinal <- ano
         fimse
         
         escreva("Continuar? s/n: ")
         leia(ctrl)

      fimenquanto
      
      escreval("Maior preco: ", precoFinal)
      escreval("Ano do carro mais antigo: ", anoFinal)
      escreval("Ultimo carro digitado: ", nome)
      



Fimalgoritmo
