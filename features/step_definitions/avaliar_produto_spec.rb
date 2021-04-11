Dado('que selecionei o {string}') do |produto|
    @listagemProdutos.selecionar_produto(produto)
end
  
Quando('eu dou a nota {string} estrelas') do |estrelas|
    @listagemProdutos.avaliacao.nova
    @listagemProdutos.avaliacao.adicionar_nota(estrelas)
end
  
Quando('escrevo minha avaliacao com {string} e {string}') do |titulo, conteudo|
    @listagemProdutos.avaliacao.adicionar_avaliacao(titulo, conteudo)
end
  
Entao('devo ver uma mensagem informando que a avaliacao foi feita com sucesso') do
    expect(@listagemProdutos.avaliacao.msg_avaliacao_enviada).to include "Your comment has been added"
end