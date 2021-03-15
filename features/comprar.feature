#language: pt
@comprar
Funcionalidade: Realizar compras de produtos
    Sendo um usuário cadastrado
    Quero poder comprar produtos do site
    Para que possa utilizá-los

    Contexto:
        Dado que estou na pagina inicial

    Cenario: Efetuar a compra de um produto pagando com cheque
        Quando eu adiciono o produto "<produto>" no carrinho
            E faco login
            E seleciono a forma de pagamento igual a cheque
        Entao devo ver uma mensagem afirmando que a compra por cheque foi efetuada com sucesso
        Exemplos:
            | produto                     |
            | Faded Short Sleeve T-shirts |

    @compra_cartao
    Cenario: Efetuar a compra de um produto pagando com transferencia bancaria
        Quando eu adiciono o produto "<produto>" no carrinho
            E faco login
            E seleciono a forma de pagamento igual a transferencia bancaria
        Entao devo ver uma mensagem afirmando que a compra por transferencia foi efetuada com sucesso
        Exemplos:
            | produto |
            | Blouse  |

    @compra_varios
    Cenario: Efetuar a compra de varios produtos
        Quando eu adiciono no carrinho os produtos:
            | descricao                   |
            | Blouse                      |
            | Faded Short Sleeve T-shirts |
            | Printed Chiffon Dress       |
            E faco login
            E seleciono a forma de pagamento igual a transferencia bancaria
        Entao devo ver uma mensagem afirmando que a compra por transferencia foi efetuada com sucesso

    @compra_unidades
    Cenario: Efetuar a compra de várias unidades do mesmo produto
        Quando eu adiciono no carrinho "<unidades>" do "<produto>"
            E faco login
            E seleciono a forma de pagamento igual a cheque
        Entao devo ver uma mensagem afirmando que a compra por cheque foi efetuada com sucesso
        Exemplos:
            | unidades | produto               |
            | 5        | Printed Chiffon Dress |