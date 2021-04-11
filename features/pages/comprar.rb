class Comprar
    include Capybara::DSL
    include Helpers

    def pagar_com_cheque
        find(".cheque").click
    end

    def pagar_com_cartao
        find(".bankwire").click
    end

    def adicionar_comentario(comentario)
        find("textarea.form-control").set comentario
    end

    def adicionar_produto_no_carrinho(produto)
        selecionar_produto(produto)
        find("#add_to_cart > button").click
    end

    def prosseguir_com_compra
        find("span", text: "Proceed to checkout").click
    end

    def continuar_comprando
        find("span[title='Continue shopping']").click
        find("a.home").click
    end
end