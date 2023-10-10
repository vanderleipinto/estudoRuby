#https://exercism.org/tracks/ruby/exercises/acronym/edit
class Acronym
  def self.abbreviate(phrase)
    words = phrase.split(/[\s-]/)
    words.map{|word| word[0]}.join.upcase    
  end
end
