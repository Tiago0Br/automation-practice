Quando('eu busco por {string}') do |produto|
    fill_in(id: "search_query_top", with: produto)
    find(".button-search").click
end

Entao('devo ver os produtos relacionados ao {string}') do |nome_produto|
    produtos = all(".product_list a.product-name")
    produtos.each do |produto|
        expect(produto.text.downcase).to include nome_produto.downcase
    end
end

Quando('eu busco por um {string} que nao possui na loja') do |produto|
    steps %(
        Quando eu busco por "#{produto}"
    )
end
Entao('devo ver uma mensagem informando que nao foi encontrado o {string}') do |produto|
    alerta = find("#center_column p.alert").text
    expect(alerta).to have_content "No results were found"
    expect(alerta).to have_content produto
end