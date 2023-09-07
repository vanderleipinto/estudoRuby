# # Curso de Ruby - Ruby Avançado I (Aula 8)
# # https://www.youtube.com/watch?v=zYIHufP0UYU&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=8&ab_channel=OneBitCode

# Mission 1

# O ruby oferece um método chamado capitalize para tornar a primeira letra de uma string maiúscula
# Sabendo disso, crie uma lambda que recebe um nome como parâmetro e o imprime com a 
# primeira letra maiúscula. Esta lambda deverá ser salva dentro de uma variável que 
# será passada coargumento de um método chamado capitalize_name.

# Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em 
# cada uma delas um nome  diferente


cap = -> (name){
  name.capitalize()!
  puts name
}

def capitalize_name (name, surname, &cap)
  puts cap.call(name) ,cap.call(surname)
end

capitalize_name("vanderlei", "carvalho", &cap)


# Mission 2

# Crie um módulo chamado Person com as classes Juridic e Physical
# Ao executar a instrução: Person::Juridic.new('M. C. Investimentos','').add
# Seu código deverá retornar:

# namespaces ruby missão 2.Rb
# Pessoa Jurídica Adicionada
# nome: M. C. Investimentos
# cnpj: 4241.123/0001

module Person
  class Juridic
    def initialize (name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica adicionada'
      puts 'Nome: '+@name
      puts 'CNPJ: '+@cnpj
    end    
  end

  class Physical
    def initialize (name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts 'Pessoa Física adicionada'
      puts 'Nome: '+@name
      puts 'CPF: '+@cpf
    end    
  end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add


# Mission 3

# Pesquisqar o que é Proc em Ruby e descobrir as diferenças
# entre ele e o Lambda.

# Em Ruby, `proc` é uma classe que representa blocos de código que podem ser armazenados em variáveis ou passados como argumentos para métodos. Um `proc` é um objeto que encapsula um bloco de código Ruby e pode ser chamado como um método. É uma forma de criar funções anônimas (ou lambdas) em Ruby.

# Aqui está um exemplo simples de como criar e usar um `proc` em Ruby:


# # Criando um proc que multiplica um número por 2
# double = Proc.new { |x| x * 2 }

# # Chamando o proc com um argumento
# result = double.call(5)
# puts result # Isso imprimirá 10
# ```

# Neste exemplo, criamos um `proc` chamado `double` que recebe um argumento `x` e retorna `x * 2`. Em seguida, chamamos o `proc` usando `double.call(5)` e armazenamos o resultado em `result`.
# Os `proc` em Ruby são semelhantes às lambdas, mas há algumas diferenças sutis entre eles em relação à forma como tratam argumentos e retornos. Lambdas são mais rigorosos em relação ao número de argumentos, enquanto `proc` é mais flexível.
# Em resumo, `proc` é uma maneira de encapsular blocos de código para reutilização e flexibilidade em Ruby.

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


### MODULES (módulo modulo)

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
