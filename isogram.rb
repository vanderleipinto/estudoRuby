# https://exercism.org/tracks/ruby/exercises/isogram/edit
class Isogram   
  def self.isogram?(input)
    word = input.gsub(/\s/, '').downcase
    counts = Hash.new(0)
    
    word.each_char do |char|
       return false if counts[char] > 0    
        if char.match?(/[a-z]/)
          counts[char] += 1
        end
    end    
    return true
  end   
end
