Dado("que eu tenho a planilha de importação:") do |tabela_importacao|
  @pag_empreendimento.clicando_empreendimento
  @importar_cliente = tabela_importacao.hashes.first
  @pag_menu.submenu_cliente
end

Quando("eu faço a importação dessa planilha") do
  @pag_importar_cliente.importar(@importar_cliente)
end

Então("devo ver mesnagem {string}") do |notificacao|
  expect(notificacao).to have_text notificacao
  @pag_importar_cliente.fechar_importacao
end

Então("devo ver cliente importado na grid:") do |importacao|
  importacao_cliente = importacao.hashes.first
  @pag_menu.submenu_cliente
  @pag_componentes.filtro(importacao_cliente["nome"])
  name_import = importacao_cliente["nome"]
  expect(name_import).to have_text importacao_cliente["nome"]
end
