#language: pt
@compra
@lista_desejos
Funcionalidade: Possibilitar adicionar produtos em minha lista de desejos e gerenciar várias listas
    Sendo um usuário do site
    Quero poder adicionar itens que tenho interesse na minha lista de desejos
    Para que eu possa encontrá-los com mais facilidade

    Contexto:
        Dado que estou logado

    Cenario: Criar Lista de Desejo
            E que estou na pagina de listas de desejos
        Quando eu crio uma nova lista com o nome "<nome>"
        Entao a lista deve ser criada com sucesso
        Exemplos:
            | nome         |
            | Vamos ver né |
            | Outro teste  |

    Cenario: Adicionar produtos na lista de desejos