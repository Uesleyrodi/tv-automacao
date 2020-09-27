Dado("que acesso a tela de novo empreendimento") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.menu_empreendimento
  @pag_novo_empreendimento.novo_empreendimento
end

Quando("tenho os dados do novo empreendimento") do |table|
  @dados = table.hashes.first
  @pag_novo_empreendimento.dados_iniciais(@dados)
end

Quando("salvo este novo empreendimento") do
  @pag_novo_empreendimento.salvando_empreendimento
  sleep 2
end

Quando("tenhos os dados do novo empreendimento sem CNPJ") do |table|
  @dados_cnpj = table.hashes.first
  @pag_novo_empreendimento.dados_cnpj(@dados_cnpj)
end

Quando("salvar devo ver mensagem de erro {string}") do |string|
  alerta = string
  tr = @pag_novo_empreendimento.checando_mensagem(alerta)
  expect(tr).to have_text alerta
end

Quando("salvar devo ver alerta do campo CNPj {string}") do |cnpj|
  checando_cnpj = cnpj
  tr = @pag_novo_empreendimento.checando_campo(checando_cnpj)
  expect(tr).to have_text checando_cnpj
end

Quando("tenho os dados do novo empreendimento sem unidades") do |table|
  @dados_unidades = table.hashes.first
  @pag_novo_empreendimento.dados_unidades(@dados_unidades)
end

Quando("salvar devo ver alerta do campo Unidades {string}") do |unidade|
  checando_unidade = unidade
  tr = @pag_novo_empreendimento.checando_campo(checando_unidade)
  expect(tr).to have_text checando_unidade
end

Então("devo ver {string} na tela de empreendimento") do |nome_empreendimento|
  @pag_menu.menu_empreendimento_novo
  expect(nome_empreendimento).to have_text nome_empreendimento
end
