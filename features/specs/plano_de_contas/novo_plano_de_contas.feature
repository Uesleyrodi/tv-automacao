#language:pt

            Funcionalidade: Novo plano de Contas
            Para que eu possa cadastr meus planos de contas;
            Sendo um usuário autorizante ou com permissão;
            Posso adicionar meus plano de contas.

            @auth @smoke @doing
            Cenario: Novo plano de contas de receita

            Dado que possa acessar a tela de plano de contas
            Quando seleciono para adicionar em receita
            Quando tenho os dados do plano de conta:
            | nome        | descricao                                                                          | listar_no_financeiro       | variavel_fixa | resultado_analitico | insumo | Fase | ativo |
            | Nota Fiscal | Este plano de contas irá receber todas as parcelas Nota Fiscal do contas a receber | Listar no Contas a Receber | Fixa          | SIM                 | SIM    | SIM  | SIM   |
            Quando salvo este plano de contas
            Então devo ver mesnagem de êxito "Gravação efetuada com sucesso."