# # Curso de Ruby - Ruby Avançado I (Aula 8)
# # https://www.youtube.com/watch?v=zYIHufP0UYU&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=8&ab_channel=OneBitCode


# # BLOCKS

# Um bloco pode ser entendido como uma função anônima, ou seja, função sem nome.
# é definido entre do..end ou colchetes e da mesma forma que os métodos,
# pode receber parâmetros para sua execução

10.times {puts 'teste'}

sum = 0
numbers = [5 , 10 , 22 , 78]

numbers.each {|number| sum += number}
puts sum

#multiplas linhas

foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key  = #{key}"
  puts "value  = #{value}" 
  puts "key  * value = #{key*value}"
end

#método que recebe um bloco como parâmetro
def foo
  #yield automaticamente executa o bloco que foi passado como parâmetro
  yield
  yield
end

foo {puts "Executa o bloco"}

# nem todo método precisa receber um bloco, podemos verificar se
# um bloco recebe um método ou não

def foa
  if block_given?
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foa
foa {puts "Com Parâmetro do tipo bloco"}

# só pode passar um bloco por método. no parâmetro ele é identificado 
# com '&'. Para executar o bloco usamos o .call ou yield

def boa (name, &block)
  @name = name
  block.call
  yield
end

boa ('Vanderlei') {puts "Olá #{@name}"}


#podemos passar um bloco mais complexo como parâmetro

def coo (numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key,value)
    end
  end
end

numbers = { 2=> 2, 3=>3, 4=>4}

coo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "#{key} - #{value} = #{key - value}"
  puts '...'
end


###LAMBDA

# Lambdas são similares aos blocks, mas podem ser salvas em 
# variáveis para serem reutilizadas.

first_lambda = lambda {puts 'My first lambda'}
first_lambda.call

#lambda também pode ser declarada com "arrow function"  ->

second_lambda = -> {puts 'my second lambda'}
second_lambda.call

# também podemos executar lambdas passando parâmetros.
third_lambda = -> (names){names.each{|name| puts name}}
names = ['joão', 'maria' , 'pedro']
third_lambda.call(names)

# Também podemos ter um lambda de multiplas linhas, nesse
# caso ele não pode ser declarado com -> mas sim com lambda


fourth_lambda = lambda do |numbers|
  puts "Fourth Lambda"
  index = 0
  puts "Número atual + próximo número"
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index+1]})"
    puts numbers[index] + numbers[index+1]
    index+=1
  end
end
 
numbers = [1,2,3,4,5]

fourth_lambda.call(numbers)

# passando Lambdas como argumentos

def lambda_as_argument(lambda_a, lambda_b)
  lambda_a.call
  lambda_b.call  
end

  lambda_a = -> {puts 'Lambda a '}
  lambda_b = -> {puts 'Lambda b '}

lambda_as_argument(lambda_a, lambda_b)


### MODULES

# Modules possuem 2 funções:
# 1 NAMESPACE
#    Serve como um container para agrupar objetos relacionados
#    (classes, constantes, métodos ou outros mudules)

module ReverseWorld
  def self.reverte text
    print text.reverse.to_s
  end

  class Imprimir
    def call text
      print "--Impresso na classe--\n"
      print text
      print "\n--Impresso na classe--"
    end
  end  
end

ReverseWorld::reverte "o resultado é"
puts "o resultado é"
imprimir = ReverseWorld::Imprimir.new

imprimir.call('Texto para imprimir')


  
# 2 - MIXINS
#   Serve para incluir funcionalidades extras às classes

module ImpressaoDecorada
  def imprimir text
    decoração = '#' * 50
    puts decoração
    puts text
    puts decoração
  end
end

module Pernas
  include ImpressaoDecorada

  def chute_frontal
    imprimir 'Chute Frontal'
  end

  def chute_lateral
    imprimir 'Chute Lateral'
  end
end

module Bracos
  include ImpressaoDecorada

  def jab_de_esquerda
    imprimir 'Jab de esquerda'
  end

  def gancho
    imprimir 'gancho'
  end
end

class LutadorX
  include Pernas
  include Bracos
end

class LutadorY
  include Pernas
end

lutadorx = LutadorX.new
puts "\n"
lutadorx.chute_frontal
lutadorx.jab_de_esquerda

lutadory = LutadorY.new
puts "\n"
lutadory.chute_frontal
lutadory.chute_lateral


puts "\n \n \n ---------------- "


# class Matrix
#   attr_reader :rows
#   attr_reader :columns

#   def initialize(text)
#     @rows = text.lines.map { |l| l.split.map(&:to_i) }
#     @columns = rows.transpose
#   end

#   def row(offset)
#     rows[offset-1]
#   end

#   def column(offset)
#     columns[offset-1]
#   end
# end