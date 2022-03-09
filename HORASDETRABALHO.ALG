Algoritmo "horasDeTrabalho"

Var
    horas, segunda, terca, quarta, quinta, sexta, semanal:real

Inicio
      horas <- 30,00
      escreval("Digite o numero de horas trabalhadas ao dia:")
      
      escreva("segunda: ")
      leia(segunda)
      
      escreva("terca: ")
      leia(terca)
      
      escreva("quarta: ")
      leia(quarta)
      
      escreva("quinta: ")
      leia(quinta)
      
      escreva("sexta: ")
      leia(sexta)
      
      escreval("segunda o funcionário trabalhou", segunda, "horas. Saldo: R$ ", horas*segunda)
      escreval("terca o funcionário trabalhou", terca, "horas. Saldo: R$ ", horas*terca)
      escreval("quarta o funcionário trabalhou", quarta, "horas. Saldo: R$ ", horas*quarta)
      escreval("quinta o funcionário trabalhou", quinta, "horas. Saldo: R$ ", horas*quinta)
      escreval("sexta o funcionário trabalhou", sexta, "horas. Saldo: R$ ", horas*sexta)
      
      semanal <- horas*(segunda+terca+quarta+quinta+sexta)
      
      escreva("O salario do funcionario é R$: ", semanal)




Fimalgoritmo