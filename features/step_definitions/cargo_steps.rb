Dado("que acessa a tela de cargo") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_cargo
  @pag_cargo.novo_cargo
end

Quando("tenhos os dados do cargo Adminstrativo:") do |dados_adm|
  @dados_admistrativo = dados_adm.hashes.first
  @pag_cargo.cargo_administrativo(@dados_admistrativo)
end

Quando("tenho os dados das parmissões do Adminstrativo:") do |permissoes|
  @pag_cargo.permissoes
  @permissoes_adm = permissoes.hashes.first
  @pag_cargo.permissao_administrativo(@permissoes_adm)
end

Quando("tenhos os dados do cargo Comercial:") do |dados_com|
  @dados_comercial = dados_com.hashes.first
  @pag_cargo.cargo_comercial(@dados_comercial)
end

Quando("tenho os dados das parmissões do Comercial:") do |permissoes|
  @pag_cargo.permissoes
  @permissoes_com = permissoes.hashes.first
  @pag_cargo.permissoes_comercial(@permissoes_com)
end

Quando("tenhos os dados do cargo Financeiro:") do |dados_fin|
  @dados_financeiro = dados_fin.hashes.first
  @pag_cargo.cargo_financeiro(@dados_financeiro)
end

Quando("tenho os dados das parmissões do Financeiro:") do |permissoes|
  @pag_cargo.permissoes
  @permissoes_fin = permissoes.hashes.first
  @pag_cargo.permissoes_financeiro(@permissoes_fin)
end

Quando("eu salvo esse cargo") do
  @pag_cargo.salvando_cargo
end

Então("devo a mensagem de {string}") do |string|
  alerta_sucesso = string
  expect(alerta_sucesso).to have_text alerta_sucesso
  @pag_cargo.fechando_alerta
end
