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