programa {
  funcao inicio() {
    inteiro idade
    
    escreva("Olá! Por favor digite a idade para consulta de classificação: ")
    leia(idade)

    escreva("Idade selecionada: ", idade, " anos. \n\n")

    se (idade < 10){
      escreva("A classificação recomendada é LIVRE (L cor verde). \n")
    } senao se (idade < 12){
      escreva("A classificação recomendada é para até 12 anos (10 cor azul). \n")
    } senao se (idade < 14){
      escreva("A classificação recomendada é para até 14 anos (12 cor amarela). \n")
    } senao se (idade < 16){
      escreva("A classificação recomendada é para até 16 anos (14 cor laranja). \n")
    } senao se (idade < 18){
      escreva("A classificação recomendada é para até 18 anos (16 cor vermelha). \n")
    } senao {
      escreva("A classificação recomendada é para 18 anos ou mais (18 cor preta). \n")
    }
  }
}
