Dado("que acesso a página de importação") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_import_imovel
end

Quando("seleciono a planilha de importação") do |planilha_unidades|
  @unidades = planilha_unidades.hashes.first
  @pag_importar_unidades.importando_unidades(@unidades)
end

Quando("faço a importação dessa planilha") do
  @pag_importar_unidades.confirmar_importacao
end

Então("devo ver as unidades na grid") do |table|
  @checando = table.hashes.first
  tr_tipo = @pag_componentes.obter_tr(@checando["tipo"])
  tr_quadra = @pag_componentes.obter_tr(@checando["quadra"])
  tr_lote = @pag_componentes.obter_tr(@checando["lote"])
  tr_descricao = @pag_componentes.obter_tr(@checando["descricao_imovel"])
  tr_metros_quadrados = @pag_componentes.obter_tr(@checando["metros_quadrados"])
  expect(tr_tipo).to have_text @checando["tipo"]
  expect(tr_quadra).to have_text @checando["quadra"]
  expect(tr_lote).to have_text @checando["lote"]
  expect(tr_descricao).to have_text @checando["descricao_imovel"]
  expect(tr_metros_quadrados).to have_text @checando["metros_quadrados"]
end

Então("devo ver mensagem de {string}") do |alert|
  alerta_sucesso = alert
  @pag_importar_unidades.alerta_sucesso
  expect(alerta_sucesso).to have_text alerta_sucesso
  @pag_importar_unidades.fechando_alerta
end
