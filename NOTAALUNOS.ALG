Algoritmo "notaAlunos"

Var
   nota, notaFinal, maiorNota: real
   nome, ctrl, alunoMelhorNota: caractere
Inicio

      nota <- 0.0
      notaFinal <- 0.0
      
      enquanto ctrl <> "n" faca
         escreva("Digite um nome: ")
         leia(nome)
         
         enquanto nota <> -1 faca
            escreva("Digite uma nota (Digite -1 para sair): ")
            leia(nota)

            se nota <> -1 entao
               se nota > notaFinal entao
                  notaFinal <- nota
               fimse
               se notaFinal > maiorNota entao
                  maiorNota <- notaFinal
                  alunoMelhorNota <- nome
               fimse
            fimse
         fimenquanto
         
         escreval("A maior nota de ", nome, " foi ", notaFinal)
         escreva("continuar s/n: ")
         leia(ctrl)
         nota <- 0
      fimenquanto
      escreva("A maior nota de todas foi ", maiorNota, " do aluno ", alunoMelhorNota)
      
      



Fimalgoritmo
