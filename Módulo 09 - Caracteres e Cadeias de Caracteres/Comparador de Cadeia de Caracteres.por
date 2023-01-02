programa {
    inclua biblioteca Texto --> tx
    
	funcao inicio() {
		cadeia email, confirmacao
		inteiro arroba, pontoCom
		
		escreva("Por favor digite seu e-mail:\n")
		leia(email)
		
		arroba = tx.posicao_texto("@", email, 0)
		pontoCom = tx.posicao_texto(".com", email, 0)
		
		enquanto(arroba < 0 ou pontoCom < 0){
		    escreva("E-mail inválido! Por favor digite novamente:\n")
		    leia(email)
    	
    		arroba = tx.posicao_texto("@", email, 0)
	    	pontoCom = tx.posicao_texto(".com", email, 0)
		}
		
		escreva("\nE-mail válido! Digite novamente para confirmação:\n")
		leia(confirmacao)

	    enquanto(confirmacao != email){
	        escreva("E-mail incorreto. Digite novamente o e-mail para confirmação:\n")
	        leia(confirmacao)
	    }

	    escreva("\nE-mail confirmado com sucesso!\n")
	}
}
