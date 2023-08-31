###ARRAY
## Cria array vazia
estados = [] 
# estados = []

## Push coloca elemetos no final do array
estados.push('Espírito santo') 
# estados = ['Espírito santo']
estados.push('Rio Grande do Sul')
# estados = ['Espírito santo',]
##Pode-se adicionar um array com elementos que deseja dentro de estados.
estados.push('Tocantins','Ria de Junaro')
# estados = ['Espírito santo','Rio Grande do Sul','Tocantins','Ria de Junaro']


# estados = []
#insert permite adicionar elementos na posição indicada.
estados.insert(0,'Ceara','Paraíba')
estados.insert(estados.length,'Sao Paulo',"Bahia")

#Para acessar os dados usa-se a seguinte expressão.
estados[0] 
#'Ceará'
estados[2..4]
estados[2...4]
#["Espírito santo", "Rio Grande do Sul"]

#pode-se buscar de frente pra trás com números negativos.
puts estados[-2]
# "Sao Paulo"
estados[-4..-2]
#["Tocantins", "Ria de Junaro", "Sao Paulo"]

#primeiro elemento
estados.first
#ultimo elemento
estados.last

#número de elementos
estados.count

#está vazio?
estados.empty?
#false

#vefifica se está contido no array
estados.include?('Bahia')
#true

#deletar via index
estados.delete_at(2)
#'Espírito santo'
#ultimo pop, shift primeiro

###HASH 
# Um hash possui chave e valor
#Criar um hash
capitais = Hash.new
capitais = {}

#Adicionar um valor
capitais = {acre: 'Rio Branco', sao_paulo:'São Paulo', bahia:'Salvador' , alagoas:'Maceió', sergipe:'Aracajú'}

#listar as chaves
capitais.keys

#listar os valores
capitais.values

capitais[:sao_paulo]
capitais.values_at(:sao_paulo)
#'Sao Paulo'

capitais["São Paulo"]

#----------------------------------------------------------
###ITERAÇÕES

##Três pricipais métodos EACH MAP e SELECT

#EACH Percorre uma coleção de forma parecida ao for, porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição

names = ['Joãozinho' , 'Manoel', 'Juca']

name = 'Leonardo'

names.each do |name|
  puts "O nome é #{name}"
end
aulas = {'Aula 1' => 'liberada', 'Aula 2' => 'Liberada','Aula 3' => 'Liberada','Aula 4' => 'Liberada',}
aulas.each do |key, value| 
  puts "#{key} -- #{value}"
end

#MAP Cria um array baseando-se em valores (de acordo com os critérios na função callback) de outro array existente.

array = [1,2,3,4]

puts "\n executando .map multiplicando cada item por 2"
new_array = array.map do |value|
  value*2
end

puts "\n Array original"
puts array

puts "\n Novo Array "
puts new_array

puts "\n executando .map multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |value|
  value*2
end

puts "\n Array original"
puts array

#SELECT Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. traz como resultado somente os valores que passam nesta condição.

array = [1,2,3,4,5,6]

sel = array.select do |a|
  a >4
end
# sel = [5,6]

hash = { 0 => 'zero', 1=> 'um', 2=> 'dois',3 => 'três', 4 => 'quatro', 5 => 'cinco', 6 => 'seis',}

puts "Selecionado keys com valor maior que 4"
selection_key = hash.select do |key, value|
  key > 4
end

puts selection_key
