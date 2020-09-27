Dado("acesso a tela de configuração do empreendimento") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_edt_empreendimnto
end

Dados("que tenhos as imagens do empreendimento") do |table|
  @imagens = table.hashes.first
  @pag_editar_empreendimento.imagens_config(@imagens)
  @pag_editar_empreendimento.salvando_config
  @pag_editar_empreendimento.fechando_importacao
end

Quando("tenhos todos os dados a serem alterados") do |dados|
  @dados_empreendimento = dados.hashes.first
  @pag_editar_empreendimento.dados_gerais(@dados_empreendimento)
end

Quando("salvo essas informações") do
  @pag_editar_empreendimento.salvando_config
end

Então("devo ver mesnsagem {string}") do |string|
  alerta_sucesso = string
  tr = @pag_editar_empreendimento.checando_mensagem(alerta_sucesso)
  expect(tr).to have_text alerta_sucesso
end
