class MinhaConta
    include Capybara::DSL
    def acessar
        find("a.account").click
    end
    def lista_de_desejos
        Wishlists.new
    end
end