Dado("que tenhos os dados da tabela SACOC") do |table|
  @sacoc = table.hashes.first
  @pag_sacoc.tabela_sacoc(@sacoc)
end
