programa
{
	
	funcao inicio(){	
		ControleDeEstoque()
	}

	funcao ControleDeEstoque() {
		inteiro numero[200], entrada[200], saida[200], opcao=1, slot, total=0
		cadeia nomeProduto[200], nome
		logico estoqueCheio=falso

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
				se(slot>199) {
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
				listar(nomeProduto, numero)
				escreva("\nQual o código do veículo a ser adicionado? ")
				leia(slot)
				se(slot>199 ou slot<0) {
					escreva("Número fora dos parâmetros requisitados\n")
					pare
				}
				se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado\n")
					pare
				}
				numero[slot]++
				entrada[slot]++
				pare
								
			caso 3: 
				listar(nomeProduto, numero)
				escreva("\nInsira o código do produto que deseja remover\n")
				leia(slot)
				
				se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado\n")
				}

				senao se(numero[slot] == 0) {
					escreva("A quantidade atual de ", nomeProduto[slot], " é o valor mínimo(0)\n")
				}
				senao {
					saida[slot]++
					numero[slot]--
					limpa()
					escreva("Um/a ", nomeProduto[slot], " foi removido\n")
				}
				pare
				
			caso 4:
				listar(nomeProduto, numero)
				pare

			caso 5: 
				listar(nomeProduto, numero)
				escreva("Insira o código do produto que deseja listar\n\n")
				leia(slot)

				se(nomeProduto[slot] == "") {
					escreva("Código não cadastrado")
				}
				senao {
					escreva("A entrada de ", nomeProduto[slot], " é ", entrada[slot])
					escreva("\nA saída deste produto é: ", saida[slot], "\n")
					escreva("O saldo atual é ", numero[slot], "\n")
				}

			caso contrario: {
				escreva("Opção inválida\n")
				pare
			}
				
			}
			para(inteiro i=0; i < 200; i++){
				total += numero[i]
				se(total >= 200) {
					estoqueCheio=verdadeiro
					escreva("\nO estoque está cheio")
					pare
				}
			}
		}
	}
	funcao listar(cadeia nomes[], inteiro numero[]) {
		para(inteiro i=0; i < 200; i++){
			se(nomes[i] != "") {
				escreva("Código: ", i, " Nome: ", nomes[i], " Saldo: ", numero[i], "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1419; 
 * @DOBRAMENTO-CODIGO = [118];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */