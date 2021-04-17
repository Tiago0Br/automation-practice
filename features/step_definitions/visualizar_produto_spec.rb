Dado('que estou na pagina inicial') do
    visit "/index.php"
    @listagemProdutos = ListagemProdutos.new
end
  
Quando('eu clico no produto {string}') do |produto|
    @listagemProdutos.selecionar_produto(produto)
end
  
Entao('devo visualizar o {string} com mais detalhes') do |produto|
    expect(@listagemProdutos.nome_produto).to eql produto
end