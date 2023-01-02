programa {
	funcao inicio() {
// 		para(inteiro i = 0; i < 100; i++){
// 		    escreva("#")
// 		}
		escreva("\nEste é o 'Jogo da velha'. Observe abaixo o tabuleiro e os números das respectivas casas:\n\n")
		
		inteiro matriz[3][3], numCasa = 1
		para(inteiro linhas = 0; linhas < 3; linhas++){
		    para(inteiro colunas = 0; colunas < 3; colunas++){
		        matriz[linhas][colunas] = numCasa
		        escreva("\t[ ", matriz[linhas][colunas], " ] ")
		        numCasa++
		    }
		    escreva("\n")
		}
		escreva("\n")
        
        caracter jogador1 = ' ', jogador2 = ' '
        escreva("Jogador 1: Escolha 'X' ou 'O' para começar: ")
        leia(jogador1)
        enquanto(jogador1 != 'X' e jogador1 != 'x' e jogador1 != 'O' e jogador1 != 'o' e jogador1 != '0'){
            escreva("Opção inválida. Digite novamente: ")
            leia(jogador1)
        }
        
        se(jogador1 == 'x'){
            jogador1 = 'X'
            jogador2 = 'O'
        } senao se(jogador1 == '0' ou jogador1 == 'o'){
            jogador1 = 'O'
            jogador2 = 'X'
        }
        escreva("\nJogador 1 será '", jogador1, "'. Jogador 2 será '", jogador2, "'.\n\n")
        
        caracter velha[3][3]
        para(inteiro linhas = 0; linhas < 3; linhas++){
            para(inteiro colunas = 0; colunas < 3; colunas++){
                velha[linhas][colunas] = ' '
                escreva("\t[ ", velha[linhas][colunas], " ] ")
            }
            escreva("\n")
        }
        
        caracter vencedor = '0', vez = '1'
        inteiro vez1, vez2, jogadas = 0
        
        enquanto(vencedor == '0' e jogadas < 9){
            se(vez == '1'){
                escreva("\nJogador ", vez, ", escolha uma casa: ")
                leia(vez1)
                enquanto(vez1 < 1 ou vez1 > 9){
                    escreva("Opção inválida! Digite novamente: ")
                    leia(vez1)
                }
                escreva("\n")
                para(inteiro linhas = 0; linhas < 3; linhas++){
                    para(inteiro colunas = 0; colunas < 3; colunas++){
                        se(matriz[linhas][colunas] == vez1){
                            matriz[linhas][colunas] = 0
                            velha[linhas][colunas] = jogador1
                            jogadas++
                            vez = '2'
                        }
                        escreva("\t[ ", velha[linhas][colunas], " ] ")
                    }
                    escreva("\n")
                }

            } senao se(vez == '2'){
                escreva("\nJogador ", vez, ", escolha uma casa: ")
                leia(vez2)
                enquanto(vez2 < 1 ou vez2 > 9){
                    escreva("Opção inválida! Digite novamente: ")
                    leia(vez2)
                }
                escreva("\n")
                para(inteiro linhas = 0; linhas < 3; linhas++){
                    para(inteiro colunas = 0; colunas < 3; colunas++){
                        se(matriz[linhas][colunas] == vez2){
                            matriz[linhas][colunas] = 0
                            velha[linhas][colunas] = jogador2
                            jogadas++
                            vez = '1'
                        }
                        escreva("\t[ ", velha[linhas][colunas], " ] ")
                    }
                    escreva("\n")
                }
            }
        
            para(inteiro linha = 0; linha < 3; linha++){
                se(velha[linha][0] == jogador1 e velha[linha][1] == jogador1 e velha[linha][2] == jogador1){
                    vencedor = '1'
                    escreva("\nJogador ", vencedor, " venceu na linha ", linha+1, "!")
                } senao se(velha[linha][0] == jogador2 e velha[linha][1] == jogador2 e velha[linha][2] == jogador2){
                    vencedor = '2'
                    escreva("\nJogador ", vencedor, " venceu na linha ", linha+1, "!")
                }
            }
            para(inteiro coluna = 0; coluna < 3; coluna++){
                se(velha[0][coluna] == jogador1 e velha[1][coluna] == jogador1 e velha[2][coluna] == jogador1){
                    vencedor = '1'
                    escreva("\nJogador ", vencedor, " venceu na coluna ", coluna+1, "!")
                } senao se(velha[0][coluna] == jogador2 e velha[1][coluna] == jogador2 e velha[2][coluna] == jogador2){
                    vencedor = '2'
                    escreva("\nJogador ", vencedor, " venceu na coluna ", coluna+1, "!")
                }
            }
            se(velha[0][0] == jogador1 e velha[1][1] == jogador1 e velha[2][2] == jogador1){
                vencedor = '1'
                escreva("\nJogador ", vencedor, " venceu na diagonal!")
            } senao se(velha[0][0] == jogador2 e velha[1][1] == jogador2 e velha[2][2] == jogador2){
                vencedor = '2'
                escreva("\nJogador ", vencedor, " venceu na diagonal!")
            }
            se(velha[0][2] == jogador1 e velha[1][1] == jogador1 e velha[2][0] == jogador1){
                vencedor = '1'
                escreva("\nJogador ", vencedor, " venceu na diagonal!")
            } senao se(velha[0][2] == jogador2 e velha[1][1] == jogador2 e velha[2][0] == jogador2){
                vencedor = '2'
                escreva("\nJogador ", vencedor, " venceu na diagonal!")
            }
        
        }
        
        se(vencedor == '0' e jogadas == 9){
            escreva("\nDeu 'velha'! Joguem novamente.")
        }
        
	}
}