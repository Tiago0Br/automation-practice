Before('@login') do
    usuario = YAML.load_file(File.join(Dir.pwd, "features/support/config/login.yaml"))
    visit "/"
    click_on "Sign in"
    login_with(usuario['login'], usuario['password'])
end

After do |scenario|
    if scenario.failed?
        screenshot = page.save_screenshot("logs/error.png")

        Allure.add_attachment(
            name: "Error",
            type: Allure::ContentType::PNG,
            source: File.open(screenshot)
        )
    end
end

After('@lista_desejos') do
    @minha_conta.lista_de_desejos.excluir(@nome)
end

Before('@comprar') do
    @compra = Comprar.new
end