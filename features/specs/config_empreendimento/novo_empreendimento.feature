#language:pt

            Funcionalidade: Novo empreendimento
            Para que eu possa adicionar um novo empreendimento;
            Sendo um usuário autorizante;
            Posso adicionar novos empreendimentos conforme a necessidade.

            @auth @smoke
            Cenario: Novo Empreendimento

            Dado que acesso a tela de novo empreendimento
            Quando tenho os dados do novo empreendimento
            | nome_empreendimento | unidades | cnpj           | status               | tipo         | modelo                                   | tabela_preco            | drescicao                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
            | Esmeralda City      | 200      | 04350948000128 | Ativo - Em Andamento | Incorporação | Horizontal(Lote/Quadra)-Pronto(Terrenos) | Tabela de Preços PADRÃO | O empreendimento é formado por um edifício residencial com 107 unidades divididas em treze pavimentos tipo sendo oito unidades por andar. O embasamento é composto pelo pavimento térreo com lazer completo e três subsolos destinados a garagem. Localização privilegiada no bairro de Rudge Ramos ; 10 vagas para visitantes; terraço em todos os dormitórios. Composto  de  escada  enclausurada  com  antecâmara,  2  poços  de  elevador,  hall  social, estacionamento com 18 vagas de garagem, rampa com acesso ao subsolo 2 e ao térreo, 1 poço de ventilação e iluminação. |
            Quando salvo este novo empreendimento
            Então devo ver "Esmeralda City" na tela de empreendimento

            @auth @smoke
            Cenario: Tentano cadastrar novo empreenidmento sem CNPJ

            Dado que acesso a tela de novo empreendimento
            Quando tenhos os dados do novo empreendimento sem CNPJ
            | nome_empreendimento | unidades | status               | tipo         | modelo                                   |
            | Sinop Loteamento    | 200      | Ativo - Em Andamento | Incorporação | Horizontal(Lote/Quadra)-Pronto(Terrenos) |
            Quando salvo este novo empreendimento
            Quando salvar devo ver mensagem de erro "Corrija os problemas no formulário!"
            Quando salvar devo ver alerta do campo CNPj "O valor é obrigatório e não pode estar vazio"
            
            @auth @smoke
            Cenario: Tentando cadastrar novo empreendimento sem unidades

            Dado que acesso a tela de novo empreendimento
            Quando tenho os dados do novo empreendimento sem unidades
            | nome_empreendimento | cnpj           | status               | tipo         | modelo                                   |
            | Esmeralda City      | 54682165000110 | Ativo - Em Andamento | Incorporação | Horizontal(Lote/Quadra)-Pronto(Terrenos) |
            Quando salvo este novo empreendimento
            Quando salvar devo ver mensagem de erro "Corrija os problemas no formulário!"
            Quando salvar devo ver alerta do campo Unidades "O valor é obrigatório e não pode estar vazio"