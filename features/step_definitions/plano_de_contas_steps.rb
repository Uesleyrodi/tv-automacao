Dado("que possa acessar a tela de plano de contas") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_plano_de_contas
end

Quando("seleciono para adicionar em receita") do
  @pag_plano_de_contas.novo_plano_de_contas_receita
end

Quando("tenho os dados do plano de conta:") do |table|
  @dados_nota_fiscal = table.hashes.first
  @pag_plano_de_contas.dados_nota_fiscal(@dados_nota_fiscal)
end

Quando("salvo este plano de contas") do
  @pag_plano_de_contas.salvando_plano_de_contas
end

Então("devo ver mesnagem de êxito {string}") do |string|
  alerta_sucesso = string
  expect(alerta_sucesso).to have_text alerta_sucesso
  @pag_plano_de_contas
end
