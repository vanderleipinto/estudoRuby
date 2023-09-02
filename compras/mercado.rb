require_relative 'produto'

class Mercado
  @produto = Produto.new('','')
  def initialize(produto)
    @produto = produto
  end

  def buy
    puts "Você comprou o produto #{@produto.name} no valor de #{@produto.price}"
  end    
end