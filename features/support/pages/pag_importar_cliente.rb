require "selenium-webdriver"

class ImportarCliente
  include Capybara::DSL

  def importar(importar_cliente)
    importar_planilha(importar_cliente)
  end

  def fechar_importacao
    wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
    alert = wait.until { page.driver.browser.switch_to.alert }
    alert.accept
  end

  private

  # Importação de Cliente
  #-------------------------Importação-------------------------
  def importar_planilha(importar_cliente)
    cliente = "features/support/docs/" + importar_cliente["planilha"]
    planilha_cliente = File.join(Dir.pwd, cliente)

    Capybara.ignore_hidden_elements = false
    attach_file("import_clients", planilha_cliente)
    Capybara.ignore_hidden_elements = true

    sleep 20
  end

  #------------------------------------------------------------
end
