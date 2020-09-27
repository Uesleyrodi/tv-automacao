Before do
  page.current_window.resize_to(1600, 1024)

  @pag_login = Login.new
  @pag_empreendimento = Empreendimento.new
  @pag_menu = Menu.new
  @pag_componentes = Componentes.new
  @pag_cliente = Cliente.new
  @pag_importar_cliente = ImportarCliente.new
  @pag_importar_unidades = ImportarUnidades.new
  @pag_fixa = TabelaFixa.new
  @pag_price = TabelaPrice.new
  @pag_sacoc = TableSACOC.new
  @pag_gradiente = TabelaGradiente.new
  @pag_imobiliaria = Imobiliaria.new
  @pag_corretor = Corretor.new
  @pag_proposta = Proposta.new
  @pag_cargo = Cargo.new
  @pag_editar_empreendimento = EditarEmpreendimento.new
  @pag_novo_empreendimento = NovoEmpreendimento.new
  @pag_contas_receber = NovoContasReceber.new
  @pag_fornecedor = Fornecedor.new
  @pag_plano_de_contas = PlanoContas.new
end

Before("@auth") do
  @pag_login = Login.new
  @pag_login.visitar
  @pag_login.dados_login("129", "suporte", "m2supcorpm2")
  @pag_empreendimento.usuario_logado
end
