Dado("que acesso a página de cadastro de imobiliária") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_imobiliaria
  @pag_imobiliaria.nova_imobiliaria
end

Dado("que tenhos os dados da imobiliária") do |table|
  @dados_iniciais = table.hashes.first
  @pag_imobiliaria.iniciais(@dados_iniciais)
end

Então("devo preencher todos os dados complementares") do |table|
  @dados_complementares = table.hashes.first
  @pag_imobiliaria.complementares(@dados_complementares)
end

Então("devo ver alerta de sucesso {string}") do |alerta|
  expect(alerta).to have_text alerta
end

Quando("eu faço o pré-cadastro dessa imoboliária") do
  @pag_imobiliaria.salvando_imobiliaria
end

Quando("preencher os dados complementares devo preencher as permissões") do |permission_table|
  permissao = permission_table.hashes.first
  @pag_imobiliaria.permissao(@permissao)
  @pag_imobiliaria.salvando_imobiliaria
  sleep 6
end
