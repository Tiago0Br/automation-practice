Dado('que estou logado') do
    visit "/"
    click_on "Sign in"
    @compra.login_with("tiagoteste@hotmail.com", "senha1234*")
end
  
Dado('que selecionei o {string}') do |produto|
    @compra.selecionar_produto(produto)
end
  
Quando('eu dou a nota {string} estrelas') do |estrelas|
    click_on "Write a review"
    find("a[title='#{estrelas}']").click
end
  
Quando('escrevo minha avaliacao com {string} e {string}') do |titulo, conteudo|
    fill_in(id: "comment_title", with: titulo)
    fill_in(id: "content", with: conteudo)
    find("#submitNewMessage").click
end
  
Entao('devo ver uma mensagem informando que a avaliacao foi feita com sucesso') do
    msg = all(".fancybox-inner p")[0]
    expect(msg.text).to have_content "Your comment has been added"
end