programa
{
	
	funcao inicio()
	{
		exercicio11()
	}
		funcao exercicio11() {

		real angulo1, angulo2, angulo3

			escreva("Insira a medida dos ângulos do triangulo \n")
			leia( angulo1, angulo2, angulo3)

		se (angulo1 == angulo2 e angulo2 == angulo3){
			escreva("O triângulo é equilatero")
	}
		senao se (angulo1 == angulo2 e angulo1 != angulo3) {
			escreva("O triângulo é isóceles") }
		
		senao se (angulo1 != angulo2 e angulo2 != angulo3) {
			escreva("O triângulo é escaleno") }
		
		senao escreva("O triângulo é isóceles")
		
		}
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 545; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */