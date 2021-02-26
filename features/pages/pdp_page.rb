require_relative '../support/browser'
require_relative '../support/utils'

class PdpPage
  Browser = Browser.new
  Utils = UtilsProjeto.new

  BTN_ADICIONAR_AO_CARRINHO = '#cc-prodDetails-addToCart'.freeze
  TXT_NOME_PRODUTO = '.product-details__infos-catalog h2'.freeze

  @@nome_produto = nil

  def clicar_botao_adicionar_ao_carrinho
    Utils.espera_elemento(BTN_ADICIONAR_AO_CARRINHO)
    Browser.driver.find_element(:css, BTN_ADICIONAR_AO_CARRINHO).click
  end

  def obter_nome_produto_salvo
    @@nome_produto
  end

  def salvar_nome_produto
    Utils.espera_elemento(TXT_NOME_PRODUTO)
    @@nome_produto = Browser.driver.find_element(:css, TXT_NOME_PRODUTO).text
  end
end
