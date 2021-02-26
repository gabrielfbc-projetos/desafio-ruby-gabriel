require_relative '../support/browser'
require_relative '../support/utils'

class PlpPage
  Browser = Browser.new
  Utils = UtilsProjeto.new

  LINK_PRIMEIRO_PRODUTO = '.element__product-navigation--listing > :nth-child(1) a'.freeze

  def clicar_primeiro_produto_listagem
    Utils.espera_elemento(LINK_PRIMEIRO_PRODUTO)
    Browser.driver.find_element(:css, LINK_PRIMEIRO_PRODUTO).click
  end
end
