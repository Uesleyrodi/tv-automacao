#language:pt

            Funcionalidade: Cadastrar Tabela de Preço FIXA
            Para que eu possa lançar uma proposta preciso cadastrar o tipo de tabela de preço
            Sendo um usuário do financeiro
            Posso cadastrar a tabela de preço fixa

            @auth @smoke
            Cenario: Cadastrar Tabela de Preço Fixa não contendo parcela Balão e Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela fixa
            | nome_tabela | tipo_tabela | preco_imovel | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final |
            | Tabela Fixa | FIXO        | À Vista      | SIM          | 1000     | 6       | 150     | SIM          | NÃO        | NÃO        |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth
            Cenario: Cadastrar Tabela de Preço Fixa contendo parcela Balão

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela fixa contendo Balão
            | nome_tabela           | tipo_tabela | preco_imovel | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final |
            | Tabela Fixa com Balão | FIXO        | À Vista      | SIM          | 1000     | 6       | 150     | SIM          | SIM        | NÃO        |
            Quando faço o cadastro dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth
            Cenario: Cadastrar Tabela de Preço Fixa contendo parcela Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela fixa contendo Final
            | nome_tabela       | tipo_tabela | preco_imovel | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final |
            | Tabela Fixa Final | FIXO        | À Vista      | SIM          | 1000     | 6       | 150     | SIM          | NÃO        | SIM        |
            Quando faço o cadastro dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth @smoke
            Cenario: Cadastrar Tabela de Preço Fixa contendo parcela Balão e Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela fixa contendo Balão e Final
            | nome_tabela                   | tipo_tabela | preco_imovel | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final |
            | Tabela Fixa com Balão e Final | FIXO        | À Vista      | SIM          | 1000     | 6       | 150     | SIM          | SIM        | SIM        |
            Quando faço o cadastro dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"