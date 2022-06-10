programa
{
	
	funcao inicio(){
		jogoDaVelha()
	}

	funcao jogoDaVelha() {
		cadeia jogo[4][4], jogador[2]
		inteiro coordenaday, coordenadax, contador=1, contx=0, conto=0
		real  xx[99], xy[99], ox[99], oy[99], oi
		
		para(inteiro i=0; i < 2; i++){	
			escreva("Que jogador será o player", i+1, "\n")
			leia(jogador[i])
		}
		enquanto(verdadeiro){
			para(inteiro a=1; a < 4; a++){
				para(inteiro i=1; i < 4; i++){
					se(jogo[a][i] != ""){
						escreva (" ", jogo[a][i], "	")
					}
					senao {
						escreva (" _	") 
					}
				}
				escreva("\n\n")
			}
			
			escreva("\nInsira as coordenadas do ponto com x e y, exemplo '1 1, 2 2, 3 3'\n")
			leia(coordenadax, coordenaday) 
			
			limpa()
			se(jogo[coordenaday][coordenadax] == "") {
				se(contador % 2 == 0) {
					jogo[coordenaday][coordenadax] = "X" xx[contx] = coordenadax xy[contx]= coordenaday
					contx++
				}
				senao {
					jogo[coordenaday][coordenadax] = "O"
					ox[conto] = coordenadax oy[conto]= coordenaday
					conto++
				}
				contador++
			}
			senao{
				escreva("Espaço ocupado\n")
			}
			para(inteiro a=0; a < 10; a++){
				para(inteiro b=1; b < 10; b++){
					para(inteiro c=2; c < 5; c++){
						se(((xx[a]*xy[b]) + (xy[a]*xx[c]) + (xx[b]*xy[c])) - ((xx[c]*xy[b]) + (xy[c]*xx[a]) + (xx[b]*xy[a])) == 0 e contx>2){
							escreva("ganhou X\n")
						}
										
						senao se(((ox[a]*oy[b]) + (oy[a]*ox[c]) + (ox[b]*oy[c])) - ((ox[c]*oy[b]) + (oy[c]*ox[a]) + (ox[b]*oy[a])) == 0 e conto>2){
							escreva("ganhou O\n", ox[a], "  ", oy[a], "\n", ox[b], " ", oy[b], "\n", ox[c], " ", oy[c], "\n")
							pare
						}
					}		}
	}
}}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */