Algoritmo "Imposto"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Nelio Alves
// Descrição   : programa que calcula imposto de renda
// Autor(a)    : Davi Mendes
// Data atual  : 17/01/2024
Var
   salarioA, prestServ, ganhCap, med: real
   salarioM,edu, maxDed, gasDed, impBr, abat, impDev : real
   impSal, impServ, impGanh,totalImp, impDeb  : real
   


Inicio

      escreva("Renda anual com salario: ")
      leia(salarioA)
      escreva("Renda anual com prestacao de servico: ")
      leia(prestServ)
      escreva("Renda anual com ganho de capital: ")
      leia(ganhCap)
      escreva("Gastos medicos: ")
      leia(med)
      escreva("Gastos educacionais: ")
      leia(edu)
               //calculo para saber a media salario
                salarioM <- (salarioA / 12)


             //funcao que verifica o imposto do salario a pagar
      
             se salarioM < 3.000 entao
                impSal <- 0.00

                senao
                     se (salarioM >3.000) ou (salarioM <5000 ) entao

                     impSal <- ((salarioA *10)/100)

                     senao
                     
                     impSal <- ((salarioA * 20)/100)


                fimse
             
             fimse

             //funcao que verifica o imposto de prestacao de serviço a  pagar
             
             se prestServ > 0.00 entao

                 impServ <- ( prestServ * 15 ) / 100)


                 senao

                     impServ <- 0.00


                fimse
                
              //funcao que verifica o imposto de ganhos a pagar

                 se ganhCap > 0.00 entao

                 impGanh <- (( ganhCap * 20 ) / 100)


                 senao

                     impGanho <- 0.00


                fimse
                
             //Imposto Bruto
             
             totalImp <- impSal + impServ + impGanh
             impBr <- (( totalImp * 30)/100)
             
                
            // DEDUCOES
            
            gasDed <- med + edu
            
            impDeb <- gasDed * 30 / 100
            
            

            se ( impDeb > impBr ) entao
                 maxDed <- impBr
                 
            senao
                 maxDeb <- impDeb


           fimse
           
           
      escreval("")
      escreval("")
      escreval("RELATORIO DE IMPOSTO DE RENDA")
      escreval("")
      escreval("CONSOLIDADO DE RENDA: ")
      escreval("")
      escreval("Imposto sobre salario: R$ ",salarioM:6:2)
      escreval("Imposto sobre serviços: R$ ",impServ:6:2)
      escreval("Imposto sobre ganho de capital: R$ ",impGanh:6:2)
      escreval("")
      escreval("DEDUCOES:")
      escreval("")
      escreval("Maximo dedutivel: RS ",maxDed:6:2)
      escreval("Gastos dedutiveis: R$ ",gasDed:6:2)
      escreval("")
      escreval("RESUMO:")
      escreval("")
      escreval("Imposto bruto total: R$ ",totalImp:6:2 )
      escreval("Abatimento: R$ ",maxDed:6:2)
      escreval("Imposto devido: R$ ",totalImp - maxDed:6:2)
           
Fimalgoritmo