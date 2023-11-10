# Missão 1
# Crie uma expressão regular que faça o casamento padrão com o 
# número de telefone no texto a seguir: 
# "Olá, tudo bem? meu whatsapp é (99)74321-1234"

/\(\d{2}\)\d{5}\-\d{4}/.match("Olá, tudo bem? meu whatsapp é (99)74321-1234")

# Missão 2
# Em uma classe chamada Carro, crie um método público chamado get_km
# que recebe como parâmetro a seguinte informação:
# "Um fusca de cor amarela viaja a 80km/h"
# O método get_km deve chamar um método privado com o nome de find_km. 
# Este deve localizar e retornar o casamento de padrão 80km/h
# No final imprima este retorno

class Carro
  attr_accessor :msg 
  def get_km
    find_km
  end

  private 
  def find_km
    puts /\d+km\/h/.match(msg)
  end
end
#o d+ significa um ou mais dígitos consecutivos

carro = Carro.new
carro.msg="Um fusca de cor amarela viaja a 80km/h"
carro.get_km
    

# -------------------------------------------------

# Regex 

# As expressões regulares são notações para representar padrões em strings,
# elas servem para validar entradas de dados ou fazer busca e extração de 
# informações em texto.

# 3 maneiras de utilizar:

# a mais comum
/abcd/ 
 
%r{abcd}

Regexp.new('expressão')

# exemplos

/by/ =~ 'ruby'
# retorna 2. ou seja, a posição onde ele encontrou a expressão

##Método Match
# Retorna um objeto do tipo MatchData, contendo todos os resultados 
# do casamento de padrão

phrase = "Hellow, how are you?"
# aqui vai achar exatamente o valor, embora guarde dentro dele toda a phrase
match_data = /how/.match(phrase) 

# já aqui vai mostrar o que está antes do match
match_data.pre_match
#retorna "Hellow, " tudo que vem antes de how

match_data.post_match
# retorna " are you" tudo que vem depois do match

# Caracteres especiais dentro de Regex (),[],{},.,?,+,*
# Caso o padrão que você procura seja um metacharacter, utilize o símbolo
# de escape \ para realizar a busca 

/\?/.match('Tudo bem?')

/bem\!\!\!/.match('Muito bem!!!')

##Character Classes
# Quando se deseja que nessa posição tenha a letra x ou um range de letras


# procura na frase começando com [t]exto
/[t]exto/.match('texto começando com t')

#já aqui ele procura começando com range de a a z (minúsculo)
/[a-z]exto/.match('texto começando com t')

#para range de números
/[2-5]exto/.match('123')
#retorna o primeiro que ele achar 2

#quando se quer pegar qualquer decimal
/\d/.match('Vanderlei comprou 5 chocolates A5')
# retorna 5, já que d representa decimal

#padrão duplo
/A\d/.match('Vanderlei comprou 5 chocolates A5')
#aqui ele retorna A5

#buscando telefones usando repetições entre chaves {}
/[0-9]{2}-[0-9]{8}/.match('63-12345678')
# ou substituímos o range de números por \d
/\d{2}-\d{8}/.match('63-12345678')

#já com match? ele retornará true ou false
/[A-Z]{3}-\d{4}/.match?('ABC-1524')
#retorna true

### TIME

# O Ruby conta com uma classe chamada Time para representar datas e horas.

# para imprimir o horário atual
time = Time.now
# time  = 2023-09-08 15:38:44.829224354 -0300 o tempo que ela foi criada

# time.wday time.min time.hour pode-se destrinchar de várias maneiras.
# podemos destrichar com padrão também

time.strftime('%d/%m/%y')
# retorna a data "08/09/23"

time.saturday? 
#retorna true or false

time2 = Time.now


###  MISSING
# Ele é utilizado para interceptar chamadas a métodos que não existem.
# Toda vez que forem chamados métodos que não existem, esse método será chamado no lugar

class Fish
  def method_missing(method_name)
    puts "Fish don't have #{method_name} behavior"
  end
  
  def swim
    puts "Fish is swimming"
  end
end

fish = Fish.new
fish.swim
fish.walk
#saída
#Fish is swimming
# Fish don't have walk behavior

##SELF 
# No ruby, self é uma variável especial que aponta para o objeto atual

class Foo
  attr_accessor :teste
  def bar
    puts self    
  end
end

foo = Foo.new
puts foo
foo.bar
#<Foo:0x00007f81daca8da8>
#<Foo:0x00007f81daca8da8>

# Com o self é possível criar métodos de classe, que não precisam de uma instância
# para serem chamados.

class None
  def self.bar
    puts 'Fui chamado sem instância'
  end
end

#chama o método sem ter que criar uma instância
None.bar

class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
end

pen = Pen.new
pen.color = 'blue'
pen.pen_color


# Métodos Private e Protected

# Por padrão, todos os métodos definidos serão públicos.
# Isso significa que eles podem ser acessados por qualquer um.
# Mas além dos métodos públicos, existem outros dois tipos de métodos chamados
# private e protected

#private
class Pri
  def call_private
    bar
  end

  private
  def bar
    puts "Private method"
  end
end

pri = Pri.new
pri.call_protected
#Abaixo não conseguiremos chamar o método privado
# pri.bar

#protected
class Pro
  def call_protected(instance)
    instance.bar
  end
  protected
  def bar
    puts "Protected method"
  end
end

instance_1 = Pro.new
instance_2 = Pro.new

instance_1.call_protected(instance_1)
instance_1.call_protected(instance_2)

