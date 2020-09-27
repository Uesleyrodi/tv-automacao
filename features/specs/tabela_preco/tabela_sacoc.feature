#language:pt

    Funcionalidade: Cadastrar Tabela de Preço SACOC
            Para que eu possa lançar uma proposta preciso cadastrar o tipo de tabela de preço
            Sendo um usuário do financeiro
            Posso cadastrar a tabela de preço SACOC

            @auth @smoke
            Cenario: Cadastrar Tabela de Preço SACOC 6% de juros

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenhos os dados da tabela SACOC
            | nome_tabela     | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | taxa_efetivo |
            | Tabela SACOC 6% | SACOC       | SIM          | 1000     | 6       | 150     | SIM          | NÃO        | NÃO        | Anual     | 600000       |
            Quando faço o cadastro dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"

            @auth @smoke
            Cenario: Cadastrar Tabela de Preço SACOC 12% de juros

            Dado que acesso a página de cadastro de tabela de preço
            Dado que tenhos os dados da tabela SACOC
            | nome_tabela      | tipo_tabela | tabela_ativa | porc_ent | qtd_ent | qtd_nor | diminuir_ent | parc_balao | parc_final | tipo_taxa | taxa_efetivo |
            | Tabela SACOC 12% | SACOC       | SIM          | 1000     | 6       | 150     | SIM          | NÃO        | NÃO        | Anual     | 1200000      |
            Quando faço o cadastro dessa tabela
            Então devo ver mensagem de sucesso "Tabela de Preço adicionada com sucesso!"