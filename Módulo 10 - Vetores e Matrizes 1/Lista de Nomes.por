programa {
	funcao inicio() {
 
	    const inteiro numeroNomes = 10

		cadeia listaNomes[numeroNomes]
		caracter continue = 's'
		
		escreva("Quantidade escolhida de nomes: ", numeroNomes, ".\n")
		
        para(inteiro i = 0; i < numeroNomes; i++){
		    se(continue == 's' ou continue == 'S'){
		        escreva("\nDigite o nome número ", i+1, ": ")
		        leia(listaNomes[i])
		        para(inteiro z = 0; z < numeroNomes; z++){
		            se(i != z){
		                enquanto(listaNomes[i] == listaNomes[z]){
                            escreva("Este nome já foi adicionado. Digite um novo nome: ")
		                    leia(listaNomes[i])
		                }    
		            }
		        }
		        se(i != numeroNomes - 1){
		            escreva("Deseja continuar adicionando? Digite 'S' para continuar ou 'N' para parar: ")
		            leia(continue)
		            enquanto(continue != 's' e continue != 'S' e continue != 'n' e continue != 'N'){
		                escreva("Opção inválida. Digite 'S' para continuar ou 'N' para parar: ")
		                leia(continue)
		            }
		        }
		    } senao{
		        listaNomes[i] = "Vazio"
		    }
		}
		
		escreva("\n")
		
		para(inteiro i = 0; i < numeroNomes; i++){
		    escreva("\tNome ", i+1, ": ", listaNomes[i], "\n")
		}
		
		inteiro validos = 0
		para(inteiro i = 0; i < numeroNomes; i++){
		    se(listaNomes[i] != "Vazio"){
		        validos++
		    }
		}
		
		escreva("\nNúmero de nomes válidos: ", validos, "\n")
	}
}