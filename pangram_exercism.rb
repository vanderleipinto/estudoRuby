#https://exercism.org/tracks/ruby/exercises/pangram/edit
module Pangram 
  def self.pangram?(text)
    missing = ('a'..'z').to_a    
    text.downcase.chars.map{|i| missing.delete(i)}
    missing.length > 0 ? false : true      
  end
end

#enhanced

#class Pangram
#  def self.pangram?(phrase)
#    ('a'..'z').all? { |e| phrase.downcase.include?(e) }
#  end
#end
