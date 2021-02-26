require_relative '../support/browser'
require_relative '../support/utils'

class Base
  Browser = Browser.new
  Utils = UtilsProjeto.new

  BTN_AUTORIZAR_COOKIE = '#btn-authorizeCoookies'.freeze

  def acessar_url(url)
    Browser.driver.get url
  end

  def aceitar_cookies
    Utils.espera_elemento(BTN_AUTORIZAR_COOKIE)
    Browser.driver.find_element(:css, BTN_AUTORIZAR_COOKIE).click
  end
end
