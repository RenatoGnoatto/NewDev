programa
{
	
	funcao inicio()
	{
			ex1()
			ex2()
			ex3()
			ex4()
			ex5()
	}

	funcao ex1() {
		inteiro p1, p2, somaf

		escreva("Insira dois numeros\n")
		leia(p1, p2)
		somaf = soma(p1, p2)
		escreva("\nA soma dos números é: ", somaf)				
	}
	// Esta função de retorno inteiro tem o objetivo de realizar a soma de dois valores inteiros dados por parâmetro
	//e retornar esta soma 
	funcao inteiro soma(inteiro n1, inteiro n2) { 
		retorne n1 + n2
	}

	funcao ex2() {
		inteiro n1, n2
		logico igualdade

		escreva("Insira dois valores inteiros\n")
		leia(n1, n2)
		igualdade = igual(n1, n2)

		se(igualdade == verdadeiro) {
			escreva("São iguais")
		}
		senao {
			escreva("São diferentes")
		}
	}
	// Esta função de retorno lógico compara dois valores inseridos por parâmetro para confirmar se os valores
	// são iguais, ultilizando uma estrutura condicional composta para retornar verdadeiro ou falso 
	
	funcao logico igual(inteiro v1, inteiro v2) {
		se (v1 == v2) {
			retorne verdadeiro
		}
		senao {
			retorne falso
		}
	}

	funcao ex3() {
		real comprimentoInicial, coeficienteDeDilatacaoLinear, temperaturaInicial, temperaturaFinal, ComprimentoFinal
		escreva("Insira Comprimento inicial\n")
		escreva("Insira Coeficiente de dilatacao Linear\n")
		escreva("Insira Temperatura inicial\n")
		escreva("Insira Temperatura final\n")
		leia(comprimentoInicial, coeficienteDeDilatacaoLinear, temperaturaInicial, temperaturaFinal)

		ComprimentoFinal =comprimentoInicial + calculo(comprimentoInicial, coeficienteDeDilatacaoLinear, temperaturaInicial, temperaturaFinal)
		escreva("O comprimento final é: ", ComprimentoFinal)
	}
		// Esta função de retorno real ultiliza os valores inseridos por parâmetro para calcular a variação 
		// de comprimento dada a equação de dilatação térmica l = l0 * Alpha * diferença de temperatura
		

	funcao real calculo(real L0, real Alpha, real Temp0, real TempF) {
		real DifTemp

		DifTemp = TempF - Temp0
		retorne L0 * Alpha * DifTemp
	}

	
	funcao ex4() {
		inteiro NElefantes

		escreva("Insira um número de elefantes de 1 a 4\n")
		leia(NElefantes)
		OQuantoIncomoda(NElefantes)
		escreva(OQuantoIncomoda(NElefantes))
		
	}
		// Esta função de retorno em cadeira retorna um determinado conjunto de caracteres dependendo do numero 
		// inserido por parâmetro
		

	funcao cadeia OQuantoIncomoda(inteiro Nel) {
		
		escolha(Nel){

			caso 1: 
				retorne "Incomoda muita gente"
					
					
			caso 2: 
				retorne "Incomoda mais que"
					
					
			caso 3: 
				retorne "Incomoda muito mais"
					
					
			caso 4:
				retorne "Incomoda mais muito mais que "
					
			caso contrario: 
				retorne "Não sei guri"
					
		}
		
	}

	funcao ex5() {
		funcaoescreva()
	}

	// Esta função do tipo vaziu não retorna um valor, mas sim escreve "Escrevi algo" em outra função

	funcao funcaoescreva() {
		escreva("Escrevi algo")
	}

		
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 36; 
 * @DOBRAMENTO-CODIGO = [12, 22, 37, 26, 44, 53, 68];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */