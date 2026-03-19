# 🍳 Chef Digital – Redimensionador de Receitas

## 📌 Descrição

O **Chef Digital** é um programa desenvolvido em **Portugol** que permite redimensionar receitas de forma automática.

Com ele, o usuário informa a quantidade original da receita e a nova quantidade desejada, e o sistema calcula proporcionalmente as quantidades de cada ingrediente.

---

## 🎯 Objetivo

Facilitar o ajuste de receitas culinárias, evitando erros de cálculo ao aumentar ou diminuir porções.

---

## ⚙️ Funcionalidades

* Inserção do nome da receita
* Definição da quantidade original e nova quantidade
* Cálculo automático do fator de ajuste
* Cadastro de até 20 ingredientes
* Ajuste proporcional das quantidades de cada ingrediente
* Validação de dados (evita erros como divisão por zero)

---

## 🧠 Lógica do Programa

O sistema utiliza um **fator de ajuste**, calculado da seguinte forma:

```
fator = novaQuantidade / quantidadeOriginal
```

Cada ingrediente é recalculado com base nesse fator:

```
novaQuantidadeIngrediente = quantidadeOriginalIngrediente * fator
```

---

## 🖥️ Como usar

1. Execute o programa em um interpretador de Portugol (como Portugol Studio)
2. Insira:

   * Nome da receita
   * Quantidade original
   * Tipo de quantidade (porções, unidades, etc.)
   * Nova quantidade desejada
   * Número de ingredientes
3. Para cada ingrediente, informe:

   * Nome
   * Quantidade original
   * Unidade de medida
4. O sistema exibirá a receita com os valores ajustados

---

## 📋 Exemplo de uso

**Entrada:**

* Receita: Bolo
* Quantidade original: 4 porções
* Nova quantidade: 8 porções

**Resultado:**

* Todas as quantidades de ingredientes serão dobradas

---

## ⚠️ Limitações

* Máximo de 20 ingredientes
* Não aceita quantidade original menor ou igual a zero
* Interface em modo texto (console)

---

## 🚀 Possíveis melhorias

* Interface gráfica
* Salvamento de receitas
* Conversão automática de unidades (g → kg, ml → L)
* Arredondamento inteligente de valores
* Inclusão de categorias de receitas

---

## 👨‍💻 Autor

Desenvolvido por **João Messias**

---

## 📄 Licença

Este projeto é livre para uso educacional.
