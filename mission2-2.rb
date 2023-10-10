# Curso de Ruby - Conceitos Básicos (Aula 2)
# https://www.youtube.com/watch?v=JH_aEjoD4C0&list=PLdDT8if5attEOcQGPHLNIfnSFiJHhGDOZ&index=2&ab_channel=OneBitCode
#use as issue
puts "Digite um número:"
num_1 = gets.chomp.to_i
puts "Digite outro número:" 
num_2 = gets.chomp.to_i


puts "A soma de  #{num_1} e #{num_2} é: #{num_1+num_2}"
puts "A subtração de  #{num_1} e #{num_2} é: #{num_1-num_2}"

if num_2 == 0
  puts "Erro divisão por 0"
else
  puts "A divisão de  #{num_1} e #{num_2} é: #{num_1/num_2}"  
end
