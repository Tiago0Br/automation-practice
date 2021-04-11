# Praticando automação de Testes Web

Praticando automação de Testes Web na linguagem Ruby, utilizando Cucumber, Capybara e Rspec

## Como executar o projeto

-   Importante ter o ruby instalado (versão 2.5 ou superior)
- [RubyInstaller](https://rubyinstaller.org/downloads/)

### Instalar o bundler

`gem install bundler`

### Instalar as dependencias do Ruby (projeto)

`bundle install`

### Acessar a pasta "support"

`cd features/support/`

### Criar pasta "config"

`mkdir config`

### Criar arquivo "login.yaml"

`touch login.yaml` ou `echo >> login.yaml`

### Dentro do arquivo adicionar seu login e senha do site conforme o exemplo:

```
login: "exemplo@teste.com"
password: "senha1234"
```

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