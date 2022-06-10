programa
{
	
	funcao inicio(){
		controleDeEstoque()
	}

	funcao controleDeEstoque() {	
		inteiro inf[3][200], opcao=1, slot, carrosEmEstoque=0
		cadeia nomeProduto[200], nome, infor[] = {"entrada", "saida", "saldo"}
		logico estoqueCheio=falso
		

		// Na linha 0 da matriz "inf", será armazenado o número de entradas de carros no estoque
		// Na linha 1 desta matriz será armazenado o número de carros que sairam dos estoque
		// Na linha 2 por fim será armazenado o número de carros atualmente no estoque

		
		enquanto(opcao != 0) {
			se(estoqueCheio == verdadeiro){
				pare
			}
			
			escreva("1) Cadastrar um veículo\n")
			escreva("2) Adicionar um veículo\n")
			escreva("3) Remover um veículo\n")
			escreva("4) Listar os veículos\n") 
			escreva("5) Consultar a movimentação de entrada e entrada\n")
			escreva("0) Sair\n")
			escreva("\nEscolha uma das opções: ")
			leia(opcao)
			limpa()

			escolha(opcao) {

			caso 0: pare
				
			caso 1:
				escreva("Insira o nome do veículo\n")
				leia(nome)
				escreva("Insira o código desejado para este veículo, sendo este de 0 a 199 ")
				leia(slot)
				se(slot>199 ou slot<0) {
					escreva("Número fora dos parâmetros requisitados\n")
					pare
				}
				limpa()
				se(nomeProduto[slot] == "")
					nomeProduto[slot] = nome
				senao {
					escreva("Código em uso\n ")
				}
				pare

			caso 2:
				listar(nomeProduto, inf)
				escreva("\nQual o código do veículo a ser adicionado? ")
				leia(slot)
				se(slot>199 ou slot<0) {
					escreva("Número fora dos parâmetros requisitados\n")
					pare
				}
				senao se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado\n")
					pare
				}
				senao {
					inf[2][slot] = inf[2][slot] + 1
					inf[0][slot]++
					pare
				}
								
			caso 3: 
				listar(nomeProduto, inf)
				escreva("\nInsira o código do produto que deseja remover\n")
				leia(slot)
				
				se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado\n")
				}

				senao se(inf[2][slot] == 0) {
					escreva("A quantidade atual de ", nomeProduto[slot], " é o valor mínimo(0)\n")
				}
				senao {
					inf[1][slot]++
					inf[2][slot]--
					limpa()
					escreva("Um/a ", nomeProduto[slot], " foi removido\n")
				}
				pare
				
			caso 4:
				listar(nomeProduto, inf)
				pare

			caso 5: 
				listar(nomeProduto, inf)
				escreva("Insira o código do produto que deseja listar\n\n")
				leia(slot)

				se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado\n")
				}
				senao {
					para(inteiro a=0; a < 3; a++){
						escreva(infor[a], "	", inf[a][slot], "\n")							
					}
				}
				pare

			caso contrario: {
				escreva("Opção inválida\n", opcao)
				pare
			}
				
			}
			para(inteiro i=0; i < 200; i++){
				carrosEmEstoque += inf[0][i]
				se(carrosEmEstoque >= 200) {
					estoqueCheio=verdadeiro
					escreva("\nO estoque está cheio")
					pare
				}
			}
		}
	}
	funcao listar(cadeia nomes[], inteiro numero[][]) {
		para(inteiro i=0; i < 200; i++){
			se(nomes[i] != "") {
				escreva("Código: ", i, " Nome: ", nomes[i], " Saldo: ", numero[2][i], "\n")
			}
		}
	}
}
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1143; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {inf, 9, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */