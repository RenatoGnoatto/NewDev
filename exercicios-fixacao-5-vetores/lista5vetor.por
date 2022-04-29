programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
		//	ex1()
		//	ex2()
		//	ex3()
		//	ex4()
		//	ex5()
		//	ex6()	
		//	ex7()
			ex8()
	}

	funcao ex1() {
		inteiro serie[50]
		serie[0]=1
		para(inteiro i=1; i < 42; i++){
			serie[i+1] = serie[i] + serie[i-1]
			escreva(serie[i], "\n")
			
		}
	}

	funcao ex2() {
		inteiro vetor[999]
		
		para(inteiro i=0; i < 100; i++){
			
			se(i % 2 == 0) {
				vetor[i] = i
				se (vetor[i] != 0) {
					escreva(vetor[i], "\n")
				}
			}		
		}
	}

	funcao ex3() {
		inteiro vetor[999]
		
		para(inteiro i=0; i < 100; i++){
			
			se(i % 2 != 0) {
				vetor[i] = i
				se (vetor[i] != 0) {
					escreva(vetor[i], "\n")
		
				}
			}
		}
	}

	funcao ex4(){
		real vetor[10]
		para(inteiro i=0; i < 10; i++){
			escreva("Insira os números")
			leia(vetor[i])
			vetor[i] = mat.potencia(vetor[i], 3)			
			limpa()
		}
		para(inteiro i=0; i < 10; i++){
			escreva(vetor[i], "\n")
		}
	}

	funcao ex5() {
		real altura[10], media=0.0
		para(inteiro i=0; i < 10; i++){
			escreva("Insira a altura do atleta\n")
			leia(altura[i])
			limpa()
			media += altura[i] 
		}
		media /= 10
		para(inteiro i=0; i < 10; i++){
			se(altura[i] > media) {
				escreva("A média de altura é: ", media, " As alturas maiores que a média são: ", altura[i], "\n")
			}
		}		
	}

	funcao ex6() {
		inteiro ordem[10]
		para(inteiro i=0; i < 10; i++){
			escreva("Insira um número\n")
			leia(ordem[i])
			limpa()
		}
		para(inteiro i=9; -1 < i; i--){
			escreva(ordem[i], "\n")
		}
	}

	funcao ex7() {
		inteiro vetor[10], vetorf[10]

		para(inteiro i=0; i < 10; i++){
			escreva("Insira um número\n")
			leia(vetor[i])
			limpa()
			se(vetor[i] < 1) {
				pare
			}
			senao se(vetor[i] % 2 == 0) {
				vetorf[i] = vetor[i] / 2
			}
			senao {
				vetorf[i] = vetor[i] * 3
			}
		}
		para(inteiro i=0; i < 10; i++){
			escreva(vetor[i], " ", vetorf[i], "\n")
		}
	}

	funcao ex8() {
		inteiro vetor[10], vetorpar[10], vetorimp[10], menorn, contador=0, cont=0

		para(inteiro i=0; i < 10; i++){
			escreva("Insira um número\n")
			leia(vetor[i])
			limpa()
		}
		para(inteiro i=0; i < 10; i++){
			se(vetor[i] % 2 == 0) {
				se(vetorpar[contador] == 0) {
					vetorpar[contador] = vetor[i]
					contador++
					
				}
			}
		}			
		para(inteiro i=0; i < 10; i++){
			se(vetor[i] % 2 != 0) {
				se(vetorpar[contador] == 0) {
					vetorpar[contador] = vetor[i]
					contador++
				}
			}
		}
	}
}

		


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2262; 
 * @DOBRAMENTO-CODIGO = [15, 25, 39, 54, 67, 83, 95];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetorpar, 119, 21, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */