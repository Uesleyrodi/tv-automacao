require "selenium-webdriver"

class NovoContasReceber
  include Capybara::DSL

  def nova_contas_receber
    find(".bts-action a[href='/panel/bills-to-receives/new']").click
  end

  def salvando_contas_receber
    find("input[id=btnBills]").click
  end

  def pesquisar
    find("input[name=submit]").click
  end

  def dados_nf(dados_parcela_nf)
    dados_gerais_nf(dados_parcela_nf)
    dados_parcela_nf(dados_parcela_nf)
  end

  def dados_ct(dados_parcela_ct)
    dados_gerais_ct(dados_parcela_ct)
    dados_parcela_ct(dados_parcela_ct)
  end

  def dados_np(dados_parcela_np)
    dados_gerais_np(dados_parcela_np)
    dados_parcela_np(dados_parcela_np)
  end

  def dados_ns(dados_parcela_ns)
    dados_gerais_ns(dados_parcela_ns)
    dados_parcela_ns(dados_parcela_ns)
  end

  def dados_ou(dados_parcela_ou)
    dados_gerais_ou(dados_parcela_ou)
    dados_parcela_ou(dados_parcela_ou)
  end

  def filtro_conta(filtrar_dados)
    setando_filtro(filtrar_dados)
  end

  private

  #---------------------------NF-Nota Fiscal---------------------------
  def dados_gerais_nf(dados_parcela_nf)
    find(".cp-cr-list .IconCliente").click
    find("input[id=provider_search]").set dados_parcela_nf["cliente"]
    find(".table .btnSelecionar").click

    find(".IconPlanoContas").click
    find(".input-group #account_plan_search").set dados_parcela_nf["plano_contas"]
    sleep 2
    find(".treeview-account-plans .btnSelecionar").click

    tipo = find("select[id='type_doc']")
    tipo_documento = tipo.find("option", text: dados_parcela_nf["tipo_documento"])
    tipo_documento.select_option

    find("input[id=num_doc]").set dados_parcela_nf["num_doc"]
    find("input[id=date_issue]").set dados_parcela_nf["data_emissao"]
    find("input[name=nfe]").set dados_parcela_nf["chave_NFE"]
    find("input[id=date_nfe]").set dados_parcela_nf["data_ent"]
    find("textarea[id=history]").set dados_parcela_nf["historico"]
  end

  def dados_parcela_nf(dados_parcela_nf)
    find("input[id=value_plot]").set dados_parcela_nf["valor_total"]

    quantidade = find(".group-form #numPlots")
    quantidade_parcela = quantidade.find("option[value='10']", text: dados_parcela_nf["qtd_parcelas"])
    quantidade_parcela.select_option

    find("input[id=date_one_normal]").set dados_parcela_nf["data_vencimento"]
    elemento = find("#payment_form")
    elemento.send_keys :enter

    forma = find(".group-form #payment_form")
    forma_pagamento = forma.find("option", text: dados_parcela_nf["form_pagamneto"])
    forma_pagamento.select_option
  end

  #--------------------------------------------------------------------

  #-----------------------------CT-Contrato----------------------------
  def dados_gerais_ct(dados_gerais_ct)
    find(".cp-cr-list .IconCliente").click
    find("input[id=provider_search]").set dados_gerais_ct["cliente"]
    find(".table .btnSelecionar").click

    find(".IconPlanoContas").click
    find(".input-group #account_plan_search").set dados_gerais_ct["plano_contas"]
    sleep 2
    find(".treeview-account-plans .btnSelecionar").click

    tipo = find("select[id='type_doc']")
    tipo_documento = tipo.find("option", text: dados_gerais_ct["tipo_documento"])
    tipo_documento.select_option

    find("input[id=num_doc]").set dados_gerais_ct["num_doc"]
    find("input[id=date_issue]").set dados_gerais_ct["data_emissao"]
    find("textarea[id=history]").set dados_gerais_ct["historico"]
  end

  def dados_parcela_ct(dados_gerais_ct)
    find("input[id=value_plot]").set dados_gerais_ct["valor_total"]

    quantidade = find(".group-form #numPlots")
    quantidade_parcela = quantidade.find("option[value='10']", text: dados_gerais_ct["qtd_parcelas"])
    quantidade_parcela.select_option

    find("input[id=date_one_normal]").set dados_gerais_ct["data_vencimento"]
    elemento = find("#payment_form")
    elemento.send_keys :enter

    forma = find(".group-form #payment_form")
    forma_pagamento = forma.find("option", text: dados_gerais_ct["form_pagamneto"])
    forma_pagamento.select_option
  end

  #--------------------------------------------------------------------

  #-------------------------NP-Nota Promissória------------------------
  def dados_gerais_np(dados_parcela_np)
    find(".cp-cr-list .IconCliente").click
    find("input[id=provider_search]").set dados_parcela_np["cliente"]
    find(".table .btnSelecionar").click

    find(".IconPlanoContas").click
    find(".input-group #account_plan_search").set dados_parcela_np["plano_contas"]
    sleep 2
    find(".treeview-account-plans .btnSelecionar").click

    tipo = find("select[id='type_doc']")
    tipo_documento = tipo.find("option", text: dados_parcela_np["tipo_documento"])
    tipo_documento.select_option

    find("input[id=num_doc]").set dados_parcela_np["num_doc"]
    find("input[id=date_issue]").set dados_parcela_np["data_emissao"]
    find("textarea[id=history]").set dados_parcela_np["historico"]
  end

  def dados_parcela_np(dados_parcela_np)
    find("input[id=value_plot]").set dados_parcela_np["valor_total"]

    quantidade = find(".group-form #numPlots")
    quantidade_parcela = quantidade.find("option[value='10']", text: dados_parcela_np["qtd_parcelas"])
    quantidade_parcela.select_option

    find("input[id=date_one_normal]").set dados_parcela_np["data_vencimento"]
    elemento = find("#payment_form")
    elemento.send_keys :enter

    forma = find(".group-form #payment_form")
    forma_pagamento = forma.find("option", text: dados_parcela_np["form_pagamneto"])
    forma_pagamento.select_option
  end

  #--------------------------------------------------------------------

  #------------------------NS - Nota de Serviço------------------------
  def dados_gerais_ns(dados_parcela_ns)
    find(".cp-cr-list .IconCliente").click
    find("input[id=provider_search]").set dados_parcela_ns["cliente"]
    find(".table .btnSelecionar").click

    find(".IconPlanoContas").click
    find(".input-group #account_plan_search").set dados_parcela_ns["plano_contas"]
    sleep 2
    find(".treeview-account-plans .btnSelecionar").click

    tipo = find("select[id='type_doc']")
    tipo_documento = tipo.find("option", text: dados_parcela_ns["tipo_documento"])
    tipo_documento.select_option

    find("input[id=num_doc]").set dados_parcela_ns["num_doc"]
    find("input[id=date_issue]").set dados_parcela_ns["data_emissao"]
    find("textarea[id=history]").set dados_parcela_ns["historico"]
  end

  def dados_parcela_ns(dados_parcela_ns)
    find("input[id=value_plot]").set dados_parcela_ns["valor_total"]

    quantidade = find(".group-form #numPlots")
    quantidade_parcela = quantidade.find("option[value='10']", text: dados_parcela_ns["qtd_parcelas"])
    quantidade_parcela.select_option

    find("input[id=date_one_normal]").set dados_parcela_ns["data_vencimento"]
    elemento = find("#payment_form")
    elemento.send_keys :enter

    forma = find(".group-form #payment_form")
    forma_pagamento = forma.find("option", text: dados_parcela_ns["form_pagamneto"])
    forma_pagamento.select_option
  end

  #--------------------------------------------------------------------

  #-----------------------------OU-Outros------------------------------
  def dados_gerais_ou(dados_parcela_ou)
    find(".cp-cr-list .IconCliente").click
    find("input[id=provider_search]").set dados_parcela_ou["cliente"]
    find(".table .btnSelecionar").click

    find(".IconPlanoContas").click
    find(".input-group #account_plan_search").set dados_parcela_ou["plano_contas"]
    sleep 2
    find(".treeview-account-plans .btnSelecionar").click

    tipo = find("select[id='type_doc']")
    tipo_documento = tipo.find("option", text: dados_parcela_ou["tipo_documento"])
    tipo_documento.select_option

    find("input[id=num_doc]").set dados_parcela_ou["num_doc"]
    find("input[id=date_issue]").set dados_parcela_ou["data_emissao"]
    find("textarea[id=history]").set dados_parcela_ou["historico"]
  end

  def dados_parcela_ou(dados_parcela_ou)
    find("input[id=value_plot]").set dados_parcela_ou["valor_total"]

    quantidade = find(".group-form #numPlots")
    quantidade_parcela = quantidade.find("option[value='10']", text: dados_parcela_ou["qtd_parcelas"])
    quantidade_parcela.select_option

    find("input[id=date_one_normal]").set dados_parcela_ou["data_vencimento"]
    elemento = find("#payment_form")
    elemento.send_keys :enter

    forma = find(".group-form #payment_form")
    forma_pagamento = forma.find("option", text: dados_parcela_ou["form_pagamneto"])
    forma_pagamento.select_option
  end

  #--------------------------------------------------------------------

  def setando_filtro(filtrar_dados)
    situacao = find("select[id=list_plots_liquid]")
    situacao_parcela = situacao.find("option", text: filtrar_dados["situacao_parcela"])
    situacao_parcela.select_option

    tipo = find("select[name=list_plots]")
    tipo_data = tipo.find("option", text: filtrar_dados["tipo_data"])
    tipo_data.select_option

    find("input[id=dateVencInicial]").set filtrar_dados["data_inicial"]
    find("input[id=dateVencFinal]").set filtrar_dados["data_final"]

    tipo = find("select[id=search_by]")
    tipo_filtro = tipo.find("option", text: filtrar_dados["tipo"])
    tipo_filtro.select_option

    find("input[id=field_search_by]").set filtrar_dados["filtro"]

    plano = find("select[id=filter_account_plan]")
    plano_conta = plano.find("option", text: filtrar_dados["plano_contas"])
    plano_conta.select_option
  end
end
