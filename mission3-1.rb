
# Curso de Ruby - Estruturas de Controle (Aula 3)
# https://www.youtube.com/watch?v=YLI2Ot2Mr34&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=3&ab_channel=OneBitCode

# Utilizando as estruturas de iteração e condição,
# crie uma calculadora que ofereça ao usuário a opção de:
# multiplicar, dividir, adicionar ou subtrair dois números.
# Não se esqueça de permitir que o usuário feche o programa.
#prepare to issue


valid_operator = ['+','-','*','/']
puts "Digite um número:"
num_1 = gets.chomp.to_i

# Declarei operator fora do loop do, pois se declarar dentro dele só vai valer lá dentro.
operator = "" 


loop do
  puts "Qual operação deseja efetuar? * / + ou -"
  operator = gets.chomp

  if valid_operator.include?(operator)
    break
  else
    print "Opção (#{operator}) inválida"
  end
end  

puts "Digite outro número:"
num_2 = gets.chomp.to_i

case operator
when '+'
puts "A soma de  #{num_1} e #{num_2} é: #{num_1+num_2}"
when '-'
puts "A subtração de  #{num_1} e #{num_2} é: #{num_1-num_2}"
when '*'
puts "A multiplicação de  #{num_1} e #{num_2} é: #{num_1*num_2}"
when '/'  
if num_2 == 0
  puts "Erro divisão por 0"
else
  puts "A divisão de  #{num_1} e #{num_2} é: #{num_1/num_2}"  
end  
end




## IF ELSE
# day = 'Monday'
# if day == 'Sunday'
#   lunch = 'special'  
# else
#   lunch = 'ordinary'
# end

##ELSIF
# puts "Lunch is #{lunch} today"

# day = 'Monday'
# if day == 'Sunday'
#   lunch = 'special'  
# elsif day == "Holiday"
#   lunch = 'later'
# else  
#   lunch = 'ordinary'
# end
 
# puts "Lunch is #{lunch} today"


##UNLESS
# product_status = :closed

# unless product_status == :closed
#   check_change = 'can'
# else
#   check_change = 'can not'
# end

# puts "You #{check_change} change the product"

## CASE

# puts "Digite o número do mês em que você nasceu"

# month = gets.chomp.to_i

# #1..3 significa intervalo de 1 a 3 inclusive

# case month
# when 1..3
#   puts 'Você nasceu no começo do ano'
# when 9..12
#   puts 'Você nasceu no final do ano'
# when 4..6
#   puts 'Você nasceu na primeira metade do anodo ano'  
# when 7..9
#   puts 'Você nasceu na segunda metade do anodo ano'  
# else
#   puts 'Não foi possível identificar.'    
# end

## LAÇOS DE REPETIÇÃO

# FOR

# fruits = ['Maçã', 'uva', 'morango', '']

# #percorre o array e cada elemento é representado por fruit
# for fruit in fruits
#   puts fruit
# end

## WHILE

# x = 1

# while x <=10
#   puts x
#   x += 1
# end


# DO/WHILE - LOOP

# count = 1

# loop do
#   puts "Count = #{count}"
#   break if count == 10
#   count += 1
# end  

# TIMES

# 10.times do
#   puts "Hello"
# end

## ITERAÇÃO E CONDICIONAL

# result = ''

# loop do
#   puts result

#   puts 'Selecione uma das seguintes opções:'
#   puts '1 - Descobrir a idade de uma pessoa'
#   puts '0 - Sair'
#   print 'Opção'

#   option = gets.chomp.to_i

#   if option == 1
#     print 'Digite o ano de nascimento:'
#     year_of_birth = gets.chomp.to_i
#     print 'Digite o ano atual:'
#     current_year = gets.chomp.to_i
#     age = current_year - year_of_birth
#     result = "Quem nasceu no ano de #{year_of_birth}, tem #{age} ano em #{current_year}"
        
#   elsif option == 0
#     break    
#   else
#     result = 'Opção inválida'
#   end
#   #Comando que limpa o console
#   system "clear"
# end
