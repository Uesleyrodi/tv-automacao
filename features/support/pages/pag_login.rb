require "selenium-webdriver"

class Login
  include Capybara::DSL

  def visitar
    visit "https://teste.queroterravista.com.br/"
  end

  def dados_login(empresa, usuario, senha)
    find("#enterprise_code").set empresa
    find("#email").set usuario
    find("#password").set senha
    click_button "Entrar"
  end

  def alerta
    find(".flash-message__container .flash-message__msg span").text
  end
end
