class Wishlists
    include Capybara::DSL

    def acessar_lista
        find("a[title*='wishlist']").click
    end

    def adicionar_lista(nome)
        fill_in(id: "name", with: nome)
        click_on "Save"
    end

    def visualizar_lista(nome)
        find("tbody tr td:first-child a", text: "My wishlist").click
    end

    def nomes
        coluna_nome = all("tbody tr td:first-child a")
        listas = []
        coluna_nome.each do |nome|
            listas.push(nome.text)
        end
        listas
    end

    def excluir(nome)
        indice = nomes.index(nome)
        all("table tr td:last-child a")[indice].click
        page.accept_confirm
    end

    def nome_do_produto
        find("#s_title").text
    end
end