# Curso de Ruby - Programação Orientada a Objetos II (Aula 7)
# https://www.youtube.com/watch?v=W5VrvOCXgy0&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=7&ab_channel=OneBitCode


### Escopo das variáveis
#O escopo define onde a variável vai estar disponível dentro do prorama
# No ruby existem 4 tipos
# Variável Local
# Variável Global
# Variável de Classe
# Variável de Instancia

## Variável local 
# declarada com letra minúscula ou sublinhado
# se for declarada dentro de uma classe, ela só vai ser acessada dentro da classe
# se for declarada dentro do método, só vai ser acessada dentro do método.

## Variável Global
# Pode ser acessada em qualquer lugar do programa. Seu uso é FORTEMENTE DESENCORAJADO 
# pois além de ser visível em qualquer lugar do código, 
# também pode ser alterada em inúmeros locais ocasionando dificuldades

# Variável de classe
# Declarada com o prefixo @@
# Pode ser acessada em qualquer lugar da classe onde foi declarada e seu 
# valor é compartilhado entre todas as instancias de sua classe.

# Variável de instância
# Semelhante a variável de classe, tendo como única diferença o valor que não é
# compartilhado entre todas as instancias.

#Construtores

# variavel local

def foo
  local = 'local é acessada apenas dentro deste método'
  puts local 
end

# Variável global
class Bar
  def foo
    $global = 0
    puts $global
  end
end

class Baz
  def qux
    $global +=1
    puts $global
  end
end

bar = Bar.new
baz = Baz.new

bar.foo
baz.qux
baz.qux
baz.qux
baz.qux
puts $global

# Variável de classe (menos comum)

class User
  @@user_count = 0
  def add(name)
    puts "User #{name} adicionado"
    @@user_count +=1
    puts @@user_count
  end
end

# Mesmo criando usuários diferentes, a mesma variável é incrementada
first_user = User.new
first_user.add('João')
second_user = User.new
first_user.add('Mario')

# Variável de instância

class User
  def add(name)
    @name = name    
    puts "User adicionado"
  end

  def hello
    puts "Seja bem vindo, #{@name}"
  end  
end
#cada objeto vai ter a sua variável
user = User.new 
user.add('João')

##ATRIBUTOS
#São sempre privados e começam com @, 
#eles só podem ser alterados pelos métodos de um objeto

#padrão
class Dog
  def name
    return @name
  end

  def name= name
    @name = name  
  end
end
dog = Dog.new
dog.name = 'Marlon'
puts dog.name

#usando acessor 
class Cat
  attr_accessor :name, :age
  #para cada atributo passado ele vai criar os dois métodos
  #um para setar o valor e outro para acessar
end


dog = Dog.new
dog.name = 'Marlon attr_acessor'
puts dog.name

#construtores

#construtores

# Toda vez que a instãncia de uma classe é criada, 
# o Ruby procura por um método chamado initialize.
# Você pode criar esse método para especificar 
# valoes iniciais padrões durante a construção do objeto.

class Person
  def initialize (name, age)
    @name = name
    @age = age
  end

  def check
    puts "Instancia iniciada com os valores"
    puts "Name #{@name}"
    puts "Name #{@age}"
  end
end

person = Person.new('João', 19)

