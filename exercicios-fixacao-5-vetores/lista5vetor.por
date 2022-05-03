programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio() {
			ex1()
			ex2()
			ex3()
			ex4()
			ex5()
			ex6()	
			ex7()
			ex8()
			ex9()
			ex10()
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
		inteiro vetorpar[10], vetorimp[10], contimp=0, contpar=0, num

		enquanto (contimp + contpar < 10) {
			escreva("Insira um número\n")
			leia(num)
			limpa()

			se(num % 2 == 0) {
				vetorpar[contpar] = num
				contpar++	
			}
			senao {
				vetorimp[contimp] = num
				contimp++
			}
		}
		ListPar(vetorpar, contpar)
		ListImp(vetorimp, contimp)
		Lista(vetorpar, contpar, vetorimp, contimp)
	}
	// Esta função organiza os números pares recebidos por parâmetro de forma decrescente e depois os escreve
	funcao ListPar(inteiro vetorpar[], inteiro cont) {
		inteiro cola
		
		para(inteiro j=0; j < cont; j++){
			para(inteiro i=0; i < cont-1; i++){
				se(vetorpar[i+1] > vetorpar[i]) {
					cola = vetorpar[i]
					vetorpar[i] = vetorpar[i+1]
					vetorpar[i+1] = cola
				}
			}
		}
		para(inteiro i=0; i < cont; i++){
			escreva(vetorpar[i], "  ")
		}
	}
	// Esta função organiza os números impares recebidos por parâmetro de forma crescente e depois os escreve
	funcao ListImp(inteiro vetorimp[], inteiro cont) {
		inteiro cola
		
		para(inteiro j=0; j < cont; j++){
			para(inteiro i=0; i < cont-1; i++){
				se(vetorimp[i+1] < vetorimp[i]) {
					cola = vetorimp[i]
					vetorimp[i] = vetorimp[i+1]
					vetorimp[i+1] = cola
				}
			}
		}
		para(inteiro i=0; i < cont; i++){
			escreva(vetorimp[i], "  ")	
		}	
	}

	funcao Lista(inteiro vetorpar[], inteiro contpar, inteiro vetorimp[], inteiro contimp) {
		
		inteiro vetor[10]
	}

	funcao ex9() {
		cadeia nomes[10], nome
		logico cont=falso
		
		nomes[0]="Renato"
		nomes[1]="Renan"
		nomes[2]="Ricardo"
		nomes[3]="Richard"
		nomes[4]="Ronaldo"
		nomes[5]="Ryan"
		nomes[6]="Reiner"
		nomes[7]="Raimundo"
		nomes[8]="Reumaldir"
		nomes[9]="Reinstein"

		escreva("Insira um nome, se começar com R terá as chances dobradas de sucesso!!\n")
		leia(nome)

		para(inteiro i=0; i < 10; i++){
			se(nomes[i] == nome) {
				cont = verdadeiro
			}
		}

		se(cont == verdadeiro) {
			escreva("Achei")
		}
		senao {
			escreva("Não achei")
		}
	}

	funcao ex10() {
		inteiro vetor[20], vetor1[10], vetor2[10], cont=0

		para(inteiro i=0; i < 20; i++){
			escreva("Insira 20 números\n")
			leia(vetor[i])
			limpa()
			se(i<10) {
				vetor1[i] = vetor[i]
			}
			senao {
				vetor2[cont] = vetor[i]
				cont++
			}
		}
		escreva("O vetor 1 é:\n")
		para(inteiro i=0; i < 10; i++){
			escreva(vetor1[i], "\n")
		}
		escreva("O vetor 2 é:\n")
		para(inteiro i=0; i < 10; i++){
			escreva(vetor2[i], "\n")
		}
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3362; 
 * @DOBRAMENTO-CODIGO = [17, 27, 41, 56, 69, 85, 97, 180, 212];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor1, 214, 21, 6}-{vetor2, 214, 33, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */