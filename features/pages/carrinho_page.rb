require_relative '../support/browser'
require_relative '../support/utils'

class CarrinhoPage
  Browser = Browser.new
  Utils = UtilsProjeto.new

  TXT_NOME_PRODUTO = '.cart-list__prodinfo a'.freeze
  TXT_TITULO_PAGINA = '#CC-cart-list h1'.freeze

  def obter_texto_titulo_pagina_carrinho
    Utils.espera_elemento(TXT_TITULO_PAGINA)
    Browser.driver.find_element(:css, TXT_TITULO_PAGINA).attribute('innerText')
  end

  def obter_texto_nome_produto
    Utils.espera_elemento(TXT_NOME_PRODUTO)
    Browser.driver.find_element(:css, TXT_NOME_PRODUTO).text
  end
end
