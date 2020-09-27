Dado("que acesso a página de proposta para que eu possa cadastrar uma nova") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.proposals_menu
  @pag_proposta.nova_proposta
end

Quando("adiciono os compradores adicionais:") do |buyers|
  buyers_additional = buyers.hashes
  @pag_proposta.additional_buyers_price(buyers_additional)
end

Quando("salvar esta proposta") do
  @pag_proposta.salvando_proposta
  sleep 5
end

Quando("tenho as informações desta proposta com PRICE:") do |price|
  @proposta_price = price.hashes.first
  @pag_proposta.proposta_price(@proposta_price)
end

Quando("tenho as informações desta proposta com FIXA:") do |fixa|
  @proposal_fixed = fixed.hashes.first
  @pag_proposta.proposta_fixa(@proposal_fixed)
end

Quando("tenho as informações desta proposta PRICE com Balão e Final") do |price_ballon_final|
  @proposal_ball_fin = price_ballon_final.hashes.first
  @pag_proposta.proposta_price_bal_fin(@proposal_ball_fin)
end

Quando("tenho as informações desta proposta FIXA com Balão e Final") do |fixed|
  @fixed_ballon_final = fixed.hashes.first
  @pag_proposta.create_fixed_ball_fin(@fixed_ballon_final)
end

Quando("tenho as informações desta proposta SACOC") do |table|
  @sacoc = table.hashes.first
  @pag_proposta.create_sacoc(@sacoc)
end

Então("devo ver a proposta Price na lista") do
  @pag_componentes.pesquisa_comprador(@proposta_price["imovel"])
  tr = @pag_componentes.obter_tr(@proposta_price["imovel"])
  expect(tr).to have_text @proposta_price["imovel"]
  expect(tr).to have_text @proposta_price["comprador"]
end

Então("devo ver a proposta Fixa na lista") do
  @pag_componentes.pesquisa_comprador(@proposal_fixed["imovel"])
  tr = @pag_componentes.obter_tr(@proposal_fixed["imovel"])
  expect(tr).to have_text @proposal_fixed["imovel"]
  expect(tr).to have_text @proposal_fixed["comprador"]
end

Então("devo ver a proposta Price com Balão e Final") do
  @pag_componentes.pesquisa_comprador(@proposal_ball_fin["imovel"])
  tr = @pag_componentes.obter_tr(@proposal_ball_fin["imovel"])
  expect(tr).to have_text @proposal_ball_fin["imovel"]
  expect(tr).to have_text @proposal_ball_fin["comprador"]
end

Então("devo ver a proposta Fixa com Balão e Final") do
  @pag_componentes.pesquisa_comprador(@fixed_ballon_final["imovel"])
  tr = @pag_componentes.obter_tr(@fixed_ballon_final["imovel"])
  expect(tr).to have_text @fixed_ballon_final["imovel"]
  expect(tr).to have_text @fixed_ballon_final["comprador"]
end

Então("devo a proposta Sacoc na lista") do
  @pag_componentes.pesquisa_comprador(@sacoc["imovel"])
  tr = @pag_componentes.obter_tr(@sacoc["imovel"])
  expect(tr).to have_text @sacoc["imovel"]
  expect(tr).to have_text @sacoc["comprador"]
end
