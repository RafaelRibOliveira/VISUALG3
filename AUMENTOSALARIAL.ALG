Algoritmo "aumentoSalarial"
//  
//  

Var
   salario, aumento, reajuste: real


Inicio
      escreva("Digite seu salario: ")
      leia(salario)
      escreva("Digite o aumento salarial: ")
      leia(reajuste)
aumento <- salario*(reajuste/100) + salario
      escreva("O seu novo salario é: R$", aumento)


Fimalgoritmo