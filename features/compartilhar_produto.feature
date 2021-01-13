#language: pt
@compra
@compartilhar
Funcionalidade: Compartilhar o produto por email
    Sendo um usuário do site
    Quero poder compartilhar produtos do site com pessoas que conheço
    Para que elas possam adquirir o produto

    Contexto:
        Dado que estou na pagina inicial

    Esquema do Cenario: Compartilhando por email
        Dado que selecionei o "<produto>"
        Quando eu clico na opcao de enviar a um amigo, preencho os campos com "<nome>" e "<email>" e envio
        Entao o produto deve ser compartilhado com sucesso
        Exemplos:
            | produto               | nome        | email                       |
            | Blouse                | Tiago Lopes | tiagoltavares2002@gmail.com |
            | Printed Chiffon Dress | Pedrinho    | pedrin2002@gmail.com        |