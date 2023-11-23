alphabet = ('a'..'z').to_a

puts "Digite a frase"
frase = gets.chomp.chars

frase.each {|c| alphabet.delete(c.downcase)}

print alphabet.join('') 
