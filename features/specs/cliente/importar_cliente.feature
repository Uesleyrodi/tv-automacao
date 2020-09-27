            #language:pt

            Funcionalidade: Cadastro de Cliente
            Para que eu possa lançar a proposta preciso cadastrar o comprador
            Sendo um usuário do comercial
            Posso importar a planilha com os compradores

            @auth @smoke
            Cenario: Importar planilha de cliente
            
            Dado que eu tenho a planilha de importação:
            | planilha              |
            | planilha_cliente.xlsx |
            Quando eu faço a importação dessa planilha
            Então devo ver mesnagem "Importação concluída!"
            Então devo ver cliente importado na grid:
            | nome         |
            | Abel Montero |