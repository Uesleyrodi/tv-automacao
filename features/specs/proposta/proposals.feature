#language:pt

            Funcionalidade: Cadastro de Proposta
            Para que eu possa lançar uma proposta
            Sendo um usuário corretor, imobiliária ou administrador
            Possa lançar as propostas no sistema

            @auth @smoke @propostaPrice
            Cenario: Cadastro de proposta utilizando tipo PRICE
            
            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta com PRICE:
            | comprador            | imobiliaria         | corretor                            | tabela_preco | imovel | qtd_ent | venc_ent | pag_ent | qtd_parc | venc_nor | pag_nor |
            | Lucílio Soeiro Paiva | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela Price | A-02/1 | 5       | 15072020 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais     |
            | Abel Montero               |
            | Abigail Sousa de Arronches |
            | Adelaide Cayubi            |
            Quando salvar esta proposta
            Então devo ver a proposta Price na lista

            @auth @smoke
            Cenario: Cadastro de proposta utilizando tipo FIXO

            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta com FIXA:
            | comprador                            | imobiliaria         | corretor                            | tabela_preco | imovel | qtd_ent | venc_ent | pag_ent | qtd_parc | venc_nor | pag_nor |
            | Renata e Luiza Telecomunicações Ltda | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela Fixa  | A-03/1 | 5       | 15072020 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais |
            | Burtira Alcoforado     |
            | Caubi Zagalo           |
            | Léia Neto              |
            Quando salvar esta proposta
            Então devo ver a proposta Fixa na lista

            @auth @smoke
            Cenario: Cadastro de proposta utilizando tipo PRICE com Balão e Final
            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta PRICE com Balão e Final
            | comprador            | imobiliaria         | corretor                            | tabela_preco                   | imovel | qtd_ent | venc_ent | pag_ent | val_balao | qtd_bal | venc_bal | pag_bal | periodo | val_final | qtd_fin | venc_fin | pag_fin | qtd_parc | venc_nor | pag_nor |
            | Lucílio Soeiro Paiva | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela Price com Balão e Final | C-04/1 | 5       | 15072020 | Boleto  | 1000000   | 5       | 15012021 | Boleto  | Anual   | 85200     | À vista | 15012033 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais |
            | Leonardo Covilhã       |
            | Rosário Mainha         |
            | Judá Sarmiento         |
            Quando salvar esta proposta
            Então devo ver a proposta Price com Balão e Final

            @auth @smoke
            Cenario: Cadastro de proposta utilizando tipo FIXA com Balão e Final
            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta FIXA com Balão e Final
            | comprador            | imobiliaria         | corretor                            | tabela_preco                   | imovel | qtd_ent | venc_ent | pag_ent | val_balao | qtd_bal | venc_bal | pag_bal | periodo | val_final | qtd_fin | venc_fin | pag_fin | qtd_parc | venc_nor | pag_nor |
            | Lucílio Soeiro Paiva | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela Price com Balão e Final | L-04/1 | 5       | 15072020 | Boleto  | 1000000   | 5       | 15012021 | Boleto  | Anual   | 85200     | À vista | 15012033 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais |
            | Leonardo Covilhã       |
            | Rosário Mainha         |
            | Judá Sarmiento         |
            Quando salvar esta proposta
            Então devo ver a proposta Fixa com Balão e Final

            @auth @smoke
            Cenario: Cadastro de proposta utilizando tipo SACOC 6%
            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta SACOC
            | comprador            | imobiliaria         | corretor                            | tabela_preco    | imovel | qtd_ent | venc_ent | pag_ent | val_balao | qtd_bal | venc_bal | pag_bal | periodo | val_final | qtd_fin | venc_fin | pag_fin | qtd_parc | venc_nor | pag_nor |
            | Lucílio Soeiro Paiva | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela SACOC 6% | D-04/1 | 5       | 15072020 | Boleto  | 1000000   | 5       | 15012021 | Boleto  | Anual   | 85200     | À vista | 15012033 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais |
            | Leonardo Covilhã       |
            | Rosário Mainha         |
            | Judá Sarmiento         |
            Quando salvar esta proposta
            Então devo a proposta Sacoc na lista

            @auth @smoke
            Cenario: Cadastro de proposta utilizando tipo SACOC 12%
            Dado que acesso a página de proposta para que eu possa cadastrar uma nova
            Quando tenho as informações desta proposta SACOC
            | comprador            | imobiliaria         | corretor                            | tabela_preco     | imovel | qtd_ent | venc_ent | pag_ent | qtd_parc | venc_nor | pag_nor |
            | Lucílio Soeiro Paiva | Inovart Imobiliária | Cristian Borges Corretor de Imóveis | Tabela SACOC 12% | H-04/1 | 5       | 15072020 | Boleto  | 150      | 15012021 | Boleto  |
            Quando adiciono os compradores adicionais:
            | compradores_adicionais |
            | Leonardo Covilhã       |
            | Rosário Mainha         |
            | Judá Sarmiento         |
            Quando salvar esta proposta
            Então devo a proposta Sacoc na lista