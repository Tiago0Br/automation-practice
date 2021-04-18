Dado('que estou na pagina de listas de desejos') do
    @minha_conta = MinhaConta.new
    @minha_conta.lista_de_desejos.acessar_lista
end
  
Quando('eu crio uma nova lista com o nome {string}') do |nome|
    @nome = nome
    @minha_conta.lista_de_desejos.adicionar_lista(@nome)
end
  
Entao('a lista deve ser criada com sucesso') do
    expect(@minha_conta.lista_de_desejos.nomes.include?(@nome)).to be true
end

Quando('eu adiciono na lista de desejos') do
    @listagemProdutos.adicionar_na_lista_de_desejos
    expect(@listagemProdutos.msg_adicionado_na_lista).to include "Added to your wishlist."
    @nome = "My wishlist"
end

Quando('acesso a pagina de listas de desejos') do
    visit "/"
    @minha_conta = MinhaConta.new
    @minha_conta.acessar
    @minha_conta.lista_de_desejos.acessar_lista
end

Quando('seleciono a lista criada') do
    @minha_conta.lista_de_desejos.visualizar_lista("My wishlist")
end

Entao('o {string} adicionado devera aparecer') do |produto|
    expect(@minha_conta.lista_de_desejos.nome_do_produto).to include produto
end