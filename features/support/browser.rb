require 'selenium-webdriver'

class Browser
  @@driver = nil

  def iniciar_driver
    Selenium::WebDriver::Chrome::Service.driver_path = File.absolute_path('features/support/chromedriver/chromedriver.exe')
    @@driver = Selenium::WebDriver.for :chrome
    @@driver.manage.window.maximize
  end

  def driver
    iniciar_driver if @@driver.nil?

    @@driver
  end
end
