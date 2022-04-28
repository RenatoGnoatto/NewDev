programa
{
	
	funcao inicio()
 {
		
		exercicio7lista2()
		
	}

	funcao exercicio1lista2() {
		inteiro numero = 0, media = 0, valores = 0, somatoria = 0
		
	enquanto (numero >= 0) {
		escreva("Insira um valor\n")
		leia(numero)
		
	se (numero >= 0) {
	
			somatoria += numero
			valores++
		
		}
	}	
			media = somatoria / valores
		
		escreva("O numero de valores inseridos é ", valores, "\n")
		escreva("A somatória dos valores é ", somatoria, "\n")
		escreva("A média dos valores inseridos é ", media, "\n")
	}

	funcao exercicio2lista2() {
		inteiro altura, alturamaior = 0, vezesexec = 1, alturamenor = 104305
		

	enquanto (vezesexec <= 15) {
		escreva("Insira altura \n")
		leia(altura)
		
			vezesexec++
		
	se (altura > alturamaior) {

			alturamaior = altura
			}

	se (altura < alturamenor) {

			alturamenor = altura
			}
		
		}	
		escreva ("A maior altura é ", alturamaior, "\n")
		escreva ("A menor altura é ", alturamenor, "\n")
		
		
	}

	funcao exercicio3lista2() {
	inteiro numero0

		escreva("insira um número \n")
		leia(numero0)

	enquanto (numero0 <= 100) {

			numero0 = numero0 * 3
		escreva("Os resultados da multiplicação são ", numero0, "\n")
		}		
	}

	funcao exercicio4lista2() {
		inteiro x = 0


	faca {		
			x += 5
			escreva(x, "\n")
			
	}
	enquanto (x < 300)
	
		
	faca	{	
			x+= 3
			escreva(x, "\n")
	}
	enquanto (x >=300 e x <=400) 

	faca {
			x += 5
			escreva(x, "\n")
	}
	enquanto (x >= 400 e x <= 500)
	
	}

	funcao exercicio5lista2() {
		inteiro numero, contador

		escreva("insira um numero \n")
		leia(numero)
		contador = numero - 1
		
	faca {
		  numero = numero * contador 
		  escreva (numero, "\n")
		  contador--
	}

	enquanto (contador >= 1)
	}

	funcao exercicio6lista2() {
		inteiro numero, contador = 0, soma = 0

		escreva("Insira um numero \n")
		leia(numero)

	faca {
			soma = soma + contador
			escreva(soma, "\n")
			contador++
	}
			enquanto (contador <= numero)	
	}

	funcao exercicio7lista2() {
		real mediasalario=0.0, mediafilhos=0.0, salario=0.0, maiorsalario=0.0
		inteiro filhos=0, hab=0

		escreva("insira o numero de habitantes \n")
		leia(hab)
	
	para (inteiro i=0; i < hab; i++) {

		escreva("Insira o salário e o número de filhos \n")
		leia(salario, filhos)

		mediasalario += salario
		mediafilhos += filhos

	se (salario > maiorsalario) {

		maiorsalario = salario
		}	
	}
		mediasalario = mediasalario / hab
		mediafilhos = mediafilhos / hab
		escreva("A média de salario é", mediasalario)
		escreva("A média de filhos é", mediafilhos)
		escreva("o maior salario é", maiorsalario)
	}
}	
		
	

	
			

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1959; 
 * @DOBRAMENTO-CODIGO = [17, 10, 41, 46, 35, 31, 64, 58, 75, 83, 89, 71, 104, 97, 113, 127];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */