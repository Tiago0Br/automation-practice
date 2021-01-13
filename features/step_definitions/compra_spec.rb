Quando('eu adiciono o produto {string} no carrinho') do |produto|
    @compra.adicionar_produtos_no_carrinho([produto])
    @compra.prosseguir_com_compra
end

Quando('faco login') do
    @compra.login_with("tiagoteste@hotmail.com", "senha1234*")
end
  
Quando('seleciono a forma de pagamento igual a cheque') do
    @compra.prosseguir_com_compra
    check("cgv", allow_label_click: true)
    @compra.prosseguir_com_compra
    @compra.pagar_com_cheque
end
  
Entao('devo ver uma mensagem de alerta afirmando que a compra foi efetuada com sucesso') do
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

Entao('devo ver uma mensagem afirmando que a compra foi efetuada com sucesso') do
    find("#cart_navigation > button").click
    alerta = find(".cheque-indent > strong").text
    expect(alerta).to have_text "Your order on My Store is complete."
end

Quando('eu adiciono no carrinho os produtos {string}, {string}, {string}') do |p1, p2, p3|
    @compra.adicionar_produtos_no_carrinho([p1, p2, p3])
    @compra.prosseguir_com_compra
end

Quando('eu adiciono no carrinho {string} do {string}') do |unidades, produto|
    @compra.selecionar_produto(produto)
    fill_in(id: "quantity_wanted", with: unidades)
    find("#add_to_cart > button").click
    @compra.prosseguir_com_compra
    @compra.prosseguir_com_compra
end