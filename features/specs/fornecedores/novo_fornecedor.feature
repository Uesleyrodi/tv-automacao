#language:pt

            Funcionalidade: Adicioando novo Fornecedor
            Para que eu possa cadastrar meus fornecedores;
            Sendo um usuário autorizante ou com permissão;
            Posso adicionar meus fornecedores no sistema.

            @auth @smoke
            Cenario: Novo fornecedor tipo físico

            Dado que possa acessar a tela de cadastro de fornecedor
            Quando tenho os dados do fornecedor físico:
            | tipo_pessoa | nome                   | tel_residencial | tel_celular | tel_comercial | email                                | rg        | orgao_emissor | data_emissao | cpf_cnpj    |
            | Fisica      | Contabilidade Teixeira | 48765555550     | 48932258104 | 48765555550   | uesley.santos@queroterravista.com.br | 158764584 | SSP/SP        | 21122012     | 89844530130 |
            Quando eu faço o pré-cadastro deste fornecedor
            Quando preencho os dados complementares físico:
            | data_nascimento | logo_marca            | atividade                                                                                                                                                    | cep       | numero | complemento | cep_cobranca | num_cobranca | complemento_cobranca |
            | 13111992        | fornecedor_fisica.png | Atividades de contabilidade, consultoria e auditoria contábil e tributária. O registro contábil das transações comerciais de empresas e de outras entidades. | 05159-090 | 219    | 1ª Andar    | 13098-035    | 427          | 4º Andar            |
            Quando salvo este fornecedor
            Então devo ver fornecedor físico na lista


            @auth @smoke
            Cenario: Novo fornecedor tipo jurídico

            Dado que possa acessar a tela de cadastro de fornecedor
            Quando tenho os dados do fornecedor jurídico:
            | tipo_pessoa | razao_social                     | nome_fantasia                    | tel_residencial | tel_comercial | tel_comercial | email                                | inscricao_estadual | cpf_cnpj       |
            | Jurídica    | Leandro e Martin Eletrônica Ltda | Leandro e Martin Eletrônica Ltda | 1236746954      | 12998522958   | 1236746954    | uesley.santos@queroterravista.com.br | 920.208.690.011    | 10344261000182 |
            Quando eu faço o pré-cadastro deste fornecedor
            Quando preencho os dados complementares jurídico:
            | logo_marca              | atividade                                                                                                                                                                                                                              | cep       | numero | complemento | cep_cobranca | num_cobranca | complemento_cobranca |
            | fornecedor_juridica.png | A empresa Atividades Seguranca Eletronica Ltda, aberta em 07/08/2007, é uma MATRIZ do tipo Sociedade Empresária Limitada que está situada em Juiz de Fora – MG. Sua atividade econômica principal é Instalação e manutenção elétrica. | 11070-210 | 365    | 1º Andar    | 15093-240    | 327          | 2º Andar             |
            Quando salvo este fornecedor
            Então devo ver fornecedor jurídico na lista

            @auth @smoke
            Cenario: Cadastro de fornecedor duplicado

            Dado que possa acessar a tela de cadastro de fornecedor
            Quando tenho os dados do fornecedor jurídico:
            | tipo_pessoa | razao_social                     | nome_fantasia                    | tel_residencial | tel_comercial | tel_comercial | email                                | inscricao_estadual | cpf_cnpj       |
            | Jurídica    | Leandro e Martin Eletrônica Ltda | Leandro e Martin Eletrônica Ltda | 1236746954      | 12998522958   | 1236746954    | uesley.santos@queroterravista.com.br | 920.208.690.011    | 10344261000182 |
            Quando eu faço o pré-cadastro deste fornecedor
            Então devo ver a mensagem "Já existe alguém com esse CPF/CNPJ cadastrado em nosso sistema."
