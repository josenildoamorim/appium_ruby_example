class TrianguloScreen

  def valida_tela
  end

  def preenche_lados(lado1, lado2, lado3)
    driver.find_element(:id, 'txtLado1').send_keys(lado1)
    find_element(:id, 'txtLado2').send_keys(lado2)
    find_element(:id, 'txtLado3').send_keys(lado3)
  end

  def calcular
    find_element(:id, 'btnCalcular').click
  end

  def valida_mensagem(mensagem)
  end
end
