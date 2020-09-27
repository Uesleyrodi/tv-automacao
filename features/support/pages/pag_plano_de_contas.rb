require "selenium-webdriver"

class PlanoContas
  include Capybara::DSL

  def novo_plano_de_contas_receita
    find("a[href='/panel/account-plans/new/18']").click
  end

  def salvando_plano_de_contas
    find("input[name=submit]").click
  end

  def fechando_alert
    find(".flash-message__container .fa-times").click
  end

  def dados_nota_fiscal(dados_nota_fiscal)
    setando_dados_nota_fiscal(dados_nota_fiscal)
  end

  private

  def setando_dados_nota_fiscal(dados_nota_fiscal)
    find("input[name=name]").set dados_nota_fiscal["nome"]
    find("input[name=description]").set dados_nota_fiscal["descricao"]

    tipo = find("select[name=selected_financial]")
    tipo_financeiro = tipo.find("option", text: dados_nota_fiscal["listar_no_financeiro"])
    tipo_financeiro.select_option

    financeiro = find("select[name=variable_fixed]")
    financeiro_tipo = financeiro.find("option", text: dados_nota_fiscal["variavel_fixa"])
    financeiro_tipo.select_option

    find("input[id=analitic]").set true
    find("input[id=inputs]").set true
    find("input[id=phase]").set true
    find("input[id=active]").set true
  end
end
