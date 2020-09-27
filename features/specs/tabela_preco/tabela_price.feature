#language:pt

            Funcionalidade: Cadastrar Tabela de Preço PRICE
            Para que eu possa lançar uma proposta preciso cadastrar o tipo de tabela de preço
            Sendo um usuário do financeiro
            Posso cadastrar a tabela de preço price

            @auth @smoke
            Cenario: Cadastrar Tabela de Preço Price não contendo parcela Balão e Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela price
            | nome_tabela  | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | porc_tipo_taxa | porc_taxa_adi |
            | Tabela Price | PRICE       | SIM          | 2000     | 6       | 150     | SIM          | NÃO        | NÃO        | Mensal    | 095000         | 10000         |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth
            Cenario: Cadastrar Tabela de Preço Price contendo parcela Balão

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela price contendo Balão
            | nome_tabela            | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | porc_tipo_taxa | porc_taxa_adi |
            | Tabela Price com Balão | PRICE       | SIM          | 2000     | 6       | 150     | SIM          | SIM        | NÃO        | Mensal    | 095000         | 10000         |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth
            Cenario: Cadastrar Tabela de Preço Price contendo parcela Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela price contendo Final
            | nome_tabela        | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | porc_tipo_taxa | porc_taxa_adi |
            | Tabela Price Final | PRICE       | SIM          | 2000     | 6       | 150     | SIM          | NÃO        | SIM        | Mensal    | 095000         | 10000         |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth
            Cenario: Cadastrar Tabela de Preço Price contendo parcela Balão e Final

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenho os dados da tabela price contendo Balão e Final
            | nome_tabela                    | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | porc_tipo_taxa | porc_taxa_adi |
            | Tabela Price com Balão e Final | PRICE       | SIM          | 2000     | 6       | 150     | SIM          | SIM        | SIM        | Mensal    | 095000         | 10000         |
            Quando faço o cadastro da dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"