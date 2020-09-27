#language:pt

            Funcionalidade: Cadastro de Cargos
            Para que eu possa cadastrar os cargos do empreendimento;
            Sendo um usuário do Admin;
            Posso cadastrar todos os cargos.

            @auth
            Cenario: Novo cargo Adminstrativo

            Dado que acessa a tela de cargo
            Quando tenhos os dados do cargo Adminstrativo:
            | nome_cargo    | comissionado | comissao |
            | Adminstrativo | SIM          | 1200     |
            Quando tenho os dados das parmissões do Adminstrativo:
            | carteira_cliente | carteira_imoveis | proposta | fornecedor | produto_servico | config_empresa | emails | empreendimento | campos_obrigatorios | log_email | cargos | socio | imoveis | imobiliaria | situacao | status | usuario | plano_conta | operacao_conta | banco | conta_pagar | boleto | trans_arquivo | conta_receber | movi_financeiro | contrato | cart_imoveis | correcao | controle_comissao | tabela_preco | arquivo_integracao | carne | integracao_cont | boleto_cloud | mapa | curva_financeira | gerencial | envio_rela | histo_imoveis | curva_fin_deta | DIMOB |
            | SIM              | SIM              | SIM      | SIM        | SIM             | SIM            | SIM    | SIM            | SIM                 | SIM       | SIM    | SIM   | SIM     | SIM         | SIM      | SIM    | SIM     | SIM         | SIM            | SIM   | SIM         | SIM    | SIM           | SIM           | SIM             | SIM      | SIM          | SIM      | SIM               | SIM          | SIM                | SIM   | SIM             | SIM          | SIM  | SIM              | SIM       | SIM        | SIM           | SIM            | SIM   |
            Quando eu salvo esse cargo
            Então devo a mensagem de "Gravação efetuada com sucesso."

            @auth
            Cenario: Novo cargo Comercial

            Dado que acessa a tela de cargo
            Quando tenhos os dados do cargo Comercial:
            | nome_cargo | comissionado | comissao |
            | Comercial  | SIM          | 1000     |
            Quando tenho os dados das parmissões do Comercial:
            | carteira_cliente | carteira_imoveis | proposta | fornecedor | produto_servico | config_empresa | emails | empreendimento | campos_obrigatorios | log_email | cargos | socio | imoveis | imobiliaria | situacao | status | usuario | plano_conta | operacao_conta | banco | conta_pagar | boleto | trans_arquivo | conta_receber | movi_financeiro | contrato | cart_imoveis | correcao | controle_comissao | tabela_preco | arquivo_integracao | carne | integracao_cont | boleto_cloud | mapa | curva_financeira | gerencial | envio_rela | histo_imoveis | curva_fin_deta | DIMOB |
            | SIM              | SIM              | SIM      | NÃO        | NÃO             | NÃO            | NÃO    | NÃO            | NÃO                 | NÃO       | NÃO    | NÃO   | NÃO     | NÃO         | NÃO      | NÃO    | NÃO     | NÃO         | NÃO            | NÃO   | NÃO         | NÃO    | NÃO           | NÃO           | NÃO             | NÃO      | NÃO          | NÃO      | NÃO               | NÃO          | NÃO                | NÃO   | NÃO             | NÃO          | SIM  | NÃO              | NÃO       | NÃO        | NÃO           | NÃO            | NÃO   |
            Quando eu salvo esse cargo
            Então devo a mensagem de "Gravação efetuada com sucesso."


            @auth 
            Cenario: Novo cargo Financeiro

            Dado que acessa a tela de cargo
            Quando tenhos os dados do cargo Financeiro:
            | nome_cargo | comissionado | comissao |
            | Financeiro | SIM          | 300      |
            Quando tenho os dados das parmissões do Financeiro:
            | carteira_cliente | carteira_imoveis | proposta | fornecedor | produto_servico | config_empresa | emails | empreendimento | campos_obrigatorios | log_email | cargos | socio | imoveis | imobiliaria | situacao | status | usuario | plano_conta | operacao_conta | banco | conta_pagar | boleto | trans_arquivo | conta_receber | movi_financeiro | contrato | cart_imoveis | correcao | controle_comissao | tabela_preco | arquivo_integracao | carne | integracao_cont | boleto_cloud | mapa | curva_financeira | gerencial | envio_rela | histo_imoveis | curva_fin_deta | DIMOB |
            | NÃO              | NÃO              | NÃO      | NÃO        | NÃO             | NÃO            | NÃO    | NÃO            | NÃO                 | NÃO       | NÃO    | NÃO   | NÃO     | NÃO         | NÃO      | NÃO    | NÃO     | SIM         | SIM            | SIM   | SIM         | SIM    | SIM           | SIM           | SIM             | SIM      | SIM          | SIM      | SIM               | SIM          | SIM                | SIM   | SIM             | SIM          | NÃO  | NÃO              | NÃO       | NÃO        | NÃO           | NÃO            | NÃO   |
            Quando eu salvo esse cargo
            Então devo a mensagem de "Gravação efetuada com sucesso."