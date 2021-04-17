class ShareModal
    include Capybara::DSL
    def abrir
        click_on "Send to a friend"
    end

    def adicionar_amigo(nome, email)
        fill_in(id: "friend_name", with: nome)
        fill_in(id: "friend_email", with: email)
        click_on("Send")
    end

    def msg_sucesso
        find(".fancybox-skin h2 + p").text
    end

    def fechar_alerta
        find(".fancybox-inner p .button").click
    end
end