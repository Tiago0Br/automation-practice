#language: pt
@suporte
Funcionalidade: Contatar responsáveis pelo site
    Sendo um usuário do site
    Quero poder mandar minhas dúvidas, sugestões e problemas para a equipe de suporte
    Para que eu obter ajuda e compartilhar minhas opiniões sobre o site

    @teste
    Cenario: Enviar uma mensagem para a equipe de suporte
        Dado que estou na pagina de suporte
        Quando eu submeto o formulario de contato com os seguintes dados:
            | assunto   | email             | pedido | mensagem      |
            | Webmaster | tiago@hotmail.com | teste  | oi, tudo bem? |
        Entao a mensagem deve ser enviada com sucesso

    
    @compra
    Cenario: Enviar uma mensagem para a equipe de suporte, logado no sistema
        Dado que estou logado
            E que estou na pagina de suporte
        Quando eu submeto o formulario de contato com os seguintes dadoss:
            | assunto          | mensagem      |
            | Customer service | oi, tudo bem? |
        Entao a mensagem deve ser enviada com sucesso