#language:pt

            Funcionalidade: Adicionando nova contas a receber
            Para que possa cadastrar minhas contas a receber;
            Sendo um usuário autorizante;
            Possa adicionar minhas contas a receber.

            @auth @smoke
            Cenario: Nova conta do tipo NF-Nota Fiscal

            Dado que acesso a tela do contas a receber
            Quando tenho os dados da nota fiscal
            | cliente              | plano_contas         | tipo_documento   | num_doc  | data_emissao | chave_NFE                                    | data_ent | historico                                                                | valor_total | qtd_parcelas | data_vencimento | form_pagamneto |
            | Lucílio Soeiro Paiva | Recebimento de Lotes | NF - Nota Fiscal | 31072020 | 31072020     | 65001000000419100000419065001000041910036641 | 31072020 | Teste de inclusão do contas a receber com parcela do tipo-NF-Nota Fiscal | 1000000     | 10           | 31072020        | Boleto         |
            Quando cadastro essa conta
            Então devo filtrar esta conta
            | situacao_parcela | tipo_data  | data_inicial | data_final | tipo         | filtro   | plano_contas         |
            | Real em Aberto   | VENCIMENTO | 01072020     | 31072020   | Nº Documento | 31072020 | Recebimento de Lotes |
            Então devo ver a parcela contrato na lista
            | cliente              | identificacao | form_pagamneto | data_venc  | valor    |
            | Lucílio Soeiro Paiva | NF - 31072020 | Boleto N/G     | 31/07/2020 | 1.000,00 |

            @auth @smoke
            Cenario: Nova conta do tipo CT-Contrato

            Dado que acesso a tela do contas a receber
            Quando tenho os dados do contrato
            | cliente              | plano_contas         | tipo_documento | num_doc  | data_emissao | historico                                                              | valor_total | qtd_parcelas | data_vencimento | form_pagamneto |
            | Lucílio Soeiro Paiva | Recebimento de Lotes | CT - Contrato  | 01082020 | 01082020     | Teste de inclusão do contas a receber com parcela do tipo CT-Contrtato | 1000000     | 10           | 01082020        | Boleto         |
            Quando cadastro essa conta
            Então devo filtrar esta conta
            | situacao_parcela | tipo_data  | data_inicial | data_final | tipo         | filtro   | plano_contas         |
            | Real em Aberto   | VENCIMENTO | 31072020     | 02082020   | Nº Documento | 01082020 | Recebimento de Lotes |
            Então devo ver a parcela contrato na lista
            | cliente              | identificacao | form_pagamneto | data_venc  | valor    |
            | Lucílio Soeiro Paiva | BOL - 1082020 | Boleto N/G     | 01/08/2020 | 1.000,00 |

            @auth @smoke
            Cenario: Nova conta do tipo NP-Nota Promissória

            Dado que acesso a tela do contas a receber
            Quando tenho os dados da nota promissória
            | cliente              | plano_contas                   | tipo_documento        | num_doc  | data_emissao | historico                                                                     | valor_total | qtd_parcelas | data_vencimento | form_pagamneto |
            | Lucílio Soeiro Paiva | Recebimento de Lotes (01.1.01) | NP - Nota Promissória | 01092020 | 01092020     | Teste de inclusão do contas a receber com parcela do tipo NP-Nota Promissória | 100000      | 10           | 01092020        | Boleto         |
            Quando cadastro essa conta
            Então devo filtrar esta conta
            | situacao_parcela | tipo_data  | data_inicial | data_final | tipo         | filtro   | plano_contas         |
            | Real em Aberto   | VENCIMENTO | 01092020     | 31092020   | Nº Documento | 01092020 | Recebimento de Lotes |
            Então devo ver a parcela contrato na lista
            | cliente              | identificacao | form_pagamneto | data_venc  | valor  |
            | Lucílio Soeiro Paiva | BOL - 1092020 | Boleto N/G     | 01/09/2020 | 100,00 |

            @auth @smoke
            Cenario: Nova conta do tipo NS-Nota de Serviço

            Dado que acesso a tela do contas a receber
            Quando tenho os dados da nota de serviço
            | cliente              | plano_contas         | tipo_documento       | num_doc  | data_emissao | historico                                                                    | valor_total | qtd_parcelas | data_vencimento | form_pagamneto |
            | Lucílio Soeiro Paiva | Recebimento de Lotes | NS - Nota de Serviço | 01102020 | 01102020     | Teste de inclusão do contas a receber com parcela do tipo NS-Nota de Serviço | 1000000     | 10           | 01102020        | Boleto         |
            Quando cadastro essa conta
            Então devo filtrar esta conta
            | situacao_parcela | tipo_data  | data_inicial | data_final | tipo         | filtro  | plano_contas         |
            | Real em Aberto   | VENCIMENTO | 01092020     | 30102020   | Nº Documento | 1102020 | Recebimento de Lotes |
            Então devo ver a parcela contrato na lista
            | cliente              | identificacao | form_pagamneto | data_venc  | valor    |
            | Lucílio Soeiro Paiva | BOL - 1102020 | Boleto N/G     | 01/10/2020 | 1.000,00 |

            @auth @smok
            Cenario: Nova conta do tipo OU - Outro

            Dado que acesso a tela do contas a receber
            Quando tenho os dados da outros
            | cliente              | plano_contas         | tipo_documento | num_doc  | data_emissao | historico                                                            | valor_total | qtd_parcelas | data_vencimento | form_pagamneto |
            | Lucílio Soeiro Paiva | Recebimento de Lotes | OU - Outro     | 01112020 | 01112020     | Teste de inclusão do contas a receber com parcela do tipo OU - Outro | 100000      | 10           | 01112020        | Boleto         |
            Quando cadastro essa conta
            Então devo filtrar esta conta
            | situacao_parcela | tipo_data  | data_inicial | data_final | tipo         | filtro  | plano_contas         |
            | Real em Aberto   | VENCIMENTO | 01112020     | 30112020   | Nº Documento | 1112020 | Recebimento de Lotes |
            Então devo ver a parcela contrato na lista
            | cliente              | identificacao | form_pagamneto | data_venc  | valor  |
            | Lucílio Soeiro Paiva | BOL - 1112020 | Boleto N/G     | 01/11/2020 | 100,00 |