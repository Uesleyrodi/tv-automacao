require "selenium-webdriver"

class Cliente
  include Capybara::DSL

  def pre_cadastro
    find(".bts-action .btn-green").click
  end

  def pre_fisico(cliente_fisico)
    pre_cad_fisico(cliente_fisico)
  end

  def pre_juridico(cliente_juridico)
    pre_cad_juridico(cliente_juridico)
  end

  def criando_fisico(info_fisico)
    dados_pess(info_fisico)

    dados_comp(info_fisico)

    endereco_fisi(info_fisico)

    conjuge_fisi(info_fisico)

    doc_fisi(info_fisico)
  end

  def criando_juridico(info_juridico)
    dados_juri(info_juridico)

    endereco_juri(info_juridico)

    diretor_juri(info_juridico)

    doc_juri(info_juridico)
  end

  def salvando_cliente
    find(".pull-right ul li .submit_confirm").click
    sleep 5
  end

  private

  # Pessoal Física
  #------------------------Pré-cadasro-------------------------
  def pre_cad_fisico(cliente_fisico)
    type_element = find(".type_person")
    tipo_pessoa = type_element.find("option", text: cliente_fisico["tipo_pessoa"])
    tipo_pessoa.select_option

    find("input[name=name]").set cliente_fisico["nome"]
    find("#res_phone").set cliente_fisico["tel_residencial"]
    find("#cel_phone").set cliente_fisico["tel_celular"]
    find("#comercial_phone").set cliente_fisico["tel_comercial"]
    find("#email").set cliente_fisico["email"]
    find("#contacts").set cliente_fisico["contato"]

    find(".pull-right .submit_confirm").click
  end

  #------------------------------------------------------------
  #------------------------Dados Pessoais----------------------
  def dados_pess(info_fisico)
    find("#rg_ie").set info_fisico["rg"]
    find("#emitter_body").set info_fisico["orgao_emissor"]
    find("#date_emitter").set info_fisico["data_de_emissao"]
    find("#cpf_cnpj").set info_fisico["cpfcnpj"]
    find("#birth_day").set info_fisico["data_de_nascimento"]

    state = find(".group-form #naturalness_state")
    naturalness_state = state.find("option", text: info_fisico["naturalidade"])
    naturalness_state.select_option

    city = find(".group-form #naturalness_city")
    nat_city = city.find("option", text: info_fisico["cidade"])
    nat_city.select_option
  end

  #------------------------------------------------------------
  #--------------------Dados Complementares--------------------
  def dados_comp(info_fisico)
    find('input[name="Fields[1]"]').set info_fisico["profissao"]
    find('input[name="Fields[2]"]').set info_fisico["empresa"]
    find('input[name="Fields[5]"]').set info_fisico["nacionalidade"]
    find('input[name="Fields[3]"]').set info_fisico["nome_do_pai"]
    find('input[name="Fields[4]"]').set info_fisico["nome_da_mae"]

    civil = find('select[name="Fields[6]"]')
    state_civil = civil.find("option", text: info_fisico["estado_civil"])
    state_civil.select_option

    regime = find('select[name="Fields[7]"]')
    marriage_regime = regime.find("option", text: info_fisico["regime_casamento"])
    marriage_regime.select_option

    find("input[id='1_data_casamento']").set info_fisico["data_casamento"]
    find('input[name="Fields[17]"]').set info_fisico["observacao"]
  end

  #------------------------------------------------------------
  #---------------Endereço Residencial/Principal---------------
  def endereco_fisi(info_fisico)
    find("#cep0").set info_fisico["cep"]
    find("#adress0").click
    sleep 1
    find("#adress0").set info_fisico["endereco"]
    find("#number0").set info_fisico["numero"]
    find("#free0").set info_fisico["complemento"]
    find("#neighborhoods0").set info_fisico["bairro"]
  end

  #------------------------------------------------------------
  #-----------------------------Cônjuge------------------------
  def conjuge_fisi(info_fisico)
    find(".pull-left input[name=name]").set info_fisico["nome_con"]
    find(".pull-left input[name=cpf_cnpj]").set info_fisico["cpf_cnpj_con"]
    find(".pull-left input[name=rg_ie]").set info_fisico["rg_con"]
    find(".cjg-dir-block input[name=emitter_body]").set info_fisico["orgao_con"]
    find(".cjg-dir-block input[name=date_emitter]").set info_fisico["data_emissao_con"]
    find(".cjg-dir-block input[name=birth_date]").set info_fisico["data_nascimento_con"]
    find(".cjg-dir-block input[name=profession]").set info_fisico["profissao_con"]
    find(".cjg-dir-block input[name=nationality]").set info_fisico["nacionalidade_con"]
    find(".cjg-dir-block input[name=phone]").set info_fisico["tel_con"]
    find(".cjg-dir-block input[name=father_name]").set info_fisico["nome_pai_con"]
    find(".cjg-dir-block input[name=mother_name]").set info_fisico["nome_mae_con"]
  end

  #------------------------------------------------------------
  #-------------------importação de Documento------------------
  def doc_fisi(info_fisico)
    rel_path = "features/support/docs/" + info_fisico["documento"]
    doc_file = File.join(Dir.pwd, rel_path)

    attach_file("uploadFiles", doc_file)

    find("input[name=filenickname_0]").set info_fisico["nome_arquivo"]
    find("input[name=filedescription_0]").set info_fisico["descricao_arquivo"]
  end

  #------------------------------------------------------------
  # Pessoa Jurídica
  #------------------------Pré-cadasro-------------------------
  def pre_cad_juridico(cliente_juridico)
    type_element = find(".type_person")
    tipo_pessoa = type_element.find("option", text: cliente_juridico["tipo_pessoa"])
    tipo_pessoa.select_option

    find("input[name=name]").set cliente_juridico["razao_social"]
    find("input[name=corporate_name]").set cliente_juridico["nome_fantasia"]
    find("#res_phone").set cliente_juridico["tel_residencial"]
    find("#cel_phone").set cliente_juridico["tel_celular"]
    find("#comercial_phone").set cliente_juridico["tel_comercial"]
    find("#email").set cliente_juridico["email"]
    find("#contacts").set cliente_juridico["contato"]
    find(".pull-right .submit_confirm").click
  end

  #------------------------------------------------------------
  #------------------------Dados Pessoais----------------------
  def dados_juri(info_juridico)
    find("#rg_ie").set info_juridico["inscricao_estadual"]
    find("#cpf_cnpj").set info_juridico["cpf_cnpj"]

    state = find(".group-form #naturalness_state")
    naturalness_state = state.find("option", text: info_juridico["naturalidade"])
    naturalness_state.select_option

    city = find(".group-form #naturalness_city")
    nat_city = city.find("option", text: info_juridico["cidade"])
    nat_city.select_option

    find("input[id='1_profissão']").set info_juridico["profissao"]
    find("input[id='1_empresa']").set info_juridico["empresa"]
    find("input[id='1_nacionalidade']").set info_juridico["nacionalidade"]
    find("input[id='1_nome_pai']").set info_juridico["nome_pai"]
    find("input[id='1_nome_mae']").set info_juridico["nome_mae"]

    civil_jur = find("select[id='1_estado_civil']")
    state_civil = civil_jur.find("option", text: info_juridico["estado_civil"])
    state_civil.select_option

    regime_jur = find("select[id='1_regime_casamento']")
    marriage_regime = regime_jur.find("option", text: info_juridico["regime_casamento"])
    marriage_regime.select_option

    find("input[id='1_data_casamento']").set info_juridico["data_casamento"]
    find("input[id='1_observacao']").set info_juridico["observacao"]
  end

  #------------------------------------------------------------
  #---------------Endereço Residencial/Principal---------------
  def endereco_juri(info_juridico)
    find("#cep0").set info_juridico["cep"]
    find("#adress0").click
    sleep 1
    find("#adress0").set info_juridico["endereco_jur"]
    find("#number0").set info_juridico["numero"]
    find("#free0").set info_juridico["complemento"]
    find("#neighborhoods0").set info_juridico["bairro"]
  end

  #------------------------------------------------------------
  #---------------------------Diretores------------------------
  def diretor_juri(info_juridico)
    find(".pull-left input[name=name]").set info_juridico["nome_dir"]
    find(".pull-left input[name=cpf_cnpj]").set info_juridico["cpf_dir"]
    find(".pull-left .rg_ie").set info_juridico["rg_dir"]
    find(".pull-left  input[name=emitter_body]").set info_juridico["orgao_emissor_dir"]
    find(".pull-left  input[name=date_emitter]").set info_juridico["data_emissao_dir"]
    find(".pull-left  input[name=birth_date]").set info_juridico["data_nas_dir"]
    find(".pull-left  input[name=profession]").set info_juridico["profissao_dir"]
    find(".pull-left  input[name=nationality]").set info_juridico["nacionalidade_dir"]
    find(".pull-left  input[name=phone]").set info_juridico["telefone_dir"]

    civil_jur = find("select[name='marital_status']")
    state_civil = civil_jur.find("option", text: info_juridico["estado_civil_dir"])
    state_civil.select_option

    find("input[name=marriage_date]").set info_juridico["data_cas_dir"]

    regime = find("select[name=marriage_system]")
    marriag_regime = regime.find("option", text: info_juridico["regime_cas_dir"])
    marriag_regime.select_option
  end

  #------------------------------------------------------------
  #-------------------importação de Documento------------------
  def doc_juri(info_juridico)
    rel_path_jur = "features/support/docs/" + info_juridico["documento_jur"]
    doc_file = File.join(Dir.pwd, rel_path_jur)

    attach_file("uploadFiles", doc_file)

    find("input[name=filenickname_0]").set info_juridico["nome_arquivo"]
    find("input[name=filedescription_0]").set info_juridico["descricao_arquivo"]
  end

  #------------------------------------------------------------

end
