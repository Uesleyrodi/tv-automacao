Dado("que acesso a tela do contas a receber") do
  @pag_empreendimento.clicando_empreendimento
  @pag_menu.submenu_contas_receber
  @pag_contas_receber.nova_contas_receber
end

#------------------NF-Nota_Fiscal------------------
Quando("tenho os dados da nota fiscal") do |table|
  @dados_parcela_nf = table.hashes.first
  @pag_contas_receber.dados_nf(@dados_parcela_nf)
end
#--------------------------------------------------

#------------------CT-Contrato------------------
Quando("tenho os dados do contrato") do |table|
  @dados_parcela_ct = table.hashes.first
  @pag_contas_receber.dados_ct(@dados_parcela_ct)
end
#-----------------------------------------------

#--------------NP-Nota Promissória---------------
Quando("tenho os dados da nota promissória") do |table|
  @dados_parcela_np = table.hashes.first
  @pag_contas_receber.dados_np(@dados_parcela_np)
end
#-----------------------------------------------

#--------------NP-Nota Promissória---------------
Quando("tenho os dados da nota de serviço") do |table|
  @dados_parcela_ns = table.hashes.first
  @pag_contas_receber.dados_ns(@dados_parcela_ns)
end
#-----------------------------------------------

#------------------OU-Outros--------------------
Quando("tenho os dados da outros") do |table|
  @dados_parcela_ou = table.hashes.first
  @pag_contas_receber.dados_ou(@dados_parcela_ou)
end
#-----------------------------------------------

Quando("cadastro essa conta") do
  @pag_contas_receber.salvando_contas_receber
  sleep 5
end

Então("devo filtrar esta conta") do |table|
  @filtrar_dados = table.hashes.first
  @pag_contas_receber.filtro_conta(@filtrar_dados)
  @pag_contas_receber.pesquisar
end

Então("devo ver a parcela nota fiscal na lista") do |table|
  @checando_nf = table.hashes.first
  cliente_nf = @pag_componentes.obter_tr(@checando_nf["cliente"])
  identificacao_nf = @pag_componentes.obter_tr(@checando_nf["identificacao"])
  forma_pagamento_nf = @pag_componentes.obter_tr(@checando_nf["form_pagamneto"])
  data_venc_nf = @pag_componentes.obter_tr(@checando_nf["data_venc"])
  valor_nf = @pag_componentes.obter_tr(@checando_nf["valor"])
  expect(cliente_nf).to have_text @checando_nf["cliente"]
  expect(identificacao_nf).to have_text @checando_nf["identificacao"]
  expect(forma_pagamento_nf).to have_text @checando_nf["form_pagamneto"]
  expect(data_venc_nf).to have_text @checando_nf["data_venc"]
  expect(valor_nf).to have_text @checando_nf["valor"]
end

Então("devo ver a parcela contrato na lista") do |table|
  @checando = table.hashes.first
  cliente_ct = @pag_componentes.obter_tr(@checando["cliente"])
  identificacao_nf = @pag_componentes.obter_tr(@checando["identificacao"])
  forma_pagamento_ct = @pag_componentes.obter_tr(@checando["form_pagamneto"])
  data_venc_ct = @pag_componentes.obter_tr(@checando["data_venc"])
  valor_ct = @pag_componentes.obter_tr(@checando["valor"])
  expect(cliente_ct).to have_text @checando["cliente"]
  expect(identificacao_nf).to have_text @checando["identificacao"]
  expect(forma_pagamento_ct).to have_text @checando["form_pagamneto"]
  expect(data_venc_ct).to have_text @checando["data_venc"]
  expect(valor_ct).to have_text @checando["valor"]
end
