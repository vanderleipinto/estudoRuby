class Car
  
  attr_reader :color , :year
  def initialize(color, year)
    @color = color
    @year = year
    @valor = 30000
  end

  private 
  #esse método só é acessado dentro da classe
  def desconto
    @valor = 30000*0.90
  end

  public
  #esse método tem acesso livre
  def get_desconto
    this.desconto
  end

end

gol = Car.new('red', 1995)

puts gol.color

puts gol.year

puts gol.get_desconto

class Pessoa
  def initialize(nome)
    @nome = nome # @nome é uma variável de instância
  end

  def cumprimentar
    puts "Olá, eu sou #{@nome}!"
  end
end



pessoa1 = Pessoa.new("Alice") # cria um objeto da classe Pessoa com o nome "Alice"
pessoa1.cumprimentar # chama o método cumprimentar do objeto pessoa1
# Saída: Olá, eu sou Alice!


