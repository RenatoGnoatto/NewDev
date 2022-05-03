programa
{
	
	funcao inicio(){	
		ControleDeEstoque()
	}

	funcao ControleDeEstoque() {
		inteiro Produto[200], Entrada[200], Saida[200], opcao=1, QuantiaDeProdutos=0, slot
		cadeia NomeProduto[200]

		enquanto(opcao != 0) {
			escreva("Escolha uma das opções abaixo\n")
			escreva("1) Cadastrar um produto\n")
			escreva("2) Inserir um produto\n")
			escreva("3) Remover um produto\n")
			escreva("4) Consultar o saldo de um produto\n")
			escreva("0) Sair\n")
			leia(opcao)
			limpa()

			escolha(opcao) {

			caso 0: pare
			
			caso 1:
				escreva("Insira o código do produto\n")
				leia(slot)
				limpa()
				escreva("Insira o nome do produto\n")
				leia(NomeProduto[slot])
			pare
			caso contrario: escreva("contrario")
			pare
		}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 686; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */