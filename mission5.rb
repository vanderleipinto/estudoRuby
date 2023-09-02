#Curso de Ruby - Métodos e Gems (Aula 5)
#https://www.youtube.com/watch?v=W2hKFDBlgCc&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=6&ab_channel=OneBitCode

#Métodos

#Metodos são uma forma de organizar instruções em um
#programa, permitindo que trechos de códigos sejam reutilizados.

def talk 
  puts 'Olá, como você está?'
end

talk

# o método abaixo tem recebe um parâmetro
def hello name
  puts "olá#{name}"
end

hello "Leonardo"
#.> Olá Leonardo

#Abaixo o parâmetro padrão, caso não seja enviado um argumento, esse será o valor
def signal (color = 'Vermelho')
  puts "O sinal está #{color}"
end

signal
signal 'Amarelo'

#Retorno

#a ultima linha vai ser retornada caso não haja a expressão return
def compare (a,b)
  a>b
end

a = 1
b = 2

result = compare a,b

puts "O resultado da comparação é '#{result}'"

### GEMS

#GEM é um pacote que oferece funcionalidades a fim de resolver
#uma necessidade específica de um programa Ruby
#Pense como o conceito de biblioteca em outras linguagens de programação

# Para instalar uma gem execute no terminal:
# >> gem install os

require 'os'

def my_os
  if OS.windows?
    'Windows'
  elsif OS.linux?
    'Linux'
  elsif OS.mac?
    'OSX'
  else
    'não consegui identificar'
  end
end

puts "cores = #{OS.cpu_count} bits = #{OS.bits} e o sistema operacional é #{my_os}"
puts OS.report

#Para listar as gems usa-se o comando
 #>> gem list

 #Em grandes projetos usamos o budler para instalar as gems