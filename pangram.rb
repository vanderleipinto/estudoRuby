class Pangram

  def initialize(text)
    @arr = text.downcase.chars
    @missing = ('a'..'z').to_a
  end
    

  def pan

    @arr.map do |i|
      @missing.delete(i)
    end

    if @missing.length > 0
      print @missing  
    else
      print "The string is a pangram."
    end
  end
end


puts "Digite uma frase"
text = gets.chomp

puts Pangram.new(text).pan
