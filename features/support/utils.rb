require_relative '../support/browser'

class UtilsProjeto
  @@browser = Browser.new

  def espera_elemento(seletor)
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @@browser.driver.find_element(css: seletor) }
  end
end
