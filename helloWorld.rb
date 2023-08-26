puts 'Hello Vanderlei'


# hash é como se fosse um objeto com chave e valor

 obj_hash = {nome: 'Vanderlei', idade: 41, linguagem: 'pt-Br'}
 
# 
puts obj_hash[:nome] , obj_hash[:idade]

# name = gets.chomp

# puts "Hello #{name}!"

# puts 'Digite o seu nome';
# nome = gets.chomp;
# puts 'Digite o sua idade';
# idade = gets.chomp.to_i;


# puts "seu nome é #{nome} e sua idade é #{idade}"

# CONDICIONAIS

# day = false;
# lunch = 'normal'
# if day
#   lunch = 'special'
# end

# puts "Lunch is #{lunch} today"


# unless é equivalente a if not ou if !value
# rain = true;

# unless rain
#   puts 'Sair de casa'
# else
#   puts 'Ficar em casa'
# end

# puts 'digite o numero do mês'

# month = gets.chomp.to_i

# case month
# when 1..6
#   puts 'Primeiro semestre'
# when 7..12
#   puts 'Segundo semestre'
# else
#   puts 'não é ano'
# end

# 1..12 significa intervalo entre 1 e 12 (inclusive)

# ITERAÇÕES

# fruits = ['banana', 'maçã' , 'uva'];

# for item in fruits
#   puts item
# end

# i = 1;

# while i<=10
#   puts i;
#   i += 1
# end

# DO WHILE representado como LOOP
# count = 0
# loop do
#   puts count
#   if count == 100
#     break
#   end
#   count +=1;
# end

# count = 0
# 10.times do
#   puts "Hello #{count}"
#   count +=1
# end

# loop de calcular idade até op == 'n'

# loop do 
#   puts 'Digite o ano atual'
#   ano_atual = gets.chomp.to_i
#   puts 'Digite o ano em que nasceu'
#   ano_nascimento = gets.chomp.to_i

#   idade = ano_atual - ano_nascimento

#   puts "Sua idade é #{idade}"

#   puts 'Gostaria de continuar? s/n'
#   op = gets.chomp;

#   if op == 'n'
#     break
#   end
# end


# loop do
#   puts 'Digite o primeiro número'
#   num_1 = gets.chomp.to_i
#   puts 'Digite o segundo número'
#   num_2 = gets.chomp.to_i
#   puts 'Qual operação deseja fazer * , / , + ou -?'
#   op = gets.chomp

#   case op
#   when '*'
#     puts "Produto é: #{num_1 * num_2}"
#   when '+'
#     puts "O resultado da soma é #{num_1+num_2}"
#   when '-'
#     puts "O subtraendo é #{num_1-num_2}"
#   when '/'
#     if num_2==0
#       puts 'Não existe divisão por 0'
#     else
#       puts "O dividendo é #{num_1 / num_2}"    
#   end  
#   else
#     puts 'opção inválida';
#   end
#   puts 'Gostaria de continuar? s/n'
#   op = gets.chomp;

#   if op == 'n'
#     break
#   end

# end
  

# Arrays

# obj_hash = {}
# i=0

# 3.times do
#   puts "Digite a #{i}ª chave: "
#   key = gets.chomp 
#   puts "Digite o #{i}º valor"
#   value = gets.chomp
#   obj_hash[key]=value
#   i += 1
# end

# puts obj_hash


