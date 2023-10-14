#https://exercism.org/tracks/ruby/exercises/scrabble-score/edit
class Scrabble
  def initialize(word)
    @word = word.upcase
    @points = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1, "R"=>1, "S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "C"=>3, "M"=>3, "P"=>3, "F"=>4, "H"=>4, "V"=>4, "W"=>4, "Y"=>4, "K"=>5, "J"=>8, "X"=>8, "Q"=>10, "Z"=>10}    
  end
  def score
    sum = 0
    @word.upcase.each_char do |char|
      sum += @points.fetch(char)      
    end
  sum
  end
end

#alternative version
# class Scrabble
#   LETTER_VALUES = {
#     /[AEIOULNRST]/ => 1,
#     /[DG]/ => 2,
#     /[BCMP]/ => 3,
#     /[FHVWY]/ => 4,
#     /[K]/ => 5,
#     /[JX]/ => 8,
#     /[QZ]/ => 10
#   }
#   def initialize word
#     @word = word.to_s.upcase
#   end
#   def self.score word
#     (new word).score
#   end
#   def score
#     word_score = 0
#     LETTER_VALUES.each do |letters, value|
#       word_score += (@word.scan(letters).count * value)
#     end
#     word_score
#   end
# end
