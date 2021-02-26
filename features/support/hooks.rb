Before do
  @app = App.new

  browser = Browser.new
  browser.start_driver if browser.driver.nil?
end
