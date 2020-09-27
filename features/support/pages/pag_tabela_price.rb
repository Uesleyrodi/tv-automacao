require "selenium-webdriver"

class TabelaPrice
  include Capybara::DSL

  def salvando_price
    find("input[id=btnSubmit]").click
  end

  def tabela_price(price)
    setando_dados_price(price)
  end

  def tabela_price_balao(price_balao)
    setando_dados_price_balao(price_balao)
  end

  def tabela_price_final(price_final)
    setando_dados_price_final(price_final)
  end

  def tabela_price_balao_final(price_bal_fin)
    setando_dados_balao_final(price_bal_fin)
  end

  private

  # Tabela de Preço Price
  #-----------------Informações Tabela Price------------------
  def setando_dados_price(price)
    find("input[id=table_name]").set price["nome_tabela"]

    tipo = find("select[name=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: price["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set price["porc_ent"]
    find("input[id=entry_plots_quantity]").set price["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set price["qtd_nor"]

    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (false)
    find("input[id=has_final_plots]").set (false)

    taxa = find("select[name=price_tax_type]")
    tipo_taxa = taxa.find("option", match: :first, text: price["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set price["porc_tipo_taxa"]
    find("input[id=price_add_percent]").set price["porc_taxa_adi"]
  end

  #-----------------------------------------------------------

  # Tabela de Preço Price
  #-----------------Informações Tabela Price------------------
  def setando_dados_price_balao(price_balao)
    find("input[id=table_name]").set price_balao["nome_tabela"]

    tipo = find("select[name=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: price_balao["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set price_balao["porc_ent"]
    find("input[id=entry_plots_quantity]").set price_balao["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set price_balao["qtd_nor"]

    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (true)
    find("input[id=has_final_plots]").set (false)

    taxa = find("select[name=price_tax_type]")
    tipo_taxa = taxa.find("option", match: :first, text: price_balao["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set price_balao["porc_tipo_taxa"]
    find("input[id=price_add_percent]").set price_balao["porc_taxa_adi"]
  end

  #-----------------------------------------------------------

  # Tabela de Preço Price
  #-----------------Informações Tabela Price------------------
  def setando_dados_price_final(price_final)
    find("input[id=table_name]").set price_final["nome_tabela"]

    tipo = find("select[name=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: price_final["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set price_final["porc_ent"]
    find("input[id=entry_plots_quantity]").set price_final["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set price_final["qtd_nor"]

    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (false)
    find("input[id=has_final_plots]").set (true)

    taxa = find("select[name=price_tax_type]")
    tipo_taxa = taxa.find("option", match: :first, text: price_final["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set price_final["porc_tipo_taxa"]
    find("input[id=price_add_percent]").set price_final["porc_taxa_adi"]
  end

  #-----------------------------------------------------------

  # Tabela de Preço Price
  #-----------------Informações Tabela Price------------------
  def setando_dados_balao_final(price_bal_fin)
    find("input[id=table_name]").set price_bal_fin["nome_tabela"]

    tipo = find("select[name=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: price_bal_fin["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set price_bal_fin["porc_ent"]
    find("input[id=entry_plots_quantity]").set price_bal_fin["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set price_bal_fin["qtd_nor"]

    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (true)
    find("input[id=has_final_plots]").set (true)

    taxa = find("select[name=price_tax_type]")
    tipo_taxa = taxa.find("option", match: :first, text: price_bal_fin["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set price_bal_fin["porc_tipo_taxa"]
    find("input[id=price_add_percent]").set price_bal_fin["porc_taxa_adi"]
  end

  #-----------------------------------------------------------
end
