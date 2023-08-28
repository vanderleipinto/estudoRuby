# Variável local 
# def foo
#   local = 'local é acessada apenas dentro deste método'
#   print local
# end

# foo

# Variável global

# class Bar
#   def foo
#     $global =0;
#     puts $global
#   end
# end

# class Baz
#   def qux
#     $global +=1;
#     puts $global
#   end
# end

# bar = Bar.new
# baz = Baz.new

# bar.foo
# baz.qux
# baz.qux
# baz.qux
# baz.qux
# baz.qux
# puts $global
# $global = 70
# puts $global
# ----------------------------

# variaveis de classes geral @@

# class User 
#   @@user_count = 0
#   def add(name)
#     puts "User #{name} adicionado"
#     @@user_count +=1
#     puts @@user_count
#   end
# end
# first_user = User.new
# first_user.add('JOao')

# second_user = User.new
# second_user.add('Maria')

# variaveis de classes específica @

class User 
  def add(name)
    @name = name
    puts "User adicionado"
    hello
  end

  def hello
    puts "Seja bem vindo, #{@name}"
  end
end

user = User.new
user.add('Vanderlei');

# Atributos

class Dog
  #cria automaticamente esses atributos
  attr_accessor :name, :age
end

dog = Dog.new
dog.name = 'Kate'
puts dog.name

#CONSTRUTORES


  class Person
    def initialize(name, age)
      @name = name
      @age = age
    end

    def check
      puts "Instância da classe iniciada com os valores:"
      puts "Nome = #{@name}"
      puts "Idade = #{@age}"
    end
  end

  person = Person.new('João', 12)
  person.check