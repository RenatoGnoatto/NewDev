programa {
	
	funcao inicio() {
		
		real numero
			escreva("Insira um numero para a operação \n")
		leia (numero) 
		
		se (numero >= 100) {
			escreva("O número inserido é maior ou igual a 100 \n")
		
		}
		
		exercicio()
	}
	
	funcao exercicio() {
		cadeia senha
			escreva("insira a senha \n")
			leia (senha)
		
		se (senha == "portugol") {
			escreva ("Esta senha é correta \n")
		
		}

		exercicio3()
	}
	
	funcao exercicio3() {
		real numero1
			escreva ("Insira um numero \n")
		leia(numero1)
		
		se	(numero1 > 100.0 e numero1 < 500) {
			escreva ("O numero está entre 100 e 500 \n")
		
		}
		
		exercicio4()
		
	}

	funcao exercicio4() {
		
		inteiro nota1, nota2, media, result
		
			escreva ("insira a sua primeira nota \n")
			
		leia(nota1)
		
			escreva ("insira a sua segunda nota \n")
			
		leia(nota2)
		
		result = nota1 + nota2
		media = result / 2
		se (media > 7 ) {
			escreva ("Você foi aprovado \n")
			exercicio5()
		}
	}
	funcao exercicio5() {
		inteiro numero, resto 

		escreva ("digite um número")
		leia(numero)

		resto = numero % 5

		se ( resto == 0 ) { 
			escreva ("é divisivel por 5")
		}
	}
	funcao exercicio6() {
		
	
		inteiro numero

		escreva ("digite um numero")
		leia(numero)

		se ( numero % 2 == 0) {
			escreva(" O número é par \n")
	
		}
		senao { 
			escreva ("o numero é impar")
		}
	}	

	funcao exercicio7() {
		inteiro numero1, numero2
		escreva ("insira um numero \n")	
		leia (numero1)
		escreva ("insira outro numero \n")
		leia (numero2)

	se (numero1 > numero2) {
		escreva (numero1, "é maior" ) }
	
	senao {
		escreva (numero2, "é maior")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */