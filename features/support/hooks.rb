Before do
    page.current_window.resize_to(1366, 768)
end

Before('@comprar') do
    @compra = Comprar.new
end