Dado('que estou na pagina de listas de desejos') do
    find(".lnk_wishlist a").click
end
  
Quando('eu crio uma nova lista com o nome {string}') do |nome|
    @nome = nome
    fill_in(id: "name", with: nome)
    click_on "Save"
end
  
Entao('a lista deve ser criada com sucesso') do
    coluna_nome = all("tbody tr td:first-child a")
    listas = []
    coluna_nome.each do |nome|
        listas.push(nome.text)
    end
    expect(listas.include?(@nome)).to be true
    indice = listas.index(@nome)
    botao_excluir = all("table tr td:last-child a")[indice]
    botao_excluir.click
    page.accept_confirm
end

Quando('eu adiciono na lista de desejos') do
    click_on "Add to wishlist"
end

Entao('ao acessar a lista de desejos, o {string} devera aparecer') do |produto|
    msg = find("p.fancybox-error").text
    expect(msg).to include "Added to your wishlist."
    find("a.fancybox-close").click
    visit "/"
    find("a.account").click
    find(".lnk_wishlist a").click
    find("tbody tr td:first-child a", text: "My wishlist").click
    product_name = find("#s_title").text
    expect(product_name).to include produto
    botao_excluir = all("table tr td:last-child a")[-1]
    botao_excluir.click
    page.accept_confirm
end