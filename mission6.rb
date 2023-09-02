# POO - Programação Orientada a Objeto

# É um paradigma de programação criado para lidar com softwares grandes e complexos. 
# É um conceito seguido por várias outras liguagens de programação.

##Abstração
# Ação de abstrair uma entidade do mundo real e tranformá-la em uma classe.

##Encapsulamento
# Ato de dividir um programa em diversas partes tornando-o flexível,
# fácil de modificar e incluir novas funcionalidades.

##Herança
# Habilidade de criar uma Classe com características de outra existente.
# A Herança promove o reuso e reaproveitamento de códigos
# Fusca < Carro


##PPolimorfismo: O polimorfismo permite que objetos de classes diferentes
# sejam tratados de maneira uniforme, desde que implementem a mesma interface
# ou herdem da mesma classe base. Isso facilita a criação de código flexível e genérico.

##Classe
# Tendo como exemplo o objeto carr, pense em uma classe como a 'planta' deste carro.
# com ela é possível construir vários carros.

#Objeto: Um objeto é uma instância de uma classe. É uma representação concreta de uma 
# entidade ou conceito definido pela classe. Por exemplo, você pode criar objetos individuais
# a partir da classe "Carro", como um objeto "carro1" que é vermelho e um objeto "carro2" que é azul.
# Em POO chamamos as informações de ATTRIBUTES e os comportamentos de METHODS.

#a seguir uma classe com dois métodos. ---------------------------------
class Computer
  def turn_on
    'Turn on the computer'
  end
  def shutdown
    'Shutdown the computer'
  end
end

# criação do objeto
computer = Computer.new

#usando o método do objeto
puts computer.turn_on


# a seguir um exemplo de herança ---------------------------------

#criação da classe pai
class Animal 
  def pular
    puts 'Jump'
  end
  def dormir
    puts 'zzzzz'
  end
end

#classes que herdam de Animal
class Cachorro < Animal
  def latir
    puts 'Au Au'
  end
end

class Gato < Animal
  def meow
    puts 'Meow'
  end
end

#usando os métodos de Cachorro

cachorro = Cachorro.new
cachorro.dormir
cachorro.latir

##Polimorfismo

class Instrumento
  def escrever
    puts 'Escrevendo (método do pai)'
  end
end

class Teclado < Instrumento
  def escrever
    puts 'Escrevendo com o teclado'
    # super chama o método do pai dentro desse método
    super
  end
end

class Lapis < Instrumento
  #quando criamos o mesmo método do pai, ele sobreescreve>
  def escrever
    puts 'Escrevendo a lapis'
  end
end

class Caneta < Instrumento
  def escrever
    puts 'escrevendo à caneta'
  end
end

keyboard = Teclado.new

keyboard.escrever

