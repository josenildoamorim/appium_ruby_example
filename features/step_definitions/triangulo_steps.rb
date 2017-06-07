Dado(/^que estou na tela inicial$/) do
  # @page_triangulo = TrianguloScreen.new
  # @page_triangulo.valida_tela
end

Quando(/^eu preencho os "([^"]*)", "([^"]*)" e "([^"]*)"$/) do |arg1, arg2, arg3, table|
  # table is a Cucumber::MultilineArgument::DataTable
  # @page_triangulo.preenche_lados arg1, arg2, arg3
  find_element(:id, 'txtLado1').send_keys(arg1)
  find_element(:id, 'txtLado2').send_keys(arg2)
  find_element(:id, 'txtLado3').send_keys(arg3)
end

Quando(/^eu calculo os lados$/) do
  # @page_triangulo.calcular
  find_element(:id, 'btnCalcular').click
end

Entao(/^a "([^"]*)" será exibida na tela$/) do |mensagem, table|
  # table is a Cucumber::MultilineArgument::DataTable
  # @page_triangulo.valida_mensagem mensagem
end
