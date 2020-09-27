Dado("que tenho os dados da tabela gradiente") do |table|
  @gradiente = table.hashes.first
  @pag_gradiente.tabela_gradiente(@gradiente)
end
