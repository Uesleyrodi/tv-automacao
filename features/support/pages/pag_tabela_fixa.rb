require "selenium-webdriver"

class TabelaFixa
  include Capybara::DSL

  def nova_tabela
    find(".bts-action .btn-green").click
  end

  def salvando_tabela
    find("input[id=btnSubmit]").click
  end

  def tabela_fixa(fixa)
    setando_dados_fixa(fixa)
  end

  def tabela_fixa_balao(fixa_balao)
    setando_dados_fixa_balao(fixa_balao)
  end

  def tabela_fixa_final(fixa_final)
    setando_dados_fixa_final(fixa_final)
  end

  def tabela_fixa_balao_final(fixa_balao_final)
    setando_dados_balao_final(fixa_balao_final)
  end

  def fechando_alerta
    find(".flash-message__container #flash-message__close-button").click
  end

  private

  # Tabela de Preço Fixa
  #------------------Informações Tabela Fixa------------------
  def setando_dados_fixa(fixa)
    find("input[id=table_name]").set fixa["nome_tabela"]

    tipo = find("select[name=table_type]")
    tipo_tabela = tipo.find("option", text: fixa["tipo_tabela"])
    tipo_tabela.select_option

    preco = find("select[id=fixa_uses]")
    preco_imovel = preco.find("option", text: fixa["preco_imovel"])
    preco_imovel.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set fixa["porc_ent"]
    find("input[id=entry_plots_quantity]").set fixa["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set fixa["qtd_nor"]
    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (false)
    find("input[id=has_final_plots]").set (false)
  end

  #-----------------------------------------------------------

  # Tabela de Preço Fixa com Balão
  #------------------Informações Tabela Fixa------------------
  def setando_dados_fixa_balao(fixa_balao)
    find("input[id=table_name]").set fixa_balao["nome_tabela"]

    tipo = find("select[name=table_type]")
    table_type = tipo.find("option", text: fixa_balao["tipo_tabela"])
    table_type.select_option

    price = find("select[id=fixa_uses]")
    state_price = price.find("option", text: fixa_balao["preco_imovel"])
    state_price.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set fixa_balao["porc_ent"]
    find("input[id=entry_plots_quantity]").set fixa_balao["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set fixa_balao["qtd_nor"]
    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (true)
    find("input[id=has_final_plots]").set (false)
  end

  #-----------------------------------------------------------

  # Tabela de Preço Fixa com Final
  #------------------Informações Tabela Fixa------------------
  def setando_dados_fixa_final(fixa_final)
    find("input[id=table_name]").set fixa_final["nome_tabela"]

    tipo = find("select[name=table_type]")
    table_type = tipo.find("option", text: fixa_final["tipo_tabela"])
    table_type.select_option

    price = find("select[id=fixa_uses]")
    state_price = price.find("option", text: fixa_final["preco_imovel"])
    state_price.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set fixa_final["porc_ent"]
    find("input[id=entry_plots_quantity]").set fixa_final["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set fixa_final["qtd_nor"]
    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (false)
    find("input[id=has_final_plots]").set (true)
  end

  #-----------------------------------------------------------
  # Tabela de Preço Fixa com Balão e Final
  #------------------Informações Tabela Fixa------------------
  def setando_dados_balao_final(fixa_balao_final)
    find("input[id=table_name]").set fixa_balao_final["nome_tabela"]

    tipo = find("select[name=table_type]")
    table_type = tipo.find("option", text: fixa_balao_final["tipo_tabela"])
    table_type.select_option

    price = find("select[id=fixa_uses]")
    state_price = price.find("option", text: fixa_balao_final["preco_imovel"])
    state_price.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set fixa_balao_final["porc_ent"]
    find("input[id=entry_plots_quantity]").set fixa_balao_final["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set fixa_balao_final["qtd_nor"]
    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (true)
    find("input[id=has_final_plots]").set (true)
  end

  #-----------------------------------------------------------
end
