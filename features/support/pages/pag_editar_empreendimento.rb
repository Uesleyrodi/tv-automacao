require "selenium-webdriver"

class EditarEmpreendimento
  include Capybara::DSL

  def salvando_config
    find(".tabs-custom__actions .btn-greenvista").click
  end

  def checando_mensagem(alerta)
    Capybara.ignore_hidden_elements = false
    return find("#noty_layout__topRight .noty_bar .noty_body", text: alerta)
    Cabybara.ignore_hidden_elements = true
  end

  def fechando_importacao
    find(".flash-message__container #flash-message__close-button").click
  end

  def dados_gerais(dados_empreendimento)
    setando_dados_gerais(dados_empreendimento)
    setando_contatos(dados_empreendimento)
    setando_endereco(dados_empreendimento)
    setando_configuracoes(dados_empreendimento)
    setando_correcao(dados_empreendimento)
    setando_devolucao(dados_empreendimento)
    setando_comissao(dados_empreendimento)
    setando_dimob(dados_empreendimento)
  end

  def imagens_config(imagens)
    setando_imagens(imagens)
  end

  private

  def setando_dados_gerais(dados_empreendimento)
    find("input[name=nome]").set dados_empreendimento["nome"]
    find("input[name=qtd_real_state]").set dados_empreendimento["unidades"]
    find("input[id=cnpj]").set dados_empreendimento["cnpj"]

    Capybara.ignore_hidden_elements = false
    status = find(".dropdown select[name=statu_id]")
    status_empreendimento = status.find("option", text: dados_empreendimento["status"])
    status_empreendimento.select_option

    tipo = find("select[name=type]")
    tipo_empreendimento = tipo.find("option", text: dados_empreendimento["tipo"])
    tipo_empreendimento.select_option

    modelo = find("select[name=model]")
    modelo_empreendimento = modelo.find("option", text: dados_empreendimento["modelo"])
    modelo_empreendimento.select_option
    Capybara.ignore_hidden_elements = true
  end

  def setando_contatos(dados_empreendimento)
    find("#contatos-tab").click
    find("input[name='Fields[6]']").set dados_empreendimento["tel_comercial"]
    find("input[name='Fields[3]']").set dados_empreendimento["facebook"]
    find("input[name='Fields[4]']").set dados_empreendimento["twitter"]
    find("input[name='Fields[7]']").set dados_empreendimento["site"]
    find("input[name='Fields[11]']").set dados_empreendimento["whatsap"]
    find("input[name='Fields[8]']").set dados_empreendimento["blog"]
    find("input[name='Fields[1]']").set dados_empreendimento["skype"]
  end

  def setando_endereco(dados_empreendimento)
    find("#nav-tab #endereco-tab").click
    find("input[name=adress]").set dados_empreendimento["endereco"]
    find("input[name=number]").set dados_empreendimento["numero"]
    find("input[name=free]").set dados_empreendimento["complemento"]
    find("input[name=neighborhoods]").set dados_empreendimento["bairro"]
    find("input[name=zip_code]").set dados_empreendimento["CEP"]
    find("input[name=city]").set dados_empreendimento["cidade"]
    find("input[name=state]").set dados_empreendimento["estado"]
    find("input[name=cod_dimob]").set dados_empreendimento["cod_dimob"]
    find("#active").set true
  end

  def setando_configuracoes(dados_empreendimento)
    find("#configuracoes-tab").click
    find("input[name='Fields[84]']").set dados_empreendimento["limite_paginacao"]
    find("input[name='Fields[64]']").set dados_empreendimento["numero_empreendimento"]
    find("input[name='Fields[58]']").set dados_empreendimento["validade_proposta"]
    find("input[name='Fields[53]']").set dados_empreendimento["mora"]
    find("input[name='Fields[54]']").set dados_empreendimento["multa"]

    operacao = find("#codigo_contabil_id")
    operacao_contabil = operacao.find("option", text: dados_empreendimento["operacao_contabil"])
    operacao_contabil.select_option

    plano = find("select[name=accountPlanReal]")
    plano_contas = plano.find("option", text: dados_empreendimento["plano_de_conta"])
    plano_contas.select_option

    find("#quickProposal").set true
    find("#sellersAllClients").set true
    find("#flagFinancial").set true
  end

  def setando_correcao(dados_empreendimento)
    find("#correcao-tab").click
    taxa = find(".form-group select[name='Fields[42]']")
    taxa_indice = taxa.find("option", text: dados_empreendimento["taxa_indice"])
    taxa_indice.select_option

    periodo = find("select[name='Fields[86]']")
    periodo_correcao = periodo.find("option", text: dados_empreendimento["periodo"])
    periodo_correcao.select_option

    tipo = find("select[name='Fields[91]']")
    tipo_correcao = tipo.find("option", text: dados_empreendimento["tipo_correcao"])
    tipo_correcao.select_option

    casas = find("select[name='Fields[93]']")
    casas_decimais = casas.find("option", text: dados_empreendimento["casas_descimais"])
    casas_decimais.select_option
  end

  def setando_devolucao(dados_empreendimento)
    find("#devolucao-tab").click
    conta = find("#accountPlanDevolution")
    conta_devolucao = conta.find("option", text: dados_empreendimento["contas_comissao"])
    conta_devolucao.select_option

    operacao = find("#accountingDevolution")
    operacao_contabil = operacao.find("option", text: dados_empreendimento["operacao_comissao"])
    operacao_contabil.select_option
  end

  def setando_comissao(dados_empreendimento)
    find("#comissao-tab").click
    conta_c = find("#accountPlanComission")
    conta_comissao = conta_c.find("option", text: dados_empreendimento["contas_comissao"])
    conta_comissao.select_option

    operacao_c = find("#accountComission")
    operacao_contabil_c = operacao_c.find("option", text: dados_empreendimento["operacao_comissao"])
    operacao_contabil_c.select_option
  end

  def setando_dimob(dados_empreendimento)
    find("#dimob-tab").click
    tipo = find("#typeDimob")
    tipo_dimob = tipo.find("option", text: dados_empreendimento["tipo_dimob"])
    tipo_dimob.select_option
  end

  def setando_imagens(imagens)
    find("#configuracoes-tab").click
    #inserindo mapa
    mapa = "features/support/docs/" + imagens["foto_mapa"]
    importacao_mapa = File.join(Dir.pwd, mapa)
    attach_file("Fields_20", importacao_mapa)

    #inserindo logo
    logo = "features/support/docs/" + imagens["logo_empreendimento"]
    importacao_logo = File.join(Dir.pwd, logo)
    attach_file("Fields_69", importacao_logo)
  end
end
