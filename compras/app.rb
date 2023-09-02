require_relative 'produto'
require_relative 'mercado'

produto = Produto.new('Batata', 3.59)

produto.name = 'Batata'
produto.price = 5

mercado = Mercado.new(produto)

mercado.buy
