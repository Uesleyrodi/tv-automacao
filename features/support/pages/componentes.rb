require "selenium-webdriver"

class Componentes
  include Capybara::DSL

  def filtro(valor)
    find("input[name=name]").set valor
    find("input[name=submit]").click
  end

  def pesquisa_comprador(valor)
    find("input[id=block_court]").set valor
    find("input[name=submit]").click
  end

  def obter_tr(target)
    return find("table tbody tr", match: :first, text: target)
  end
end

class Empreendimento
  include Capybara::DSL

  def usuario_logado
    return find(".login__enterprise-item-info span", match: :first).text
  end

  def clicando_empreendimento
    return find(".login__enterprise-item-info span", match: :first).click
  end
end

class Menu
  include Capybara::DSL
  # Abrindo o menu
  def menu_lateral
    find("#Open_Sidenav").click
  end

  #clicando no empreendimento no novo layout
  def menu_lateral_novo
    find("#sidebar-toggle-action").click
  end

  #------------------------Clicando nos menus--------------------------
  def menu_comercial
    click_link_or_button "Comercial"
  end

  def menu_configuracao
    find("div.navbar-top ul.no-select li.new-messages-fin-box-li", match: :first).click
    click_link "Configurações"
  end

  def menu_financeiro
    click_link_or_button "Financeiro"
  end

  def menu_empreendimento
    menu_lateral
    click_link_or_button "Empreendimentos"
  end

  def menu_compras
    menu_lateral
    click_link_or_button "Compras"
  end

  #clicando no empreendimento no novo layout
  def menu_empreendimento_novo
    menu_lateral_novo
    find(".sidebar__scroll-fix .sidebar__menu li a[href='/configuracoes/empreendimentos/alternar']").click
  end

  #---------------------------------------------------------------------

  #-------------------------Abrindo Submenus----------------------------

  #-----------------------------Comercial-------------------------------
  def submenu_cliente
    menu_lateral
    menu_comercial
    click_link_or_button "Carteira de Cliente"
  end

  def proposals_menu
    menu_lateral
    menu_comercial
    click_link_or_button "Propostas"
  end

  #--------------------------------------------------------------------

  #-----------------------------Financeiro-----------------------------
  def menu_tabela_preco
    menu_lateral
    menu_financeiro
    click_link_or_button "Tabelas de Preços"
  end

  def submenu_contas_receber
    menu_lateral
    menu_financeiro
    click_link_or_button "Contas a Receber"
  end

  def submenu_plano_de_contas
    menu_lateral
    menu_financeiro
    click_link_or_button "Cadastro Financeiro"
    click_link_or_button "Plano de Contas Financeiro"
  end

  #--------------------------------------------------------------------
  #------------------------------Compras-------------------------------
  def submenu_fornecedores
    menu_compras
    click_link_or_button "Fornecedores"
  end

  #--------------------------------------------------------------------
  #---------------------------Configuração----------------------------
  def submenu_import_imovel
    menu_configuracao
    find("div.col.mb-4.configuracoes-item[data-href='/configuracoes/importar-imoveis/index']").click
  end

  def submenu_imobiliaria
    menu_configuracao
    find("div.col.mb-4.configuracoes-item[data-href='/configuracoes/imobiliarias']").click
  end

  def submenu_cargo
    menu_configuracao
    find("div.col.mb-4.configuracoes-item[data-href='/configuracoes/cargos']").click
  end

  def submenu_edt_empreendimnto
    menu_configuracao
    find("div.col.mb-4.configuracoes-item[data-href='/configuracoes/empreendimentos/editar/1']").click
  end

  #-------------------------------------------------------------------
end
