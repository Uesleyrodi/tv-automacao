require "selenium-webdriver"

class TabelaGradiente
  include Capybara::DSL

  def tabela_gradiente(gradiente)
    setando_dados_gradiente(gradiente)
  end

  private

  def setando_dados_gradiente(gradiente)
    find("input[id=table_name]").set gradiente["nome_tabela"]

    tipo = find("select[id=table_type]")
    tipo_tabela = tipo.find("option", match: :first, text: gradiente["tipo_tabela"])
    tipo_tabela.select_option

    find("input[id=active]").set true
    find("input[id=entry_percent]").set gradiente["porc_ent"]
    find("input[id=entry_plots_quantity]").set gradiente["qtd_ent"]
    find("input[id=price_fixa_plots_quantity]").set gradiente["qtd_nor"]
    find("input[id=entry_allow_decrease]").set true
    find("input[id=has_ballon_plots]").set false
    find("input[id=has_final_plots]").set false

    taxa = find("select[id=price_tax_type]")
    tipo_taxa = taxa.find("option", match: :first, text: gradiente["tipo_taxa"])
    tipo_taxa.select_option

    find("input[id=price_tax_percent]").set gradiente["taxa_efetivo"]
    find("input[id=desconto_gradiente]").set gradiente["porc_desconto"]
  end
end
