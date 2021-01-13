#language: pt
@compra
@avaliar
Funcionalidade: Avaliar produtos
    Sendo um usuário do site que adquiriu produtos
    Quero poder avaliá-los
    Para que eu possa compartilhar minha opinião sobre o produto

    Contexto:
        Dado que estou logado
        E que estou na pagina inicial

    Esquema do Cenario: Avaliar produtos
        Dado que selecionei o "<produto>"
        Quando eu dou a nota "<nota>" estrelas
            E escrevo minha avaliacao com "<titulo>" e "<conteudo>"
        Entao devo ver uma mensagem informando que a avaliacao foi feita com sucesso
        Exemplos:
            | produto                     | titulo     | conteudo                                            | nota |
            | Printed Chiffon Dress       | Muito ruim | Ruim!                                               | 1    |
            | Blouse                      | Adorei     | Eu achei linda e coube direitnho em mim, muito top! | 5    |
            | Faded Short Sleeve T-shirts | Boa!       | Ficou um pouco apertada, mas eu achei bonita        | 3    |