Quando('eu clico na opcao de enviar a um amigo, preencho os campos com {string} e {string} e envio') do |nome, email|
    click_on "Send to a friend"
    fill_in(id: "friend_name", with: nome)
    fill_in(id: "friend_email", with: email)
    click_on("Send")
end

Entao('o produto deve ser compartilhado com sucesso') do
    msg = find(".fancybox-skin h2 + p").text
    expect(msg).to include "Your e-mail has been sent successfully"
    find(".fancybox-inner p .button").click
end