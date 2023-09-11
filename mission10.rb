# Curso de Ruby - Projeto Final (Aula 10)
# https://www.youtube.com/watch?v=DPHeSXHnKTs&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=10&ab_channel=OneBitCode

puts "--Lista de compras---"

file = File.open('shopping-list.txt')
#abaixo ele devolve linha por linha
file.each do |line|
  puts line
end

# abaixo o argumento 'a' significa append, ou seja, ele vai adicionar o texto no arquivo
#print não pula linha
File.open('shopping-list.txt', 'a') do |line|
  line.puts('Arroz')
  line.puts('feijão')
  line.print('azeite')
  line.print(' de ')
  line.print('oliva')
end

###CHAMADAS WEB
#Para isso usamos a classe Net::HTTP

require 'net/http'

example = Net::HTTP.get('example.com', '/index.html')

# cria o arquivo se ele não existir, abre se ele existir e 'w' escreve
File.open('example.html', 'w') do |line|
  line.puts(example)
end

https = Net::HTTP.new('reqres.in', 443)
#para fazer chamadas https
https.use_ssl = true

response = https.get('/api/users')
#status code
puts response.code
#status message
puts response.message
#body (json)
puts response.body

File.open('json.json', 'w') do |line|
  line.puts(response.body)
end

