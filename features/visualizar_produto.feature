#language: pt
@visualizar_produtos
Funcionalidade: Visualizar produtos
    Sendo um usuário do site
    Quero poder clicar sobre o produto
    Para que eu possa visualizá-lo mais perto e com mais informações sobre este

    Contexto:
        Dado que estou na pagina inicial

    Cenario: Visualizar produto clicando sobre a imagem
        Quando eu clico no produto "<produto>"
        Entao devo visualizar o "<produto>" com mais detalhes
        Exemplos:
            | produto                     |
            | Blouse                      |
            | Printed Chiffon Dress       |
            | Faded Short Sleeve T-shirts |