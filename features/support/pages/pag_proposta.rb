require "selenium-webdriver"

class Proposta
  include Capybara::DSL

  def nova_proposta
    find(".bts-action .btn-green").click
  end

  def salvando_proposta
    find("input[id=salve]").click
  end

  def proposta_price(proposta_price)
    setando_comprador(proposta_price)
    setando_imobiliaria(proposta_price)
    setando_corretor(proposta_price)
    setando_tabela_preco(proposta_price)
    setando_imovel(proposta_price)
    setando_entrada(proposta_price)
    setando_normal(proposta_price)
  end

  def proposta_fixa(proposals_fixed)
    setando_comprador_fixa(proposals_fixed)
    setando_imobiliaria_fixa(proposals_fixed)
    setando_corretor_fixa(proposals_fixed)
    setando_tabela_fixa(proposals_fixed)
    setando_imovel_fixa(proposals_fixed)
    setando_entrada_fixa(proposals_fixed)
    setando_normal_fixa(proposals_fixed)
  end

  def proposta_price_bal_fin(proposal_ball_fin)
    adding_buyer_ball_fin(proposal_ball_fin)
    adding_salespeople_ball_fin(proposal_ball_fin)
    adding_broker_ball_fin(proposal_ball_fin)
    adding_price_list_ball_fin(proposal_ball_fin)
    adding_real_state_ball_fin(proposal_ball_fin)
    adding_entry_ball_fin(proposal_ball_fin)
    adding_balon(proposal_ball_fin)
    adding_final(proposal_ball_fin)
    adding_normal(proposal_ball_fin)
  end

  def create_fixed_ball_fin(fixed_ballon_final)
    adding_buyer_fixed_ball_fin(fixed_ballon_final)
    adding_salespeople_fixed_ball_fin(fixed_ballon_final)
    adding_broker_fixed_ball_fin(fixed_ballon_final)
    adding_fixed_list_ball_fin(fixed_ballon_final)
    adding_fixed_real_state_ball_fin(fixed_ballon_final)
    adding_fixed_entry_ball_fin(fixed_ballon_final)
    adding_fixed_balon(fixed_ballon_final)
    adding_fixed_final(fixed_ballon_final)
    adding_normal_fixed_ball_fin(fixed_ballon_final)
  end

  def create_sacoc(sacoc)
    adding_buyer_sacoc(sacoc)
    adding_salespeople_sacoc(sacoc)
    adding_broker_sacoc(sacoc)
    adding_sacoc_list(sacoc)
    adding_sacoc_real_state(sacoc)
    adding_sacoc_entry(sacoc)
    adding_normal_sacoc(sacoc)
  end

  def additional_buyers_price(buyers_additional)
    adding_additional_buyers(buyers_additional)
  end

  private

  def select_element
    find("table tbody tr .btnSelecionar", match: :first).click
    sleep 1
  end

  #----------------Adicionando comprador adicionais------------------
  def adding_additional_buyers(buyers_additional)
    buyers_additional.each do |p|
      find(".btnSelAddBuyers").click
      find("input[id=additional_buyer]").set p["compradores_adicionais"]
      sleep 1
      select_element
    end
  end

  #------------------------------------------------------------------

  #Proposta usando Tabela Price
  #----------------------Adicionando comprador----------------------
  def setando_comprador(proposta_price)
    find(".group-form .contet-select .btnSelCli").click
    find("input[id=client_search]").set proposta_price["comprador"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------

  #----------------------Adicionando Imobiliária---------------------
  def setando_imobiliaria(proposta_price)
    find(".contet-select .btnSelSel").click
    find("input[id=seller_search]").set proposta_price["imobiliaria"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------

  #-----------------------Adicionando Corretor-----------------------
  def setando_corretor(proposta_price)
    find(".contet-select .btnSelSel2").click
    find("input[id=seller2_search]").set proposta_price["corretor"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------

  #--------------------------Tabela de Preço-------------------------
  def setando_tabela_preco(proposta_price)
    table = find("select[name=table_price_config]")
    table_price = table.find("option", match: :first, text: proposta_price["tabela_preco"])
    sleep 1
    table_price.select_option
  end

  #------------------------------------------------------------------

  #-------------------------Adicionar Imóveis------------------------
  def setando_imovel(proposta_price)
    find(".plots_manager_header .add_lote").click
    find("input[id=search_real_states]").set proposta_price["imovel"]
    sleep 5
    select_element
    sleep 2
  end

  #------------------------------------------------------------------

  #------------------------Informações Entrada-----------------------

  def setando_entrada(proposta_price)
    entry = find("select[id=qtd_enters]")
    plot_entry = entry.find("option", match: :first, text: proposta_price["qtd_ent"])
    plot_entry.select_option

    find("input[id=date_one_plot]").set proposta_price["venc_ent"]

    payment_entry = find("select[id=payment_type_enter]")
    payament_type = payment_entry.find("option", match: :first, text: proposta_price["pag_ent"])
    payament_type.select_option
  end

  #------------------------------------------------------------------

  #-----------------Informações parcela(s) normal(is)----------------
  def setando_normal(proposta_price)
    normal = find("select[id=qtd_plots]")
    normal_plot = normal.find("option", match: :first, text: proposta_price["qtd_parc"])
    normal_plot.select_option

    find("select[id=qtd_plots]").set proposta_price["venc_nor"]

    payment_normal = find("select[id=payment_type_plots]")
    payment_normal = payment_normal.find("option", match: :first, text: proposta_price["pag_nor"])
    payment_normal.select_option
  end

  #------------------------------------------------------------------

  #Proposta usando Tabela Fixa
  #----------------------Adicionando comprador----------------------
  def setando_comprador_fixa(proposal_fixed)
    find(".group-form .contet-select .btnSelCli").click
    find("input[id=client_search]").set proposal_fixed["comprador"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #----------------------Adicionando Imobiliária---------------------
  def setando_imobiliaria_fixa(proposal_fixed)
    find(".contet-select .btnSelSel").click
    find("input[id=seller_search]").set proposal_fixed["imobiliaria"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #-----------------------Adicionando Corretor-----------------------
  def setando_corretor_fixa(proposal_fixed)
    find(".contet-select .btnSelSel2").click
    find("input[id=seller2_search]").set proposal_fixed["corretor"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #--------------------------Tabela de Preço-------------------------
  def setando_tabela_fixa(proposal_fixed)
    tabela = find("select[name=table_price_config]")
    tabela_fixa = tabela.find("option", match: :first, text: proposal_fixed["tabela_preco"])
    sleep 1
    tabela_fixa.select_option
  end

  #------------------------------------------------------------------
  #-------------------------Adicionar Imóveis------------------------
  def setando_imovel_fixa(proposal_fixed)
    find(".plots_manager_header .add_lote").click
    find("input[id=search_real_states]").set proposal_fixed["imovel"]
    sleep 4
    select_element
    sleep 2
  end

  #------------------------------------------------------------------
  #------------------------Informações Entrada-----------------------
  def setando_entrada_fixa(proposal_fixed)
    entry = find("select[id=qtd_enters]")
    plot_entry = entry.find("option", match: :first, text: proposal_fixed["qtd_ent"])
    plot_entry.select_option

    find("input[id=date_one_plot]").set proposal_fixed["venc_ent"]

    payment_entry = find("select[id=payment_type_enter]")
    payament_type = payment_entry.find("option", match: :first, text: proposal_fixed["pag_ent"])
    payament_type.select_option
  end

  #------------------------------------------------------------------
  #-----------------Informações parcela(s) normal(is)----------------
  def setando_normal_fixa(proposal_fixed)
    normal = find("select[id=qtd_plots]")
    normal_plot = normal.find("option", match: :first, text: proposal_fixed["qtd_parc"])
    normal_plot.select_option

    find("select[id=qtd_plots]").set proposal_fixed["venc_nor"]

    payment_normal = find("select[id=payment_type_plots]")
    payment_normal = payment_normal.find("option", match: :first, text: proposal_fixed["pag_nor"])
    payment_normal.select_option
  end

  #------------------------------------------------------------------

  #Proposta usando Tabela Price com Balão e final
  #----------------------Adicionando comprador----------------------
  def adding_buyer_ball_fin(proposal_ball_fin)
    find(".group-form .contet-select .btnSelCli").click
    find("input[id=client_search]").set proposal_ball_fin["comprador"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #----------------------Adicionando Imobiliária---------------------
  def adding_salespeople_ball_fin(proposal_ball_fin)
    find(".contet-select .btnSelSel").click
    find("input[id=seller_search]").set proposal_ball_fin["imobiliaria"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #-----------------------Adicionando Corretor-----------------------
  def adding_broker_ball_fin(proposal_ball_fin)
    find(".contet-select .btnSelSel2").click
    find("input[id=seller2_search]").set proposal_ball_fin["corretor"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #--------------------------Tabela de Preço-------------------------
  def adding_price_list_ball_fin(proposal_ball_fin)
    table = find("select[name=table_price_config]")
    table_price = table.find("option", match: :first, text: proposal_ball_fin["tabela_preco"])
    sleep 1
    table_price.select_option
  end

  #------------------------------------------------------------------
  #-------------------------Adicionar Imóveis------------------------
  def adding_real_state_ball_fin(proposal_ball_fin)
    find(".plots_manager_header .add_lote").click
    find("input[id=search_real_states]").set proposal_ball_fin["imovel"]
    sleep 4
    select_element
    sleep 2
  end

  #------------------------------------------------------------------
  #------------------------Informações Entrada-----------------------
  def adding_entry_ball_fin(proposal_ball_fin)
    entry = find("select[id=qtd_enters]")
    plot_entry = entry.find("option", match: :first, text: proposal_ball_fin["qtd_ent"])
    plot_entry.select_option

    find("input[id=date_one_plot]").set proposal_ball_fin["venc_ent"]

    payment_entry = find("select[id=payment_type_enter]")
    payament_type = payment_entry.find("option", match: :first, text: proposal_ball_fin["pag_ent"])
    payament_type.select_option
  end

  #------------------------------------------------------------------
  #---------------------------Parcela Balão--------------------------
  def adding_balon(proposal_ball_fin)
    find("input[id=value_ballon]").set proposal_ball_fin["val_balao"]

    qtd = find("select[id=qtd_ballon]")
    qtd_balon = qtd.find("option", match: :first, text: proposal_ball_fin["qtd_bal"])
    qtd_balon.select_option

    find("input[id=date_one_ballon]").set proposal_ball_fin["venc_bal"]

    form = find("select[id=payment_type_ballon]")
    form_bal = form.find("option", match: :first, text: proposal_ball_fin["pag_bal"])
    form_bal.select_option

    period = find("select[id=period_ballon]")
    period_ballon = period.find("option", match: :first, text: proposal_ball_fin["periodo"])
    period_ballon.select_option
  end

  #------------------------------------------------------------------

  #---------------------------Parcela Final--------------------------
  def adding_final(proposal_ball_fin)
    find("input[id=value_final]").set proposal_ball_fin["val_final"]

    qtd = find("select[id=qtd_final]")
    qtd_final = qtd.find("option", match: :first, text: proposal_ball_fin["qtd_fin"])
    qtd_final.select_option

    find("input[id=date_one_final]").set proposal_ball_fin["venc_fin"]

    form = find("select[id=payment_type_final]")
    fomr_final = form.find("option", match: :first, text: proposal_ball_fin["pag_fin"])
    fomr_final.select_option
  end

  #------------------------------------------------------------------

  #-----------------Informações parcela(s) normal(is)----------------
  def adding_normal(proposal_ball_fin)
    normal = find("select[id=qtd_plots]")
    normal_plot = normal.find("option", match: :first, text: proposal_ball_fin["qtd_parc"])
    normal_plot.select_option

    find("select[id=qtd_plots]").set proposal_ball_fin["venc_nor"]

    payment_normal = find("select[id=payment_type_plots]")
    payment_normal = payment_normal.find("option", match: :first, text: proposal_ball_fin["pag_nor"])
    payment_normal.select_option
  end

  #------------------------------------------------------------------

  #Proposta usando Tabela Fixa com Balão e final
  #----------------------Adicionando comprador----------------------
  def adding_buyer_fixed_ball_fin(fixed_ballon_final)
    find(".group-form .contet-select .btnSelCli").click
    find("input[id=client_search]").set fixed_ballon_final["comprador"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #----------------------Adicionando Imobiliária---------------------
  def adding_salespeople_fixed_ball_fin(fixed_ballon_final)
    find(".contet-select .btnSelSel").click
    find("input[id=seller_search]").set fixed_ballon_final["imobiliaria"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #-----------------------Adicionando Corretor-----------------------
  def adding_broker_fixed_ball_fin(fixed_ballon_final)
    find(".contet-select .btnSelSel2").click
    find("input[id=seller2_search]").set fixed_ballon_final["corretor"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #--------------------------Tabela de Preço-------------------------
  def adding_fixed_list_ball_fin(fixed_ballon_final)
    table = find("select[name=table_price_config]")
    table_price = table.find("option", match: :first, text: fixed_ballon_final["tabela_preco"])
    sleep 1
    table_price.select_option
  end

  #------------------------------------------------------------------
  #-------------------------Adicionar Imóveis------------------------
  def adding_fixed_real_state_ball_fin(fixed_ballon_final)
    find(".plots_manager_header .add_lote").click
    find("input[id=search_real_states]").set fixed_ballon_final["imovel"]
    sleep 4
    select_element
    sleep 2
  end

  #------------------------------------------------------------------
  #------------------------Informações Entrada-----------------------
  def adding_fixed_entry_ball_fin(fixed_ballon_final)
    entry = find("select[id=qtd_enters]")
    plot_entry = entry.find("option", match: :first, text: fixed_ballon_final["qtd_ent"])
    plot_entry.select_option

    find("input[id=date_one_plot]").set fixed_ballon_final["venc_ent"]

    payment_entry = find("select[id=payment_type_enter]")
    payament_type = payment_entry.find("option", match: :first, text: fixed_ballon_final["pag_ent"])
    payament_type.select_option
  end

  #------------------------------------------------------------------
  #---------------------------Parcela Balão--------------------------
  def adding_fixed_balon(fixed_ballon_final)
    find("input[id=value_ballon]").set fixed_ballon_final["val_balao"]

    qtd = find("select[id=qtd_ballon]")
    qtd_balon = qtd.find("option", match: :first, text: fixed_ballon_final["qtd_bal"])
    qtd_balon.select_option

    find("input[id=date_one_ballon]").set fixed_ballon_final["venc_bal"]

    form = find("select[id=payment_type_ballon]")
    form_bal = form.find("option", match: :first, text: fixed_ballon_final["pag_bal"])
    form_bal.select_option

    period = find("select[id=period_ballon]")
    period_ballon = period.find("option", match: :first, text: fixed_ballon_final["periodo"])
    period_ballon.select_option
  end

  #------------------------------------------------------------------
  #---------------------------Parcela Final--------------------------
  def adding_fixed_final(fixed_ballon_final)
    find("input[id=value_final]").set fixed_ballon_final["val_final"]

    qtd = find("select[id=qtd_final]")
    qtd_final = qtd.find("option", match: :first, text: fixed_ballon_final["qtd_fin"])
    qtd_final.select_option

    find("input[id=date_one_final]").set fixed_ballon_final["venc_fin"]

    form = find("select[id=payment_type_final]")
    fomr_final = form.find("option", match: :first, text: fixed_ballon_final["pag_fin"])
    fomr_final.select_option
  end

  #------------------------------------------------------------------
  #-----------------Informações parcela(s) normal(is)----------------
  def adding_normal_fixed_ball_fin(fixed_ballon_final)
    normal = find("select[id=qtd_plots]")
    normal_plot = normal.find("option", match: :first, text: fixed_ballon_final["qtd_parc"])
    normal_plot.select_option

    find("select[id=qtd_plots]").set fixed_ballon_final["venc_nor"]

    payment_normal = find("select[id=payment_type_plots]")
    payment_normal = payment_normal.find("option", match: :first, text: fixed_ballon_final["pag_nor"])
    payment_normal.select_option
  end

  #------------------------------------------------------------------

  #Proposta usando Tabela SACOC 6%
  #----------------------Adicionando comprador----------------------
  def adding_buyer_sacoc(sacoc)
    find(".group-form .contet-select .btnSelCli").click
    find("input[id=client_search]").set sacoc["comprador"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #----------------------Adicionando Imobiliária---------------------
  def adding_salespeople_sacoc(sacoc)
    find(".contet-select .btnSelSel").click
    find("input[id=seller_search]").set sacoc["imobiliaria"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #-----------------------Adicionando Corretor-----------------------
  def adding_broker_sacoc(sacoc)
    find(".contet-select .btnSelSel2").click
    find("input[id=seller2_search]").set sacoc["corretor"]
    sleep 1
    select_element
  end

  #------------------------------------------------------------------
  #--------------------------Tabela de Preço-------------------------
  def adding_sacoc_list(sacoc)
    table = find("select[name=table_price_config]")
    table_price = table.find("option", match: :first, text: sacoc["tabela_preco"])
    sleep 1
    table_price.select_option
  end

  #------------------------------------------------------------------
  #-------------------------Adicionar Imóveis------------------------
  def adding_sacoc_real_state(sacoc)
    find(".plots_manager_header .add_lote").click
    find("input[id=search_real_states]").set sacoc["imovel"]
    sleep 4
    select_element
    sleep 2
  end

  #------------------------------------------------------------------
  #------------------------Informações Entrada-----------------------
  def adding_sacoc_entry(sacoc)
    entry = find("select[id=qtd_enters]")
    plot_entry = entry.find("option", match: :first, text: sacoc["qtd_ent"])
    plot_entry.select_option

    find("input[id=date_one_plot]").set sacoc["venc_ent"]

    payment_entry = find("select[id=payment_type_enter]")
    payament_type = payment_entry.find("option", match: :first, text: sacoc["pag_ent"])
    payament_type.select_option
  end

  #------------------------------------------------------------------
  #-----------------Informações parcela(s) normal(is)----------------
  def adding_normal_sacoc(sacoc)
    normal = find("select[id=qtd_plots]")
    normal_plot = normal.find("option", match: :first, text: sacoc["qtd_parc"])
    normal_plot.select_option

    find("select[id=qtd_plots]").set sacoc["venc_nor"]

    payment = find("select[id=payment_type_plots]")
    payment_normal = payment.find("option", match: :first, text: sacoc["pag_nor"])
    payment_normal.select_option
  end

  #------------------------------------------------------------------
end
