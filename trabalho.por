programa
{
	funcao inicio()
	{
		//---------------------------------------
		// DECLARAÇÃO DAS VARIÁVEIS
		//---------------------------------------
		
		cadeia nomeReceita
		cadeia tipoQuantidade
		
		inteiro qtdOriginal
		inteiro novaQtd
		inteiro numIngredientes
		
		real fator
		
		cadeia ingredientes[20]
		cadeia unidades[20]
		
		real qtdIngrediente[20]
		real novaQtdIngrediente[20]
		
		inteiro i
		
		
		//---------------------------------------
		// APRESENTAÇÃO DO SISTEMA
		//---------------------------------------
		
		escreva("====================================\n")
		escreva("            CHEF DIGITAL\n")
		escreva("   Redimensionador de Receitas\n")
		escreva("====================================\n\n")
		
		
		//---------------------------------------
		// ENTRADA DE DADOS DA RECEITA
		//---------------------------------------
		
		escreva("Digite o nome da receita: ")
		leia(nomeReceita)
		
		escreva("Digite a quantidade original da receita: ")
		leia(qtdOriginal)
		
		// verificação para evitar divisão por zero
		se(qtdOriginal <= 0)
		{
			escreva("Quantidade original inválida.\n")
			escreva("O programa será encerrado.\n")
			retorne
		}
		
		escreva("Informe o tipo da quantidade (porções, pedaços, unidades, etc.): ")
		leia(tipoQuantidade)
		
		escreva("Digite a nova quantidade desejada: ")
		leia(novaQtd)
		
		escreva("Informe o número de ingredientes da receita: ")
		leia(numIngredientes)
		
		
		//---------------------------------------
		// VALIDAÇÃO DO NÚMERO DE INGREDIENTES
		//---------------------------------------
		
		se(numIngredientes <= 0)
		{
			escreva("Número de ingredientes inválido.\n")
			retorne
		}
		
		se(numIngredientes > 20)
		{
			escreva("O limite máximo de ingredientes é 20.\n")
			escreva("Apenas os primeiros 20 serão considerados.\n")
			
			numIngredientes = 20
		}
		
		
		//---------------------------------------
		// CÁLCULO DO FATOR DE AJUSTE
		//---------------------------------------
		
		// multiplicamos por 1.0 para garantir divisão real
		fator = (novaQtd * 1.0) / qtdOriginal
		
		
		//---------------------------------------
		// COLETA DOS INGREDIENTES
		//---------------------------------------
		
		para(i = 0; i < numIngredientes; i++)
		{
			escreva("\nIngrediente ", i + 1, ":\n")
			
			escreva("Nome do ingrediente: ")
			leia(ingredientes[i])
			
			escreva("Quantidade original: ")
			leia(qtdIngrediente[i])
			
			escreva("Unidade de medida (g, kg, ml, xícara, colher, etc.): ")
			leia(unidades[i])
			
			// cálculo da nova quantidade do ingrediente
			novaQtdIngrediente[i] = qtdIngrediente[i] * fator
		}
		
		
		//---------------------------------------
		// EXIBIÇÃO DO RESULTADO FINAL
		//---------------------------------------
		
		escreva("\n\n========== RESULTADO ==========\n")
		
		escreva("Receita: ", nomeReceita, "\n")
		escreva("Receita original: ", qtdOriginal, " ", tipoQuantidade, "\n")
		escreva("Nova receita: ", novaQtd, " ", tipoQuantidade, "\n")
		
		escreva("Fator de ajuste aplicado: ", fator, "\n\n")
		
		escreva("Ingredientes ajustados:\n")
		
		
		//---------------------------------------
		// LISTAGEM DOS INGREDIENTES AJUSTADOS
		//---------------------------------------
		
		para(i = 0; i < numIngredientes; i++)
		{
			escreva("- ", ingredientes[i], ": ",
			novaQtdIngrediente[i], " ", unidades[i], "\n")
		}
		
		
		//---------------------------------------
		// ENCERRAMENTO DO PROGRAMA
		//---------------------------------------
		
		escreva("\n---------------------------------\n")
		escreva("A receita foi redimensionada com sucesso.\n")
		escreva("Obrigado por utilizar o Chef Digital!\n")
		escreva("---------------------------------\n")
		
	}
}