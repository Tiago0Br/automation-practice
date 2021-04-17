Quando('eu clico na opcao de enviar a um amigo') do
    @listagemProdutos.compartilhar.abrir
end

Quando('preencho os campos com {string} e {string}') do |nome, email|
    @listagemProdutos.compartilhar.adicionar_amigo(nome, email)
end

Entao('o produto deve ser compartilhado com sucesso') do
    expect(@listagemProdutos.compartilhar.msg_sucesso).to include "Your e-mail has been sent successfully"
    @listagemProdutos.compartilhar.fechar_alerta
end