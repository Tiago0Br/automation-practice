class Header
    include Capybara::DSL
    def pesquisar_produto(produto)
        fill_in(id: "search_query_top", with: produto)
        find(".button-search").click
    end
end