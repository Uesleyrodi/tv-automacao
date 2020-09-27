#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os imóveis do meu empreendimento
    Sendo um usuário do sistema
    Posso acessar o sistema com o código da empresa, usuário e senha

    Cenario: Acessar o portal

        Dado que acesso à página principal
        Quando eu submeto minhas credenciais "129", "suporte" e "m2supcorpm2"
        Então devo ser autenticado

    Esquema do Cenario: Tentar logar

        Dado que acesso à página principal
        Quando eu submeto minhas credenciais "<codigo_empresa>", "<usuario>" e "<senha>"
        Então devo ver a mesnagem "<texto>"

        Exemplos:
                | codigo_empresa | usuario | senha       | texto                      |
                | 224            | suporte | m2supcorpm2 | Empresa inexistente.       |
                | 129            | abcde   | m2supcorpm2 | Usuário ou senha inválidos |
                | 129            | suporte | abcde123    | Usuário ou senha inválidos |