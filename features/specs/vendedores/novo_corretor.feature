#language:pt

            Funcionalidade: Cadastrar de Corretores
            Para que eu possa lançar uma proposta contendo corretor
            Sendo um usuário autorizante ou admin
            Posso cadastrar a corretor tendo uma imobiliária cadastrada no sistema

            @auth @smoke
            Cenario: Cadastro de Corretor tipo fisico

            Dado que acesso a página de imobiliária
            Quando realiza o filtro da imobiliária
            | nome_imob           | email                                |
            | Inovart Imobiliária | uesley.santos@queroterravista.com.br |
            Então devo acessar a tela de cadastro de corretores
            Dado que tenho os dados do corretor tipo fisíco
            | tipo_pessoa | cpf         | nome_cor                            | email                                | tel_celular | tel_comercial | tel_residencial | login    |
            | Física      | 71723666033 | Cristian Borges Corretor de Imóveis | uesley.santos@queroterravista.com.br | 14998552538 | 1435214562    | 1434063256      | cristian |
            Quando faço o pré-cadastro deste corretor
            Então devo preencher todos os dados complementares do corretor
            | creci | cep      | rua                       | numero | complemento | bairro                                                | cidade  | estado |
            | 8545  | 17511756 | Rua Antônio Luís Fiorelli | 1026   | 3º Andar    | Núcleo Habitacional Presidente Jânio da Silva Quadros | Marília | SP     |
            Quando tenhos a permissões do corretor
            | autorizante | admin | carteira_cliente | carteira_imoveis | proposta | mapa |
            | NÃO         | NÃO   | SIM              | SIM              | SIM      | SIM  |
            Então devo ver alerta de sucesso "Formulário salvo com sucesso!"

            @auth @smoke
            Cenario: Cadastro de Corretor tipo jurídico

            Dado que acesso a página de imobiliária
            Quando realiza o filtro da imobiliária
            | nome_imob           | email                                |
            | Inovart Imobiliária | uesley.santos@queroterravista.com.br |
            Então devo acessar a tela de cadastro de corretores
            Dado que tenho os dados do corretor tipo jurídico
            | tipo_pessoa | cnpj           | razao_social                | nome_fantasia               | email                                | tel_celular | tel_comercial | tel_residencial | login   |
            | Jurídica    | 68335420000162 | Marcelo Corretor de Imóveis | Marcelo Corretor de Imóveis | uesley.santos@queroterravista.com.br | 14998552538 | 14352145622   | 1434063256      | marcelo |
            Quando faço o pré-cadastro deste corretor
            Então devo preencher todos os dados complementares do corretor
            | creci  | cep      | rua                | numero | complemento | bairro                                                | cidade  | estado |
            | 215454 | 17511737 | Rua Burgo Tozolini | 2445   | 1º Andar    | Núcleo Habitacional Presidente Jânio da Silva Quadros | Marília | SP     |
            Quando tenhos a permissões do corretor
            | autorizante | admin | carteira_cliente | carteira_imoveis | proposta | mapa |
            | NÃO         | NÃO   | SIM              | SIM              | SIM      | SIM  |
            Então devo ver alerta de sucesso "Formulário salvo com sucesso!"



