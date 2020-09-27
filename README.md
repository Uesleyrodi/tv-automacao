# Automação de Teste
Esta é a stack de automação de processo e rotinas do sistema e gestão da Terravista. Para que possa garantir a integridade da versão a ser lançada para a produção esta automação ajudará em agilizar as verificações.

## Requisitos de Sistemas Operacionais

A stack foi testada nos seguintes ambientes:

- Windows 10 Pro

## Requisitos

Para iniciar uma projeto é necessário instalar a extensão do ruby por linguagem padrão de desenvolvimento da automação.

-   Ruby+Devkit 2.6.6-1

## Desenvolvimento

Para iniciar o desenvolvimento, é necessário clonar o projeto do Bitbucket num diretório de sua preferência:

`cd "diretórios_de_sua_prefência"`
`git clone "link_do_repositório"`

## Construção

Para construir o projeto e ter todos os acessos sobre as gens do ruby é necessário rodar o comando a baixo dentro do repositório:

`bundle install`

O comando irá baixar todas as dependências das gens que foram utilizadas dentro do projeto.

## Execução de Testes

Para os teste serem executados, podemos realizar duas execuções, tanto em regressão e isolados:

- Teste de Regressão:

​     `cucumber features\specs\client\client_.feature`

- Teste isolados utilizando Tags:

​    `cucumber -t @doing`

## Contribuição

Contribuição são sempre bem-vindas! Para contribuir lembre-se sempre de adicionar teste com BDD para as novas automações.

## Links

- Capybara: https://rubygems.org/gems/capybara
- Cucumber: https://rubygems.org/gems/cucumber
- FFI: https://rubygems.org/gems/ffi
- Mysql2: https://rubygems.org/gems/mysql2
- Selenium-Webdriver: https://rubygems.org/gems/selenium-webdriver
- Rspec: https://rubygems.org/gems/rspec