Before do
    page.current_window.resize_to(1366, 768)
end

Before('@compra') do
    @compra = Comprar.new
end