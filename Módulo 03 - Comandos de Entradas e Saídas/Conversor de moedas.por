programa {
  funcao inicio() {
    real dolar, moeda, valorDolar, valorReal

    escreva("Digite a cotação atual do dólar \n")
    leia(dolar)
    escreva("Digite 1 caso queira converter de Dólar para Real ou 2 para converter de Real para Dólar \n")
    leia(moeda)

    se(moeda == 1){
      escreva("Digite o valor a ser convertido em dólares \n")
      leia(valorDolar)
      escreva("U$", valorDolar, " é equivalente a R$", valorDolar * dolar)
    } senao se (moeda == 2) {
      escreva("Digite o valor a ser convertido em reais \n")
      leia(valorReal)
      escreva("R$", valorReal, " é equivalente a U$", valorReal / dolar)
    } senao {
      escreva("Digite um valor válido para ser convertido! Por favor reinicie o programa.")
    }
  }
}
