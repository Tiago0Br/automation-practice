Dado('que estou na pagina de suporte') do
    visit "/"
    find("#contact-link a").click
end

Quando('eu submeto o formulario de contato com os seguintes dados:') do |dados|
    dados.hashes.each do |dado|
        find("#id_contact").click
        find("#id_contact option", text: dado[:assunto]).click
        fill_in(id: "email", with: dado[:email])
        fill_in(id: "id_order", with: dado[:pedido])
        fill_in(id: "message", with: dado[:mensagem])
        find("#submitMessage").click
    end
end
  
Entao('a mensagem deve ser enviada com sucesso') do
    alert = find("#center_column .alert-success").text
    expect(alert).to include "Your message has been successfully sent to our team"
end

Quando('eu submeto o formulario de contato com os seguintes dadoss:') do |dados|
    dados.hashes.each do |dado|
        sleep 5
        find("#uniform-id_contact select").click
        find("#uniform-id_contact select option", text: dado[:assunto]).click
    end
end