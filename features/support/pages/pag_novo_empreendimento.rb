require "selenium-webdriver"

class NovoEmpreendimento
  include Capybara::DSL

  def novo_empreendimento
    find(".breadcrumb-custom__action-bar .btn-greenvista").click
  end

  def salvando_empreendimento
    find("#nav-tab .btn-greenvista").click
  end

  def checando_mensagem(alerta)
    return find(".noty_layout .noty_bar .noty_body", text: alerta)
  end

  def checando_campo(alerta)
    return find(".form-group .invalid-feedback", match: :first, text: alerta)
  end

  def dados_iniciais(dados)
    setando_dados_iniciais(dados)
  end

  def dados_cnpj(dados_cnpj)
    setando_dados_cnpj(dados_cnpj)
  end

  def dados_unidades(dados_unidades)
    setando_dados_unidades(dados_unidades)
  end

  private

  def setando_dados_iniciais(dados)
    find("input[name=nome]").set dados["nome_empreendimento"]
    find("input[name=qtd_real_state]").set dados["unidades"]
    find("input[id=cnpj]").set dados["cnpj"]

    Capybara.ignore_hidden_elements = false
    status = find(".dropdown select[name=statu_id]")
    status_empreendimento = status.find("option", text: dados["status"])
    status_empreendimento.select_option

    tipo = find("select[name=type]")
    tipo_empreendimento = tipo.find("option", text: dados["tipo"])
    tipo_empreendimento.select_option

    modelo = find("select[name=model]")
    modelo_empreendimento = modelo.find("option", text: dados["modelo"])
    modelo_empreendimento.select_option

    tabela = find("select[name= tablePriceConfigId]")
    tabela_preco = tabela.find("option", text: dados["tabela_preco"])
    tabela_preco.select_option
    Capybara.ignore_hidden_elements = true

    find("textarea[name=description]").set dados["drescicao"]
  end

  def setando_dados_cnpj(dados_cnpj)
    find("input[name=nome]").set dados_cnpj["nome_empreendimento"]
    find("input[name=qtd_real_state]").set dados_cnpj["unidades"]
    Capybara.ignore_hidden_elements = false
    status = find(".dropdown select[name=statu_id]")
    status_empreendimento = status.find("option", text: dados_cnpj["status"])
    status_empreendimento.select_option

    tipo = find("select[name=type]")
    tipo_empreendimento = tipo.find("option", text: dados_cnpj["tipo"])
    tipo_empreendimento.select_option

    modelo = find("select[name=model]")
    modelo_empreendimento = modelo.find("option", text: dados_cnpj["modelo"])
    modelo_empreendimento.select_option
    Capybara.ignore_hidden_elements = true
  end

  def setando_dados_unidades(dados_unidades)
    find("input[name=nome]").set dados_unidades["nome_empreendimento"]
    find("input[id=cnpj]").set dados_unidades["cnpj"]
    Capybara.ignore_hidden_elements = false
    status = find(".dropdown select[name=statu_id]")
    status_empreendimento = status.find("option", text: dados_unidades["status"])
    status_empreendimento.select_option

    tipo = find("select[name=type]")
    tipo_empreendimento = tipo.find("option", text: dados_unidades["tipo"])
    tipo_empreendimento.select_option

    modelo = find("select[name=model]")
    modelo_empreendimento = modelo.find("option", text: dados_unidades["modelo"])
    modelo_empreendimento.select_option
    Capybara.ignore_hidden_elements = true
  end
end
