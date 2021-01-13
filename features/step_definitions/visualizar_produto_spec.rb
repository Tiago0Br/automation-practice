Dado('que estou na pagina inicial') do
    visit "/index.php"
end
  
Quando('eu clico no produto {string}') do |produto|
    find("a[class='product-name']", text: produto).click
end
  
Entao('devo visualizar o {string} com mais detalhes') do |produto|
    expect(find("h1[itemprop='name']").text).to eql produto
end