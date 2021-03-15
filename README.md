# Praticando automação de Testes Web

Praticando automação de Testes Web na linguagem Ruby, utilizando Cucumber, Capybara e Rspec

## Como executar o projeto

-   Importante ter o ruby instalado (versão 2.5 ou superior)
- [RubyInstaller](https://rubyinstaller.org/downloads/)

### Instalar o bundler

`gem install bundler`

### Instalar as dependencias do Ruby (projeto)

`bundle install`

### Executar os testes

`cucumber`

## Como visualizar os relatórios do Allure

### Instalar o Scoop

- [Scoop](https://scoop.sh/#installs-in-seconds)

### Instalar o Allure framework via Scoop
- [Allure framework](https://docs.qameta.io/allure/#_windows)

### Exibindo o relatório
- Após a execução dos testes, executar o seguinte comando:
`allure serve logs/`