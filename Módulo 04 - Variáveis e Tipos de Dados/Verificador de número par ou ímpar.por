programa {
  funcao inicio() {
    inteiro valor

    escreva("Digite um número para saber se é par ou ímpar \n")
    leia(valor)

    se (valor % 2 != 0) {
      escreva("O número é ímpar")
    } senao {
      escreva("O número é par")
    }
  }
}