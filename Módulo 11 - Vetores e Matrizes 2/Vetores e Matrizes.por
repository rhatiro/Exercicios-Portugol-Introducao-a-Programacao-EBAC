programa {
	funcao inicio() {
	    const inteiro linhas = 2
	    const inteiro colunas = 2
	    
		inteiro matriz1[linhas][colunas], matriz2[linhas][colunas], matriz3[linhas][colunas]
		
		para(inteiro linha = 0; linha < linhas; linha++){
		    para(inteiro coluna = 0; coluna < colunas; coluna++){
		        escreva("Digite o valor ", coluna+1, " da linha ", linha+1, " da primeira matriz: ")
		        leia(matriz1[linha][coluna])
		    }
		}
		
		escreva("\n")
		
		escreva("\tMatriz 1:\n\n")
		para(inteiro linha = 0; linha < linhas; linha++){
		    para(inteiro coluna = 0; coluna < colunas; coluna++){
		        se(matriz1[linha][coluna] < 10){
		            escreva("[ 0", matriz1[linha][coluna], " ] ")
		        } senao{
		            escreva("[ ", matriz1[linha][coluna], " ] ")
		        }
		    }
		    escreva("\n")
		}
		
		escreva("\n")
		
		para(inteiro linha = 0; linha < linhas; linha++){
		    para(inteiro coluna = 0; coluna < colunas; coluna++){
		        escreva("Digite o valor ", coluna+1, " da linha ", linha+1, " da segunda matriz: ")
		        leia(matriz2[linha][coluna])
		    }
		}
		
		escreva("\n")
		
		escreva("\tMatriz 2:\n\n")
		para(inteiro linha = 0; linha < linhas; linha++){
		    para(inteiro coluna = 0; coluna < colunas; coluna++){
		        se(matriz2[linha][coluna] < 10){
		            escreva("[ 0", matriz2[linha][coluna], " ] ")
		        } senao{
		            escreva("[ ", matriz2[linha][coluna], " ] ")
		        }
		    }
		    escreva("\n")
		}
		
		escreva("\n")
		
		escreva("\tO resultado da soma de cada valor entre as matrizes 1 e 2 é:\n\n")
		para(inteiro linha = 0; linha < linhas; linha++){
		    para(inteiro coluna = 0; coluna < colunas; coluna++){
		        matriz3[linha][coluna] = matriz1[linha][coluna] + matriz2[linha][coluna]
		        se(matriz3[linha][coluna] < 10){
		            escreva("[ 0", matriz3[linha][coluna], " ] ")
		        } senao{
		            escreva("[ ", matriz3[linha][coluna], " ] ")
		        }
		    }
		    escreva("\n")
		}
		
	}
}