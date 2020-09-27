require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  #Comando para não abrir o chrome
  #config.default_driver = :selenium_chrome_headless
  #Configurando o time out da página para que possa ser encontrado o elemento
  config.default_max_wait_time = 10
end
