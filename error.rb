num_1 = gets.chomp.to_i
num_2 = gets.chomp.to_i

operator = gets.chomp
result=0

puts "o operador eh #{operator}"

begin
    if operator == '+'
      result = num_1+num_2
    elsif operator == '/'
      result = num_1/num_2
    end
  
rescue ZeroDivisionError => r
  puts "Erro: Divisão por zero"
end
puts result