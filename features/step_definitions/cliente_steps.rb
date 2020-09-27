Dado("que eu tenho as seguintes informações tipo física:") do |dados_fisicos|
  @pag_empreendimento.clicando_empreendimento
  @cliente_fisico = dados_fisicos.hashes.first
end

Dado("que eu tenho as seguintes informações tipo jurídica:") do |dados_juridicos|
  @pag_empreendimento.clicando_empreendimento
  @cliente_juridico = dados_juridicos.hashes.first
end

Quando("eu faço o pré-cadastro desse cliente físico") do
  @pag_menu.submenu_cliente
  @pag_cliente.pre_cadastro
  @pag_cliente.pre_fisico(@cliente_fisico)
end

Quando("eu faço o pré-cadastro desse cliente juridico") do
  @pag_menu.submenu_cliente
  @pag_cliente.pre_cadastro
  @pag_cliente.pre_juridico(@cliente_juridico)
end

Então("devo preencher todos os dados complementares física:") do |dados_fisicos|
  @info_fisico = dados_fisicos.hashes.first
  @pag_cliente.criando_fisico(@info_fisico)
  @pag_cliente.salvando_cliente
end

Então("devo preencher todos os dados complementares juridico:") do |dados_juridicos|
  @info_juridico = dados_juridicos.hashes.first
  @pag_cliente.criando_juridico(@info_juridico)
  @pag_cliente.salvando_cliente
end

Então("devo ver esse cliente físico na lista") do
  @pag_menu.submenu_cliente
  @pag_componentes.filtro(@cliente_fisico["nome"])
  tr = @pag_componentes.obter_tr(@cliente_fisico["nome"])
  expect(tr).to have_text @cliente_fisico["nome"]
  expect(tr).to have_text @cliente_fisico["email"]
end

Então("devo ver esse cliente juridico na lista") do
  @pag_menu.submenu_cliente
  @pag_componentes.filtro(@cliente_juridico["razao_social"])
  tr = @pag_componentes.obter_tr(@cliente_juridico["razao_social"])
  expect(tr).to have_text @cliente_juridico["razao_social"]
  expect(tr).to have_text @cliente_juridico["email"]
end
