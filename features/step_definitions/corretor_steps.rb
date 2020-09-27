Dado("que acesso a página de imobiliária") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_imobiliaria
end

Dado("que tenho os dados do corretor tipo fisíco") do |table|
  @pag_corretor.novo_corretor
  @dados_iniciais = table.hashes.first
  @pag_corretor.iniciais_fis(@dados_iniciais)
end

Dado("que tenho os dados do corretor tipo jurídico") do |table|
  @pag_corretor.novo_corretor
  @dados_iniciais = table.hashes.first
  @pag_corretor.iniciais_jur(@dados_iniciais)
end

Então("devo acessar a tela de cadastro de corretores") do
  @pag_corretor.corretores
end

Então("devo preencher todos os dados complementares do corretor") do |table|
  @dados_complementares = table.hashes.first
  @pag_corretor.complementares(@dados_complementares)
end

Quando("realiza o filtro da imobiliária") do |table|
  @filtro_imob = table.hashes.first
  @pag_corretor.filtrando_imobiliaria(@filtro_imob)
end

Quando("tenhos a permissões do corretor") do |table|
  @permissoes = table.hashes.first
  @pag_corretor.permissao(@permissoes)
  @pag_corretor.salvando_corretor
end

Quando("faço o pré-cadastro deste corretor") do
  @pag_corretor.salvando_corretor
end
