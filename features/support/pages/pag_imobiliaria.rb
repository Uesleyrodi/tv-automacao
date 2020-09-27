require "selenium-webdriver"

class Imobiliaria
  include Capybara::DSL

  def nova_imobiliaria
    find(".breadcrumb-custom__action-bar .btn-greenvista").click
  end

  def salvando_imobiliaria
    find("#nav-tab .tabs-custom__actions .btn-greenvista").click
  end

  def iniciais(dados_iniciais)
    dados_iniciais_imob(dados_iniciais)
  end

  def complementares(dados_complementares)
    dados_complementares_imob(dados_complementares)
  end

  def permissao(permissao)
    permissao_imob(permissao)
  end

  private

  # Cadastro de Imobiliária
  #-----------------------Dados iniciais----------------------
  def dados_iniciais_imob(dados_iniciais)
    find("input[id=cpfCnpj]").set dados_iniciais["cnpj"]
    find("input[id=name]").set dados_iniciais["razao_social"]
    find("input[id=corporateName]").set dados_iniciais["nome_fantasia"]
    find("input[id=email]").set dados_iniciais["email"]
    find("input[id=cel_phone]").set dados_iniciais["tel_cel"]
    find("input[id=comercial_phone]").set dados_iniciais["tel_com"]
    find("input[id=res_phone]").set dados_iniciais["tel_res"]
    find("input[id=usernameLogin]").set dados_iniciais["login"]
    find("input[id=comission]").set dados_iniciais["login"]
    find("input[id=comission]").set dados_iniciais["comissao"]
    find("input[id=maxDescPercent]").set dados_iniciais["desconto"]
  end

  #-----------------------------------------------------------
  #--------------------Dados Complementares-------------------
  def dados_complementares_imob(dados_complementares)
    find("input[id=rgIe]").set dados_complementares["incricao_estudual"]
    find("input[id='Fields_37']").set dados_complementares["creci"]

    #------------------------Endereço-------------------------
    find("a[href='#nav-enderecos']").click
    find("input[id=zipCode]").set dados_complementares["cep"]
    find("input[id=adress]").set dados_complementares["rua"]
    find("input[id=number]").set dados_complementares["numero"]
    find("input[id=free]").set dados_complementares["complemento"]
    find("input[id=neighborhoods]").set dados_complementares["bairro"]
    find("input[id=city]").set dados_complementares["cidade"]
    find("input[id=state]").set dados_complementares["estado"]
    #---------------------------------------------------------
  end

  def permissao_imob(permissao)
    find("a[href='#nav-permissoes']").click
    #-----------------------Comercial-------------------------
    find("a[href='#v-pills-Comercial']").click
    find("input[id='checkbox-comercial-Carteira de Clientes']").set true
    find("input[id='checkbox-comercial-Carteira de Imóveis']").set true
    find("input[id='checkbox-comercial-Propostas']").set true
    #---------------------------------------------------------

    #-----------------------Financeiro-------------------------
    find("a[href='#v-pills-Financeiro']").click
    find("input[id='checkbox-financeiro-Contas a Pagar']").set true
    find("input[id='checkbox-financeiro-Contas a Receber']").set true
    find("input[id='checkbox-financeiro-Boleto Cloud']").set true
    #---------------------------------------------------------

    #-------------------------Mapa----------------------------
    find("a[href='#v-pills-Mapa']").click
    find("input[id='checkbox-mapa-Mapa']").set true
    #---------------------------------------------------------
  end
end
