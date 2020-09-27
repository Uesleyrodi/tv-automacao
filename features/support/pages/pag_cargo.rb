require "selenium-webdriver"

class Cargo
  include Capybara::DSL

  def novo_cargo
    find("a.btn[href='/configuracoes/cargos/novo']").click
  end

  def permissoes
    find("#nav-profile-tab").click
  end

  def salvando_cargo
    find(".btn-greenvista").click
  end

  def fechando_alerta
    find("#flash-message__close-button").click
  end

  def cargo_administrativo(dados_admistrativo)
    setando_dados_adm(dados_admistrativo)
  end

  def permissao_administrativo(permissoes_adm)
    setando_permissoes_adm(permissoes_adm)
  end

  def cargo_comercial(dados_comercial)
    setando_dados_com(dados_comercial)
  end

  def permissoes_comercial(permissoes_com)
    setando_permissoes_com(permissoes_com)
  end

  def cargo_financeiro(dados_financeiro)
    setando_dados_fin(dados_financeiro)
  end

  def permissoes_financeiro(permissoes_fin)
    setando_permissoes_fin(permissoes_fin)
  end

  private

  def setando_dados_adm(dados_admistrativo)
    find(".form-row .form-group #name").set dados_admistrativo["nome_cargo"]
    find("input[name=commission]").set true
    find("input[name=percent]").set dados_admistrativo["comissao"]
  end

  def setando_permissoes_adm(permissoes_adm)
    #-----------------------Comercial-----------------------
    find("#permissions-nav a[href='#v-pills-Comercial']").click
    find("input[id='checkbox-comercial-Carteira de Clientes']").set true
    find("input[id='checkbox-comercial-Carteira de Imóveis']").set true
    find("input[id='checkbox-comercial-Propostas']").set true
    #------------------------Compras------------------------
    find("#permissions-nav a[href='#v-pills-Compras']").click
    find("input[id='checkbox-compras-Fornecedores']").set true
    find("input[id='checkbox-compras-Produtos/Serviços']").set true
    find("input[id='checkbox-compras-Fases da Obra']").set true
    #---------------------Configuração----------------------
    find("#permissions-nav a[href='#v-pills-Configurações']").click
    find("input[id='checkbox-configuracoes-Configurações da Empresa']").set true
    find("input[id='checkbox-configuracoes-E-mails']").set true
    find("input[id='checkbox-configuracoes-Empreendimentos']").set true
    find("input[id='checkbox-configuracoes-Campos Obrigatórios']").set true
    find("input[id='checkbox-configuracoes-Log de E-mails']").set true
    find("input[id='checkbox-configuracoes-Log de E-mails']").set true
    find("input[id='checkbox-configuracoes-Cargos']").set true
    find("input[id='checkbox-configuracoes-Sócios']").set true
    find("input[id='checkbox-configuracoes-Imóveis']").set true
    find("input[id='checkbox-configuracoes-Imobiliárias']").set true
    find("input[id='checkbox-configuracoes-Situações']").set true
    find("input[id='checkbox-configuracoes-Status']").set true
    find("input[id='checkbox-configuracoes-Usuários']").set true
    #----------------------Financeiro-----------------------
    find("#permissions-nav a[href='#v-pills-Financeiro']").click
    find("input[id='checkbox-financeiro-Plano de Contas Financeiro']").set true
    find("input[id='checkbox-financeiro-Operações Contábeis']").set true
    find("input[id='checkbox-financeiro-Bancos/Contas']").set true
    find("input[id='checkbox-financeiro-Contas a Pagar']").set true
    find("input[id='checkbox-financeiro-Boletos']").set true
    find("input[id='checkbox-financeiro-Transferência de Arquivos']").set true
    find("input[id='checkbox-financeiro-Contas a Receber']").set true
    find("input[id='checkbox-financeiro-Movimento Financeiro']").set true
    find("input[id='checkbox-financeiro-Contratos Realizados']").set true
    find("input[id='checkbox-financeiro-Carteira de Imóveis']").set true
    find("input[id='checkbox-financeiro-Correção']").set true
    find("input[id='checkbox-financeiro-Correção']").set true
    find("input[id='checkbox-financeiro-Controle de Comissão']").set true
    find("input[id='checkbox-financeiro-Tabela de Preços']").set true
    find("input[id='checkbox-financeiro-Arquivos da Integração Contábi']").set true
    find("input[id='checkbox-financeiro-Carnê/N.P']").set true
    find("input[id='checkbox-financeiro-Integração Contábil']").set true
    find("input[id='checkbox-financeiro-Boleto Cloud']").set true
    #-----------------------Mapa------------------------
    find("#permissions-nav a[href='#v-pills-Mapa']").click
    find("input[id='checkbox-mapa-Mapa']").set true
    #--------------------Relatórios----------------------
    find("#permissions-nav a[href='#v-pills-Relatórios']").click
    find("input[id='checkbox-relatorios-Curva Financeira']").set true
    find("input[id='checkbox-relatorios-Gerencial']").set true
    find("input[id='checkbox-relatorios-Envio de Relatórios']").set true
    find("input[id='checkbox-relatorios-Historico de Imóveis']").set true
    find("input[id='checkbox-relatorios-Curva Financeira Detalhada']").set true
    find("input[id='checkbox-relatorios-Dimob']").set true
  end

  def setando_dados_com(dados_comercial)
    find(".form-row .form-group #name").set dados_comercial["nome_cargo"]
    find("input[name=commission]").set true
    find("input[name=percent]").set dados_comercial["comissao"]
  end

  def setando_permissoes_com(permissoes_com)
    #-----------------------Comercial-----------------------
    find("#permissions-nav a[href='#v-pills-Comercial']").click
    find("input[id='checkbox-comercial-Carteira de Clientes']").set true
    find("input[id='checkbox-comercial-Carteira de Imóveis']").set true
    find("input[id='checkbox-comercial-Propostas']").set true
    #-----------------------Mapa------------------------
    find("#permissions-nav a[href='#v-pills-Mapa']").click
    find("input[id='checkbox-mapa-Mapa']").set true
  end

  def setando_dados_fin(dados_financeiro)
    find(".form-row .form-group #name").set dados_financeiro["nome_cargo"]
    find("input[name=commission]").set true
    find("input[name=percent]").set dados_financeiro["comissao"]
  end

  def setando_permissoes_fin(permissoes_fin)
    #----------------------Financeiro-----------------------
    find("#permissions-nav a[href='#v-pills-Financeiro']").click
    find("input[id='checkbox-financeiro-Plano de Contas Financeiro']").set true
    find("input[id='checkbox-financeiro-Operações Contábeis']").set true
    find("input[id='checkbox-financeiro-Bancos/Contas']").set true
    find("input[id='checkbox-financeiro-Contas a Pagar']").set true
    find("input[id='checkbox-financeiro-Boletos']").set true
    find("input[id='checkbox-financeiro-Transferência de Arquivos']").set true
    find("input[id='checkbox-financeiro-Contas a Receber']").set true
    find("input[id='checkbox-financeiro-Movimento Financeiro']").set true
    find("input[id='checkbox-financeiro-Contratos Realizados']").set true
    find("input[id='checkbox-financeiro-Carteira de Imóveis']").set true
    find("input[id='checkbox-financeiro-Correção']").set true
    find("input[id='checkbox-financeiro-Correção']").set true
    find("input[id='checkbox-financeiro-Controle de Comissão']").set true
    find("input[id='checkbox-financeiro-Tabela de Preços']").set true
    find("input[id='checkbox-financeiro-Arquivos da Integração Contábi']").set true
    find("input[id='checkbox-financeiro-Carnê/N.P']").set true
    find("input[id='checkbox-financeiro-Integração Contábil']").set true
    find("input[id='checkbox-financeiro-Boleto Cloud']").set true
  end
end
