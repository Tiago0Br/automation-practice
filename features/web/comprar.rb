class Comprar
    include Capybara::DSL

    def login_with(email, senha)
        find("#email").set email
        find("#passwd").set senha
        find("#SubmitLogin").click
    end

    def selecionar_produto(produto)
        find("a[class='product-name']", text: produto).click
    end

    def pagar_com_cheque
        find(".cheque").click
    end

    def pagar_com_cartao
        find(".bankwire").click
    end

    def adicionar_comentario(comentario)
        find("textarea.form-control").set comentario
    end

    def adicionar_produtos_no_carrinho(produtos)
        for indice in 0..produtos.size-1 do
            selecionar_produto(produtos[indice])
            find("#add_to_cart > button").click
            if indice != produtos.size-1
                continuar_comprando
                find("a.home").click
            else
                prosseguir_com_compra
            end
        end
        
    end

    def prosseguir_com_compra
        find("span", text: "Proceed to checkout").click
    end

    def continuar_comprando
        find("span[title='Continue shopping']").click
    end
end