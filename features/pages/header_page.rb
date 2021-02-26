require_relative '../support/browser'
require_relative '../support/utils'

class HeaderPage
  Browser = Browser.new
  Utils = UtilsProjeto.new

  BTN_BUSCAR = '#span-searchIcon'.freeze
  INPUT_BUSCA = '#search-container input'.freeze

  def preencher_input_pesquisa(texto)
    Utils.espera_elemento(INPUT_BUSCA)
    Browser.driver.find_element(:css, INPUT_BUSCA).send_keys texto
  end

  def clicar_botao_pesquisar
    Browser.driver.find_element(:css, BTN_BUSCAR).click
  end
end
