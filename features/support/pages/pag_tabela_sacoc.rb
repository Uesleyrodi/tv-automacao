require "selenium-webdriver"

class TableSACOC
  include Capybara::DSL

  def tabela_sacoc(sacoc)
    setando_dados_sacoc(sacoc)
  end

  private

  def setando_dados_sacoc(sacoc)
    find("input[id=table_name]").set sacoc["nome_tabela"]

    tipo = find("select[id=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: sacoc["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set (true)
    find("input[id=entry_percent]").set sacoc["porc_ent"]
    find("input[id=entry_plots_quantity]").set sacoc["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set sacoc["qtd_nor"]
    find("input[id=entry_allow_decrease]").set (true)
    find("input[id=has_ballon_plots]").set (false)
    find("input[id=has_final_plots]").set (false)

    taxa = find("select[id=price_tax_type]")
    tipo_taxa = taxa.find("option", text: sacoc["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set sacoc["taxa_efetivo"]
  end
end
