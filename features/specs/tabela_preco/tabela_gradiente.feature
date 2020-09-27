#language:pt

            Funcionalidade: Cadastrar Tabela de Gradiente
            Para que eu possa lançar uma proposta preciso cadastrar o tipo de tabela de preço
            Sendo um usuário do financeiro
            Posso cadastrar a tabela de preço gradiente

            @auth @smoke
            Cenario: Cadastrar tabla de preço gradiente não contendo balão e final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela gradiente
            | nome_tabela      | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | taxa_efetivo | porc_desconto |
            | Tabela Gradiente | GRADIENTE   | SIM          | 1500     | 8       | 120     | SIM          | NÃO        | NÃO        | Mensal    | 100000       | 30,00000      |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"