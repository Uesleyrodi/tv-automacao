#language:pt

            Funcionalidade: Cadastrar de Imobiliária
            Para que eu possa lançar uma proposta preciso cadastrar a imobiliária
            Sendo um usuário autorizante ou admin
            Posso cadastrar a imobiliária

            @auth @smoke
            Cenario: Cadastro de Imobiliária

            Dado que acesso a página de cadastro de imobiliária
            Dado que tenhos os dados da imobiliária
            | cnpj           | razao_social        | nome_fantasia       | email                                | tel_cel     | tel_com     | tel_res    | login   | comissao | desconto |
            | 20742821000100 | Inovart Imobiliária | Inovart Imobiliária | uesley.santos@queroterravista.com.br | 14998552538 | 14998552538 | 1434063240 | Inovart | 5,20     | 14,00    |
            Quando eu faço o pré-cadastro dessa imoboliária
            Então devo preencher todos os dados complementares
            | incricao_estudual | creci | cep      | rua                              | numero | complemento | bairro                                              | cidade  | estado |
            | 909.295.980.420   | 5720  | 17512859 | Rua Jucidene Braga Sales Barreto | 1125   | 2º Andar    | Conjunto Residencial Luiz Egydio de Cerqueira César | Marília | SP     |
            Quando preencher os dados complementares devo preencher as permissões
            | autorizante | admin | carteira_cliente | carteira_imóveis | proposta | contas_pagar | contas_receber | boleto_cloud | mapa |
            | NÂO         | NÃO   | SIM              | SIM              | SIM      | SIM          | SIM            | SIM          | SIM  |
            Então devo ver alerta de sucesso "Formulário salvo com sucesso!"