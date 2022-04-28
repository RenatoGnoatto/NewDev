programa
{
	
	funcao inicio() {
	
			exercicio1()
			exercicio2()
			exercicio3()
			exercicio4()
			exercicio5()
			exercicio6()
			exercicio7()
			exercicio8()
			exercicio9()
			exercicio10()
	}

	funcao exercicio1() {
		inteiro numero[5], divisor=2
		
		para(inteiro i=0; i < 5; i++) {
					
			escreva("Insira 5 numeros e descubra quais são primos\n")
			leia(numero[i])
			limpa()
		}				
		para(inteiro i=0; i < 5; i++){
			divisor = 2
			enquanto(numero[i] % divisor != 0) {
				se(numero[i] == 1) {
					pare
				}
				divisor++				
			}

			se(divisor == numero[i]) {
				escreva(numero[i], " É primo\n")
			}
		}

	}		

	funcao exercicio2() {
		inteiro numero[8], maiorposi=0
		
		para(inteiro i=0; i < 8; i++){
			escreva("Insira 8 números e descubra qual o maior e sua posição no vetor\n")
			leia(numero[i])			
			limpa()
			se(numero[maiorposi] < numero[i]) {
				
				maiorposi = i 
			}		
		}
		escreva(maiorposi,") ", numero[maiorposi])
	}

	funcao exercicio3() { 
		inteiro number[10], MultPar=1, SomaImpar=0

		para(inteiro i=0; i < 10; i++){
			
			escreva("Insira um numero, os pares serão multiplicados e os impares serão somados")
			leia(number[i])
			limpa()
			se(number[i] % 2 == 0) { 
				MultPar *= number[i]
			}
			senao {
				SomaImpar += number[i]
			}			
		}
		escreva("A murliplicação é: ", MultPar, "A soma é: ", SomaImpar) 				
	}

	funcao exercicio4() {
		inteiro numero[5], invertido[5]
		
		para(inteiro i=0; i < 5; i++){
			escreva("Insira um número ")
			leia(numero[i])
			limpa()	
		}
		
		invertido[0] = numero[4]
		invertido[1] = numero[3]
		invertido[2] = numero[2]
		invertido[3] = numero[1]
		invertido[4] = numero[0]
		escreva("Os numeros invertidos no vetor são:")
		
		para(inteiro i=0; i < 5; i++){
			escreva(i, ") ", invertido[i], "\n")
		}
	}

	funcao exercicio5() {
		inteiro nins[9], numero

		para(inteiro i=0; i < 9; i++){

			escreva("Insira 9 números\n")
			leia(nins[i])
			limpa()
		}
		escreva("Insira um numero do qual será verificada quais números inseridos anteriormente são divisiveis\n")
		leia(numero)
		
		para(inteiro i=0; i < 9; i++){

			se(nins[i] % numero == 0) {
				escreva(nins[i], " É divisivel por ", numero, "\n")
			}
		}

		
	}

	funcao exercicio6() {
		inteiro numero[5], soma=0
		
		para(inteiro i=0; i < 5; i++){
			escreva("Digite um número ")
			leia(numero[i])	
			soma += numero[i]
			limpa()		
		}
		para(inteiro i=0; i < 5; i++){
			escreva(i, ") ", numero[i], "\n")
		}
		escreva("A soma dos números armazenados no vetor é: ", soma)
	}

	funcao exercicio7() {
		cadeia nomes[5]

		para(inteiro i=0; i < 5; i++){
			escreva("Insira um nome ")
			leia(nomes[i])
			limpa()
		}
		para(inteiro i=0; i < 5; i++){
			escreva(i, ") ", nomes[i], "\n")
		}
		escreva("\n")
		para(inteiro i=4; i > -1; i--){
			escreva(i, ") ", nomes[i], "\n")
		}
	}

	funcao exercicio8() {
		inteiro numero=1
		cadeia meses[12]

		meses[0] = "Janeiro" meses[1] = "Fevereiro" meses[2] = "Março" meses[3] = "Abril" meses[4] = "Maio" 
		meses[5] = "Junho" meses[6] = "Julho" meses[7] = "Agosto" meses[8] = "Setembro" meses[9] = "Outubro"
		meses[10] = "novembro" meses[11] = "Dezembro"

		enquanto(numero != 0) {

			escreva("Insira um número de 1 a 12 \n")
			leia(numero)
			
			escolha(numero){

			caso 0: pare
			
			caso 1: escreva(meses[0], "\n")
				pare

			caso 2: escreva(meses[1], "\n")
				pare

			caso 3: escreva(meses[2], "\n")
				pare

			caso 4: escreva(meses[3], "\n")
				pare

			caso 5: escreva(meses[4], "\n")
				pare

			caso 6: escreva(meses[5], "\n")
				pare

			caso 7: escreva(meses[6], "\n")
				pare

			caso 8: escreva(meses[7], "\n")
				pare

			caso 9: escreva(meses[8], "\n")
				pare
				
			caso 10: escreva(meses[9], "\n")
				pare
			
			caso 11: escreva(meses[10], "\n")
				pare

			caso 12: escreva(meses[11], "\n")
				pare

			caso contrario: escreva("Número invalido")

			}
		}		
	}

	funcao exercicio9() {
		inteiro inteiros[51], completos=0

		para(inteiro i=0; i < 51; i++){
			inteiros[i] = completos
			completos++
		}
		para(inteiro i=0; i < 51; i++){
			escreva(inteiros[i], "\n")
		}
	}

	funcao exercicio10() {
		inteiro num[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Insira um número\n")
			leia(num[i])
		}
		para(inteiro i=0; i < 10; i++){
			escreva(num[i] * num[i], "\n")
		}
	}
}

	



/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */