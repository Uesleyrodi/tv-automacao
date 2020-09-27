Dado("que acesso a página de cadastro de tabela de preço") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.menu_tabela_preco
  @pag_fixa.nova_tabela
end

Dado("que tenho os dados da tabela fixa") do |fixa|
  @fixa = fixa.hashes.first
  @pag_fixa.tabela_fixa(@fixa)
end

Dado("que tenho os dados da tabela fixa contendo Balão") do |balao|
  @fixa_balao = balao.hashes.first
  @pag_fixa.tabela_fixa_balao(@fixa_balao)
end

Dado("que tenho os dados da tabela fixa contendo Final") do |final|
  @fixa_final = final.hashes.first
  @pag_fixa.tabela_fixa_final(@fixa_final)
end

Dado("que tenho os dados da tabela fixa contendo Balão e Final") do |balao_final|
  @fixa_balao_final = balao_final.hashes.first
  @pag_fixa.tabela_fixa_balao_final(@fixa_balao_final)
end

Quando("faço o cadastro dessa tabela") do
  @pag_fixa.salvando_tabela
end

Então("devo ver mensagem de sucesso {string}") do |alert|
  alerta_sucesso = alert
  expect(alerta_sucesso).to have_text alerta_sucesso
  @pag_fixa.fechando_alerta
end
