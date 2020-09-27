Dado("que acesso à página principal") do
  @pag_login.visitar
end

Quando("eu submeto minhas credenciais {string}, {string} e {string}") do |empresa, usuario, senha|
  @pag_login.dados_login(empresa, usuario, senha)
end

Então("devo ser autenticado") do
  expect(@pag_empreendimento.usuario_logado).to have_text "EMPRESA MODELO"
end

Então("devo ver a mesnagem {string}") do |alerta_esperado|
  expect(@pag_login.alerta).to eql alerta_esperado
end
