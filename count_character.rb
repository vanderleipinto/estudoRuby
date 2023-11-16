#Count Uppercase, Lowercase, special character and numeric values

module Count
  
  def self.count(text)
    chars = Hash.new(0)
    text.chars.each do |i|
      chars[:Lowercase] += 1 if i.match?(/[a-z]/)
      chars[:Uppercase] += 1 if i.match?(/[A-Z]/)
      chars[:Numbers] += 1 if i.match?(/[0-9]/)
      chars[:Special] += 1 if i.match?(/\W/)      
    end
    puts chars
  end
end

puts "Digite o texto"
text = gets.chomp

Count.count(text)