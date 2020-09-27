Dado("que possa acessar a tela de cadastro de fornecedor") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_fornecedores
  @pag_fornecedor.novo_fornecedor
end

Então("devo ver fornecedor físico na lista") do
  @pag_menu.menu_compras
  @pag_menu.submenu_fornecedores
  @pag_componentes.filtro(@dados_iniciais["nome"])
  obter_fornecedor = @pag_componentes.obter_tr(@dados_iniciais["nome"])
  expect(obter_fornecedor).to have_text @dados_iniciais["nome"]
  expect(obter_fornecedor).to have_text @dados_iniciais["email"]
end

Então("devo ver fornecedor jurídico na lista") do
  @pag_menu.menu_compras
  @pag_menu.submenu_fornecedores
  @pag_componentes.filtro(@dados_iniciais_jur["razao_social"])
  obter_fornecedor = @pag_componentes.obter_tr(@dados_iniciais_jur["razao_social"])
  expect(obter_fornecedor).to have_text @dados_iniciais_jur["nome"]
  expect(obter_fornecedor).to have_text @dados_iniciais_jur["email"]
end

Então("devo ver a mensagem {string}") do |string|
  alerta_cnpj = string
  expect(alerta_cnpj).to have_text alerta_cnpj
end

Quando("tenho os dados do fornecedor físico:") do |table|
  @dados_iniciais = table.hashes.first
  @pag_fornecedor.iniciais_fis(@dados_iniciais)
end

Quando("eu faço o pré-cadastro deste fornecedor") do
  @pag_fornecedor.salvando_fornecedor
end

Quando("preencho os dados complementares físico:") do |table|
  @dados_complementares = table.hashes.first
  @pag_fornecedor.complementares_fis(@dados_complementares)
end

Quando("salvo este fornecedor") do
  @pag_fornecedor.salvando_fornecedor
end

Quando("tenho os dados do fornecedor jurídico:") do |table|
  @dados_iniciais_jur = table.hashes.first
  @pag_fornecedor.iniciais_jur(@dados_iniciais_jur)
end

Quando("preencho os dados complementares jurídico:") do |table|
  @dados_complementares_jur = table.hashes.first
  @pag_fornecedor.complementares_jur(@dados_complementares_jur)
end
