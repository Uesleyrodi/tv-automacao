require "selenium-webdriver"

class ImportarUnidades
  include Capybara::DSL

  def confirmar_importacao
    find(".tabs-custom__actions .btn-greenvista .fa-save").click
    sleep 8
  end

  def alerta_sucesso
    Capybara.ignore_hidden_elements = false
    find(".flash-message span", match: :first)
    Capybara.ignore_hidden_elements = true
  end

  def confirmar_alerta
    find(".ui-draggable .close-flash-message").click
  end

  def fechando_alerta
    find(".flash-message__container #flash-message__close-button").click
  end

  def importando_unidades(unidades)
    anexar_planilha(unidades)
  end

  private

  def anexar_planilha(unidades)
    Capybara.ignore_hidden_elements = false
    unidades = "features/support/docs/" + unidades["importacao_imoveis"]
    importacao_unidades = File.join(Dir.pwd, unidades)

    attach_file("importarImoveis", importacao_unidades)
    sleep 2
    Capybara.ignore_hidden_elements = true
  end
end
