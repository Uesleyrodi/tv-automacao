require "selenium-webdriver"

class Fornecedor
  include Capybara::DSL

  def novo_fornecedor
    find(".bts-action .btn-green").click
  end

  def salvando_fornecedor
    find(".pull-right .submit_confirm").click
  end

  def iniciais_fis(dados_iniciais)
    dados_iniciais_fis(dados_iniciais)
  end

  def complementares_fis(dados_complementares)
    dados_complementares_fis(dados_complementares)
  end

  def iniciais_jur(dados_iniciais_jur)
    setando_iniciais_jur(dados_iniciais_jur)
  end

  def complementares_jur(dados_complementares_jur)
    setando_complementares_jur(dados_complementares_jur)
  end

  private

  def dados_iniciais_fis(dados_iniciais)
    tipo = find("select[name=type_person]")
    tipo_pessoa = tipo.find("option", text: dados_iniciais["tipo_pessoa"])
    tipo_pessoa.select_option

    find("input[name=name]").set dados_iniciais["nome"]
    find("input[name=res_phone]").set dados_iniciais["tel_residencial"]
    find("input[name=cel_phone]").set dados_iniciais["tel_celular"]
    find("input[name=comercial_phone]").set dados_iniciais["tel_comercial"]
    find("input[name=email]").set dados_iniciais["email"]
    find("input[name=rg_ie]").set dados_iniciais["rg"]
    find("input[name=emitter_body]").set dados_iniciais["orgao_emissor"]
    find("input[name=date_emitter]").set dados_iniciais["data_emissao"]
    find("input[name=cpf_cnpj]").set dados_iniciais["cpf_cnpj"]
  end

  def dados_complementares_fis(dados_complementares)
    find("input[name=birth_day]").set dados_complementares["data_nascimento"]
    anexando_logo_marca(dados_complementares["logo_marca"])
    find("input[id='1_atividade']").set dados_complementares["atividade"]
    find("input[id=cep0]").set dados_complementares["cep"]
    find("input[id=number0]").click
    sleep 1
    find("input[id=number0]").set dados_complementares["numero"]
    find("input[id=free0]").set dados_complementares["complemento"]
    find("input[id=cep1]").set dados_complementares["cep_cobranca"]
    find("input[id=number1]").click
    sleep 1
    find("input[id=number1]").set dados_complementares["num_cobranca"]
    find("input[id=free1]").set dados_complementares["complemento_cobranca"]
  end

  def anexando_logo_marca(value)
    Capybara.ignore_hidden_elements = false
    logo = "features/support/docs/" + value
    importacao_logo = File.join(Dir.pwd, logo)

    attach_file("1_logo", importacao_logo)
    sleep 1
    Capybara.ignore_hidden_elements = true
  end

  def setando_iniciais_jur(dados_iniciais_jur)
    tipo = find("select[name=type_person]")
    tipo_pessoa = tipo.find("option", text: dados_iniciais_jur["tipo_pessoa"])
    tipo_pessoa.select_option

    find("input[name=name]").set dados_iniciais_jur["razao_social"]
    find("input[name=corporate_name]").set dados_iniciais_jur["nome_fantasia"]
    find("input[name=res_phone]").set dados_iniciais_jur["tel_residencial"]
    find("input[name=comercial_phone]").set dados_iniciais_jur["tel_comercial"]
    find("input[name=email]").set dados_iniciais_jur["email"]
    find("input[name=rg_ie]").set dados_iniciais_jur["inscricao_estadual"]
    find("input[name=cpf_cnpj]").set dados_iniciais_jur["cpf_cnpj"]
  end

  def setando_complementares_jur(dados_complementares_jur)
    anexando_logo_marca(dados_complementares_jur["logo_marca"])
    find("input[name='Fields[34]']").set dados_complementares_jur["atividade"]
    find("input[id=cep0]").set dados_complementares_jur["cep"]
    find("input[id=number0]").click
    sleep 1
    find("input[id=number0]").set dados_complementares_jur["numero"]
    find("input[id=free0]").set dados_complementares_jur["complemento"]
    find("input[id=cep1]").set dados_complementares_jur["cep_cobranca"]
    find("input[id=number1]").click
    sleep 1
    find("input[id=number1]").set dados_complementares_jur["num_cobranca"]
    find("input[id=free1]").set dados_complementares_jur["complemento_cobranca"]
  end
end
