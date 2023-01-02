programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    caracter opcao
    inteiro player, computer
    computer = u.sorteia(1, 11))

    escreva("Escolha par ou ímpar. \n")
    escreva("Digite 'p' para opção PAR ou 'i' para opção ÍMPAR: ")
    leia(opcao)

    se(opcao == "p"){
      escreva("Você escolheu a opção PAR \n\n")

      escreva("Digite um número inteiro: ")
      leia(player)
      escreva("Você escolheu o número ", player, "\n")

      escreva("Computador escolheu o número: ", computer, "\n")

      inteiro resultado = player + computer
      escreva("A soma dos números escolhidos resultou no número ", resultado, "\n")
    
      se (resultado % 2 == 0) {
        escreva("\n VOCÊ VENCEU! \n")
      } senao {
          escreva("\n Você PERDEU! \n")      
      }

    } senao se(opcao == "i"){
        escreva("Você escolheu a opção ÍMPAR \n\n")

        escreva("Digite um número inteiro: ")
        leia(player)
        escreva("Você escolheu o número ", player, "\n")

        escreva("Computador escolheu o número: ", computer, "\n")

        inteiro resultado = player + computer
        escreva("A soma dos números escolhidos resultou no número ", resultado, "\n")
    
        se (resultado % 2 != 0) {
          escreva("\n VOCÊ VENCEU! \n")
        } senao {
          escreva("\n Você PERDEU! \n")      
        }

    } senao {
      escreva("Digite uma opção válida. Por favor reinicie o programa. \n")
    }

  }
}
