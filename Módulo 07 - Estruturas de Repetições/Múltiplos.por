programa {
	funcao inicio() {
		inteiro valor1, valor2
		
		escreva("Digite o primeiro valor: ")
		leia(valor1)
		
		escreva("Digite o segundo valor: ")
		leia(valor2)
		
		escreva("\n")
		
		se (valor1 % valor2 == 0) {
		    escreva("O primeiro valor é divisível pelo segundo valor \n")
		} senao {
		    escreva("O primeiro valor não é divisível pelo segundo valor. \n")
		} 
		
		se (valor2 % valor1 == 0) {
		    escreva("O segundo valor é divisível pelo primeiro valor. \n")
		} senao {
		    escreva("O segundo valor não é divisível pelo primeiro valor. \n")
		}
		
		escreva("\n")
		
		inteiro contador1 = 0
		para (inteiro x = 1; x <= valor1; x++) {
		    se (valor1 % x == 0) {
		        contador1++
		    }
		}
		escreva("O primeiro valor possui ", contador1, " múltiplo(s). \n")
		
		
		inteiro contador2 = 0
		para (inteiro x = 1; x <= valor2; x++) {
		    se (valor2 % x == 0) {
		        contador2++
		    }
		}
		escreva("O segundo valor possui ", contador2, " múltiplo(s). \n")
		
	}
}
