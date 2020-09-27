#language:pt

            Funcionalidade: Editar empreendimento
            Para que eu possa editar as configuração do empreendimento;
            Sendo um usuário autorizante;
            Posso editar e inseri novas informações do empreendimento.

            @auth @smoke
            Cenario: Editar empreendimento

            Dado acesso a tela de configuração do empreendimento
            Quando tenhos todos os dados a serem alterados
            | nome               | unidades | cnpj           | status               | tipo         | modelo                                   | tel_comercial | facebook                            | twitter                             | site                                | whatsap     | blog                                | skype                               | endereco               | numero | complemento | bairro            | CEP       | cidade    | estado | cod_dimob | ativo | limite_paginacao | numero_empreendimento | validade_proposta | mora   | multa | operacao_contabil | plano_de_conta               | proposta_rapida | todos_cliente | mmostrar_movimento | taxa_indice | periodo  | tipo_correcao | casas_descimais  | contas_devolucao | operacao_devolucao        | contas_comissao | operacao_comissao         | tipo_dimob                |
            | Estância Vitória 2 | 176      | 49395375000197 | Ativo - Em Andamento | Incorporação | Horizontal(Lote/Quadra)-Pronto(Terrenos) | 1465124580    | https://app.queroterravista.com.br/ | https://app.queroterravista.com.br/ | https://app.queroterravista.com.br/ | 14998552635 | https://app.queroterravista.com.br/ | https://app.queroterravista.com.br/ | Praça Lucinha Mendonça | 903    | Sala N°03   | Planalto Paulista | 04060-015 | São Paulo | SP     | 6371      | SIM   | 50               | 100                   | 10                | 0,0333 | 2     | - Recebimento     | 01.1.01 Recebimento de Lotes | SIM             | SIM           | SIM                | IGP-MA      | 12 Meses | Data da venda | 2 Casas decimais | 39 - DEVOLUÇÃO   | 999 - SEM CÓDIGO CONTÁBIL | 38 - COMISSÃO   | 999 - SEM CÓDIGO CONTÁBIL | Construção e Incorporação |
            Quando salvo essas informações
            Então devo ver mesnsagem "Formulário salvo com sucesso!"
            Dados que tenhos as imagens do empreendimento
            | foto_mapa | logo_empreendimento     |
            | mapa.jpeg | logo_empreendimento.jpg |
