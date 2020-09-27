#language:pt

            Funcionalidade: Cadastro de Cliente
            Para que eu possa lançar uma proposta preciso cadastrar um cliente
            Sendo um usuário do comercial
            Posso importar a planilha com os compradores

            @auth @smoke 
            Cenario: Novo cliente físico

            Dado que eu tenho as seguintes informações tipo física:
            | tipo_pessoa | nome                 | tel_residencial | tel_celular     | tel_comercial  | email                                | contato |
            | Fisica      | Lucílio Soeiro Paiva | (14) 3406-3240  | (14) 99855-2538 | (14) 3406-3240 | uesley.santos@queroterravista.com.br | Lucílio |
            Quando eu faço o pré-cadastro desse cliente físico
            Então devo preencher todos os dados complementares física:
            | rg           | orgao_emissor | data_de_emissao | cpfcnpj        | data_de_nascimento | naturalidade | cidade | profissao         | empresa    | nacionalidade | nome_do_pai        | nome_da_mae           | estado_civil | regime_casamento         | data_casamento | observacao                                         | cep      | endereco                       | numero | complemento | bairro      | nome_con               | cpf_cnpj_con   | rg_con       | orgao_con | data_emissao_con | data_nascimento_con | profissao_con | nacionalidade_con | tel_con        | nome_pai_con         | nome_mae_con        | documento   | nome_arquivo                      | descricao_arquivo                                                        |
            | 16.516.245-4 | SSP           | 21122012        | 406.594.130-00 | 28101996           | São Paulo    | GARCA  | Analista de Teste | Terravista | Brasileiro    | Cauê Jesus Azevedo | Jurema Cintra Azevedo | Casado(a)    | Comunhão parcial de bens | 20012020       | Lorem Ipsum é simplesmente uma simulação de texto. | 17400000 | Avenida Vereador Olivio Turato | 340    | Casa        | Monte Verde | Elisabete Curado Paiva | 618.209.380-34 | 19.814.453-2 | SSP       | 13112000         | 13111992            | Vendedora     | Brasileira        | (14) 3406-3240 | Dirceu Méndez Juruna | Olívia Diniz Juruna | img_fis.png | Documento de comprovação de renda | Esse documento é necessário para comprovar renda para a compra do imóvel |
            Então devo ver esse cliente físico na lista

            @auth @smoke
            Cenario: Novo cliente jurídico

            Dado que eu tenho as seguintes informações tipo jurídica:
            | tipo_pessoa | razao_social                         | nome_fantasia                        | tel_residencial | tel_celular     | tel_comercial  | email                                | contato                        |
            | Jurídica    | Renata e Luiza Telecomunicações Ltda | Renata e Luiza Telecomunicações Ltda | (14) 3406-3240  | (14) 99855-2538 | (14) 3406-3240 | uesley.santos@queroterravista.com.br | Renata e Luiza Telecomunicação |
            Quando eu faço o pré-cadastro desse cliente juridico
            Então devo preencher todos os dados complementares juridico:
            | inscricao_estadual | cpf_cnpj       | naturalidade | cidade | profissao      | empresa                              | nacionalidade | nome_pai           | nome_mae             | estado_civil | regime_casamento         | data_casamento | observacao                                         | cep       | endereco_jur              | numero | complemento | bairro                | nome_dir               | cpf_dir        | rg_dir    | orgao_emissor_dir | data_emissao_dir | data_nas_dir | profissao_dir | nacionalidade_dir | telefone_dir    | estado_civil_dir | data_cas_dir | regime_cas_dir           | documento_jur | nome_arquivo                      | descricao_arquivo                                                        |
            | 62885770           | 75810442000100 | São Paulo    | GARCA  | Sócio Fundador | Renata e Luiza Telecomunicações Ltda | Brasileiro    | Cauê Álvarez Terra | Marlene Pinhal Terra | Casado(a)    | Comunhão parcial de bens | 08062000       | Lorem Ipsum é simplesmente uma simulação de texto. | 17400-000 | Av Vereador Olivio Turato | 5002   | Avenida     | Jardim dos Eucaliptos | Dirceu Mourinho Coelho | 829.068.700-13 | 478672792 | SSP               | 21122012         | 28101996     | Fundador      | Brasileiro        | (14) 99855-2538 | Casado(a)        | 20012006     | Comunhão parcial de bens | img_jur.jpg   | Documento de comprovação de renda | Esse documento é necessário para comprovar renda para a compra do imóvel |
            Então devo ver esse cliente juridico na lista