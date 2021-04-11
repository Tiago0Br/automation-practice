class Review
    include Capybara::DSL

    def nova
        click_on "Write a review"
    end

    def adicionar_nota(estrelas)
        find("a[title='#{estrelas}']").click
    end

    def adicionar_avaliacao(titulo, conteudo)
        fill_in(id: "comment_title", with: titulo)
        fill_in(id: "content", with: conteudo)
        find("#submitNewMessage").click
    end

    def msg_avaliacao_enviada
        all(".fancybox-inner p")[0].text
    end
end