programa
{
	
	funcao inicio()
	{
		exercicio6avaliacao()
		exercicio7avaliacao()
		exercicio8avaliacao()
		exercicio9avaliacao()
		exercicio10avaliacao()
	
	}

	funcao exercicio6avaliacao() {

		real altura, pesoideal
		cadeia sexo

			escreva("Insira o seu sexo entre masculino ou feminino \n")
			leia(sexo)

			escreva("Insira a sua altura em metros \n")
			leia(altura)

		se (sexo == "masculino") { 

			pesoideal = (72.7 * altura) - 58

			escreva ("seu peso ideal é",pesoideal, "Kg \n")
		}

		senao {

			pesoideal = (62.1 * altura) - 44.7 

			escreva ("Seu peso ideal é",pesoideal, "Kg \n")
			}
		
	}
	
	funcao exercicio7avaliacao() {

		real altura, peso, condicao 

			escreva("\n Insira a sua altura em metros e seu peso em kilogramas \n")
			leia(altura, peso)

			condicao = peso / (altura * altura)

		se (condicao < 18.5) {
			escreva ("\n Você esta abaixo do peso \n")
		}

		
		senao se (condicao > 18.5 e condicao < 25) {
			escreva ("\n Seu peso está normal \n")
			
		}
		
		senao se (condicao > 25 e condicao < 30) {
			escreva ("\n Você está acima do peso \n")
			
		}

		senao escreva("\n Você está na condição de obesidade \n") 
			
			
	}

	funcao exercicio8avaliacao() {

		inteiro numero, resultado1, resultadofinal


			escreva("\n Insira um número \n")
			leia(numero)

			resultado1 = numero % 2
		
		
		se (resultado1 == 0) {

			resultadofinal = resultado1 + 5
			
			escreva("\n O número final é", resultadofinal)
			
		}

		senao 

			resultadofinal = resultado1 + 8

			escreva("\n O número final é", resultadofinal)
			
			
	}


	funcao exercicio9avaliacao() {

		real distancia, consumo, media

			escreva("\n informe a distância percorrida e o combustível gasto em litros \n")
			leia(distancia, consumo)

			media = distancia / consumo

			escreva("O consumo médio é igual", media)
	}


	funcao exercicio10avaliacao() {

		inteiro valorcompra, pagamento, troco, numerodenotas1, numerodenotas10, numerodenotas100

			escreva("\n Insira o valor da compra e o valor do pagamento \n")
			leia(valorcompra, pagamento)

		se (valorcompra < pagamento) {

			troco = pagamento - valorcompra
 
			numerodenotas100 = troco / 100
			
			numerodenotas10 = troco  / 10

			numerodenotas1 = troco / 1

			escreva("O seu troco consiste em", numerodenotas100, "\n" , numerodenotas10, "\n", numerodenotas1, "\n")
		}

		senao {
			escreva("Pagamento negado \n")	
		}
	}	
}




	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2394; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */