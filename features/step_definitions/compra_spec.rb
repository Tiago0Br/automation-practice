Quando('eu adiciono o produto {string} no carrinho') do |produto|
    @compra.adicionar_produto_no_carrinho(produto)
    @compra.prosseguir_com_compra
end

Quando('faco login') do
    account = YAML.load_file(File.join(Dir.pwd, "features/support/config/login.yaml"))
    login_with(account['login'], account['password'])
end
  
Quando('seleciono a forma de pagamento igual a cheque') do
    @compra.prosseguir_com_compra
    check("cgv", allow_label_click: true)
    @compra.prosseguir_com_compra
    @compra.pagar_com_cheque
end
  
Entao('devo ver uma mensagem afirmando que a compra por cheque foi efetuada com sucesso') do
    find("#cart_navigation > button").click
    alerta = find("p.alert-success").text
    expect(alerta).to include "Your order on My Store is complete."
end

Quando('seleciono a forma de pagamento igual a transferencia bancaria') do
    @compra.prosseguir_com_compra
    check("cgv", allow_label_click: true)
    @compra.prosseguir_com_compra
    @compra.pagar_com_cartao
end

Entao('devo ver uma mensagem afirmando que a compra por transferencia foi efetuada com sucesso') do
    find("#cart_navigation > button").click
    alerta = find(".cheque-indent > strong").text
    expect(alerta).to have_text "Your order on My Store is complete."
end

Quando('eu adiciono no carrinho os produtos:') do |produtos|
    produtos.hashes.each.with_index do |produto, indice|
        @compra.adicionar_produto_no_carrinho(produto[:descricao])
        @compra.continuar_comprando if indice < produtos.hashes.size-1
    end
    2.times {@compra.prosseguir_com_compra}
end

Quando('eu adiciono no carrinho {string} do {string}') do |unidades, produto|
    @compra.selecionar_produto(produto)
    fill_in(id: "quantity_wanted", with: unidades)
    find("#add_to_cart > button").click
    2.times {@compra.prosseguir_com_compra}
end