Quando('eu busco por {string}') do |produto|
    @listagemProdutos.cabecalho.pesquisar_produto(produto)
end

Entao('devo ver os produtos relacionados ao {string}') do |nome_produto|
    @listagemProdutos.lista_produtos.each do |produto|
        expect(produto.text.downcase).to include nome_produto.downcase
    end
end

Quando('eu busco por um {string} que nao possui na loja') do |produto|
    steps %(
        Quando eu busco por "#{produto}"
    )
end
Entao('devo ver uma mensagem informando que nao foi encontrado o {string}') do |produto|
    expect(@listagemProdutos.msg_produto_nao_encontrado).to have_content "No results were found"
    expect(@listagemProdutos.msg_produto_nao_encontrado).to have_content produto
end