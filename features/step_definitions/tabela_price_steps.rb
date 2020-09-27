Dado("que tenho os dados da tabela price") do |table|
  @price = table.hashes.first
  @pag_price.tabela_price(@price)
end

Dado("que tenho os dados da tabela price contendo Balão") do |price_ballon|
  @price_balao = price_ballon.hashes.first
  @pag_price.tabela_price_balao(@price_balao)
end

Dado("que tenho os dados da tabela price contendo Final") do |price_final|
  @price_final = price_final.hashes.first
  @pag_price.tabela_price_final(@price_final)
end

Dado("que tenho os dados da tabela price contendo Balão e Final") do |price_balao_final|
  @price_bal_fin = price_balao_final.hashes.first
  @pag_price.tabela_price_balao_final(@price_bal_fin)
end

Quando("faço o cadastro da dessa tabela") do
  @pag_price.salvando_price
end
