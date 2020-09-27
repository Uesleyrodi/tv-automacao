#language:pt

            Funcionalidade: Importar Planilha de Unidades
            Para que eu possa lançar uma proposta preciso cadastrar os unidades
            Sendo um usuário do administrativo
            Posso cadastrar as unidades do empreendimento

            @auth @smoke
            Cenario: Importar planilha de unidades

            Dado que acesso a página de importação
            Quando seleciono a planilha de importação
            | importacao_imoveis    |
            | planilha_imoveis.xlsx |
            Então devo ver as unidades na grid
            | tipo | quadra | lote | descricao_imovel                                                                                                                                                                                                                                                                            | metros_quadrados |
            | 2    | A      | 01   | Lote 31 - Quadra C: Com frente para Rua 07, mede 8,00m; nos fundos confronta com o Lote 15 e mede 8,00m; do lado direito de quem do lote olha para rua, confronta com o Lote 30 e mede 20,00m; e do lado esquerdo, confronta com o Lote 32 e mede 20,00m. Totalizando uma área de 160,00m². | 250              |
            Quando faço a importação dessa planilha
            Então devo ver mensagem de "176 imóvel(is) incluído(s) com sucesso!"