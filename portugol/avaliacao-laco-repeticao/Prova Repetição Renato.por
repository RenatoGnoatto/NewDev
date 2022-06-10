programa
{
	
	funcao inicio(){
	
	//	exercicio1()
	//	exercicio2()
	//	exercicio3()
	//	exercicio4()
	//	exercicio5()
	//	exercicio6()
	//	exercicio7()
	//	exercicio8()
	//	exercicio9()
	}
	
	funcao exercicio1() {
		real Faturado, SomatoriaFaturado=0.0		

		para (inteiro q=0; q < 5; q++) {

			escreva("Insira a quantia faturada\n")
			leia(Faturado)

			SomatoriaFaturado += Faturado
		}

		se (SomatoriaFaturado > 54000) {

			SomatoriaFaturado -= 54000
			escreva("O faturado a mais foi:", SomatoriaFaturado) 
	}

		
	}

	funcao exercicio2() {

			real ValorCompra=500.0, desconto=1.0, ValorFinal=0.0
		
			
		faca {
		
			desconto = ValorCompra / 100.0 - 4.0
			ValorFinal = ValorCompra * (1 - (desconto / 100))
			escreva(ValorCompra, " ; ", desconto, " ; ", ValorFinal, "\n")
			
			ValorCompra += 100 								
	 	}
		enquanto (desconto < 25)	
	}

	funcao exercicio3() {
		

			real Preco = 5.00
			inteiro ingressos = 120

		enquanto(Preco > 0.0) {

			escreva("\n", "Preco unitário ", Preco, "\n")
			escreva("Número de ingressos ", ingressos, "\n")
			escreva("Lucro ", ingressos * Preco - 200, "\n")
			
			Preco -= 0.5 ingressos += 26
				
			}
	}	
		
	funcao exercicio4() {
		real ValorCompra, ValorCumulativo=0.0, ValorCumulativoPrazo=0.0, TotalPrazo=0.0
		cadeia FormaDePagamento 
		
			

		para (inteiro o=0; o < 5 ; o++) {
				
			escreva("Selecione a forma de pagamento entre 'V' caso á vista e 'P' caso a prazo e insira o valor da compra\n")
			leia(FormaDePagamento, ValorCompra)

		se (FormaDePagamento == "V") {
			
			ValorCumulativo += ValorCompra }
			
		senao se (FormaDePagamento == "P") {

			ValorCumulativoPrazo += ValorCompra			
	}
		senao {
			escreva("Operação inválida")
			limpa()
		}
	}		TotalPrazo = ValorCumulativoPrazo * 1.1
			escreva("O total à vista é:", ValorCumulativo)
			escreva("\nO total à prazo é:", TotalPrazo)	
			escreva("\nO total das compras efetuadas é:", ValorCumulativo + TotalPrazo )					
		
	}

	funcao exercicio5() {
		real numero, QuantiaDentre9030=0.0
		
		para (inteiro a=0; a < 3; a++) {

			escreva("Insira um número\n")
			leia(numero)
				
		se (numero >= 30 e numero <= 90) {

				QuantiaDentre9030++
			}
	}

		escreva("A quantia de números entre 90 e 30 é:", QuantiaDentre9030)	
		 
	}

	funcao exercicio6() { 
		inteiro idade, CumulativoIdade=0, Contador=0

		faca {
			escreva("Insira a idade\n")
			leia(idade)	
					
		se (idade == 0) {				
			pare }
			
			CumulativoIdade += idade
			Contador++ 				
		}		
		enquanto (idade != 0)
			escreva("A média de idades é:", CumulativoIdade / Contador)									
	}

	funcao exercicio7() {
		real numero, resultado
		inteiro Tabuada=0

		escreva("Insira um número\n")
		leia(numero)

	faca {
		
		resultado = numero * Tabuada	
		escreva ("\nO seu numero vezes ", Tabuada, " é ", resultado, "\n")
		Tabuada++
	}
	enquanto (Tabuada <= 10)
	
	}

	funcao exercicio8() {
		real Npessoas15=0.0, Npessoas1630=0.0, Npessoas3145=0.0, Npessoas4660=0.0, Npessoas61=0.0, idade, Npessoas=0.0

		para(inteiro i=0; i < 4; i++){

			escreva("Insira a idade da pesssoa\n")
			leia(idade)
			Npessoas++
			
		se (idade <= 15) {
			Npessoas15++
		}
		senao se(idade <= 30 e idade >= 16) {
			Npessoas1630++
		}
		senao se(idade <= 45 e idade >= 31) {
			Npessoas3145++
		}
		senao se(idade <= 60 e idade >= 46) {
			Npessoas4660++
		}
		senao {
			Npessoas61++
		}
	}		

			escreva("\nO número de pessoas com menos de 16 anos é ", Npessoas15)
			escreva("\nO número de pessoas entre 16 e 30 anos é ", Npessoas1630)
			escreva("\nO número de pessoas entre 31 e 45 anos é ", Npessoas3145)
			escreva("\nO número de pessoas entre 46 e 60 anos é ", Npessoas4660)
			escreva("\nO número de pessoas com mais de 60 anos é: ", Npessoas61)
			escreva("\n", Npessoas)
			
			escreva("\nO percentual de pessoas nas faixas etarias menos de 16 e mais que 60 é: ",  100 * ((Npessoas15 + Npessoas61) / Npessoas)) 
		
	}

	funcao exercicio9() {
		cadeia operacao=""
		real n1=0.0, n2=0.0, resultado=0.0

	enquanto(operacao != "sair") {
	
		escreva("\n Insira uma operação (+), (-), (*), (/)\n")
		leia(operacao)
	se(operacao != "+" e operacao != "-" e operacao != "*" e operacao != "/" e operacao != "sair") {
			
		escreva("Operação incorreta")		
		pare
	}
		
		escreva("\n Digite um número\n")
		leia(n1)
		
		escreva("\n Digite um número\n")
		leia(n2)
	
	se(operacao == "+") {

		resultado = n1 + n2
	}
	senao se(operacao == "-") {

		resultado = n1 - n2
	}
	senao se(operacao == "*") {

		resultado = n1 * n2
	}
	senao se(operacao == "/") {

		resultado = n1 / n2
	}
	
		escreva("\nO resultado é: ", resultado)
	}
}
	
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @DOBRAMENTO-CODIGO = [16, 36, 52, 69, 99, 117, 134, 151, 188];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */