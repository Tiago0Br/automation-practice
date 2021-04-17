class ListagemProdutos
    include Capybara::DSL

    def cabecalho
        Header.new
    end

    def avaliacao
        Review.new
    end

    def compartilhar
        ShareModal.new
    end

    def lista_produtos
        all(".product_list a.product-name")
    end

    def selecionar_produto(produto)
        find("a[class='product-name']", text: produto).click
    end

    def nome_produto
        find("h1[itemprop='name']").text
    end

    def msg_produto_nao_encontrado
        find("#center_column p.alert").text
    end
end