# language: pt

Funcionalidade: Calculo de triângulo
   Cenário: Calculando um triângulo valido
      Dado que estou na tela inicial
      Quando eu preencho os "<lado1>", "<lado2>" e "<lado3>"
      |lado1|lado2|lado3|
      |3    |3    |3    |
      E eu calculo os lados
      Entao a "<mensagem>" será exibida na tela
      |mensagem                |
      |O triângulo é Equilátero|

    #Cenário: Nenhum lado foi preenchido
    #  Dado que estou na tela inicial
