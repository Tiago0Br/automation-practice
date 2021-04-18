#language: pt
@login
@lista_desejos
Funcionalidade: Possibilitar adicionar produtos em minha lista de desejos e gerenciar várias listas
    Sendo um usuário do site
    Quero poder adicionar itens que tenho interesse na minha lista de desejos
    Para que eu possa encontrá-los com mais facilidade

    Cenario: Criar Lista de Desejo
        Dado que estou na pagina de listas de desejos
        Quando eu crio uma nova lista com o nome "<nome>"
        Entao a lista deve ser criada com sucesso
        Exemplos:
            | nome                   |
            | Minha lista de desejos |
            | Roupas que eu quero    |

    @adicionar_produto
    Cenario: Adicionando um produto na lista de desejos
        Dado que estou na pagina inicial
            E que selecionei o "<produto>"
        Quando eu adiciono na lista de desejos
            E acesso a pagina de listas de desejos
            E seleciono a lista criada
        Entao o "<produto>" adicionado devera aparecer
        Exemplos:
            | produto |
            | Blouse  |