require "selenium-webdriver"

class Corretor
  include Capybara::DSL

  def corretores
    find("a[data-original-title=Corretores]").click
  end

  def novo_corretor
    find(".breadcrumb-custom__action-bar .btn-greenvista").click
  end

  def salvando_corretor
    find(".tabs-custom__actions .btn-greenvista").click
  end

  def filtrando_imobiliaria(filtro_imob)
    filtro(filtro_imob)
  end

  def iniciais_fis(dados_iniciais)
    dados_iniciais_fis(dados_iniciais)
  end

  def iniciais_jur(dados_iniciais)
    dados_iniciais_jur(dados_iniciais)
  end

  def complementares(dados_complementares)
    dados_complementares_cor(dados_complementares)
  end

  def permissao(permissao)
    permissao_cor(permissao)
  end

  private

  def filtro(filtro_imob)
    find("input[name=name]").set filtro_imob["nome_imob"]
    find("input[name=email]").set filtro_imob["email"]
    find(".btn-greenvista .fa-search").click
  end

  def dados_iniciais_fis(dados_iniciais)
    Capybara.ignore_hidden_elements = false
    tipo = find("select[name=typePerson]")
    tipo_pessoa = tipo.find("option", text: dados_iniciais["tipo_pessoa"])
    tipo_pessoa.select_option
    Capybara.ignore_hidden_elements = true

    find("input[id=cpfCnpj]").set dados_iniciais["cpf"]
    find("input[id=name]").set dados_iniciais["nome_cor"]
    find("input[id=email]").set dados_iniciais["email"]
    find("input[id=cel_phone]").set dados_iniciais["tel_celular"]
    find("input[id=comercial_phone]").set dados_iniciais["tel_comercial"]
    find("input[id=res_phone]").set dados_iniciais["tel_residencial"]
    find("input[id=usernameLogin]").set dados_iniciais["login"]
  end

  def dados_iniciais_jur(dados_iniciais)
    Capybara.ignore_hidden_elements = false
    tipo = find("select[name=typePerson]")
    tipo_pessoa = tipo.find("option", text: dados_iniciais["tipo_pessoa"])
    tipo_pessoa.select_option
    Capybara.ignore_hidden_elements = true

    find("input[id=cpfCnpj]").set dados_iniciais["cnpj"]
    find("input[id=name]").set dados_iniciais["razao_social"]
    find("input[id=corporateName]").set dados_iniciais["nome_fantasia"]
    find("input[id=email]").set dados_iniciais["email"]
    find("input[id=cel_phone]").set dados_iniciais["tel_celular"]
    find("input[id=comercial_phone]").set dados_iniciais["tel_comercial"]
    find("input[id=res_phone]").set dados_iniciais["tel_residencial"]
    find("input[id=usernameLogin]").set dados_iniciais["login"]
  end

  def dados_complementares_cor(dados_complementares)
    find("input[id='Fields_37']").set dados_complementares["creci"]

    find("a[href='#nav-enderecos']").click
    find("input[id=zipCode]").set dados_complementares["cep"]
    find("input[id=adress]").set dados_complementares["rua"]
    find("input[id=number]").set dados_complementares["numero"]
    find("input[id=free]").set dados_complementares["complemento"]
    find("input[id=neighborhoods]").set dados_complementares["bairro"]
    find("input[id=city]").set dados_complementares["cidade"]
    find("input[id=state]").set dados_complementares["estado"]
  end

  def permissao_cor(permissao)
    find("a[href='#nav-permissoes']").click

    find("a[href='#v-pills-Comercial']").click
    find("input[id='checkbox-comercial-Carteira de Clientes']").set true
    find("input[id='checkbox-comercial-Carteira de Imóveis']").set true
    find("input[id='checkbox-comercial-Propostas']").set true

    find("a[href='#v-pills-Mapa']").click
    find("input[id='checkbox-mapa-Mapa']").set true
  end
end
