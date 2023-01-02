programa {
    inclua biblioteca Matematica --> mat
    
	funcao inicio() {
		real valor1, valor2, valor3
		
	    escreva("Digite o valor do primeiro cateto: ")
		leia(valor1)
		
		escreva("Digite o valor do segundo cateto: ")
		leia(valor2)
		
		escreva("Digite o valor da hipotenusa (maior lado): ")
		leia(valor3)
		
		escreva("\n")
		
		se(valor1 < valor3 e valor2 < valor3){
		    calcularTriRet(valor1, valor2, valor3)
		} senao{
		    escreva("Valores incompatíveis. Por favor reinicie o programa.\n")
		}
	}
	
	funcao calcularTriRet(real cateto1, real cateto2, real hipotenusa){
    	se(mat.potencia(cateto1, 2.0) + mat.potencia(cateto2, 2.0) == mat.potencia(hipotenusa, 2.0)){
    	    escreva("O valores informados CORRESPONDEM a definição de um triángulo retângulo.")
    	} senao{
    	    escreva("O valores informados NÃO correspondem a definição de um triángulo retângulo.")
	    }
	
	    escreva("\n")
	}
	
}
