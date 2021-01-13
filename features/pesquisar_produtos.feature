#language: pt
@pesquisa
Funcionalidade: Possibilitar pesquisar produtos na loja
    Sendo um usuário do site
    Quero poder realizar pesquisas de produtos de meu interesse
    Para que eu possa encontra-los mais facilmente

    Contexto:
        Dado que estou na pagina inicial

    Esquema do Cenario: Realizar a busca de um produto
        Quando eu busco por "<produto>"
        Entao devo ver os produtos relacionados ao "<produto>"
        Exemplos:
            | produto |
            | blóuse  |
            | shirts  |
            | printed |

    Esquema do Cenario: Buscando um produto inexistente
        Quando eu busco por um "<produto>" que nao possui na loja
        Entao devo ver uma mensagem informando que nao foi encontrado o "<produto>"
        Exemplos:
            | produto                |
            | produto que nao existe |
