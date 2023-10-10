#https://exercism.org/tracks/ruby/exercises/matrix/edit 
class Matrix
  def initialize(matrix)
    substring = matrix.split("\n") #divide strings separadas por quebra de linha
    @matrix = substring.map do |substring|
      numbers = substring.split.map(&:to_i)
      numbers
    end  
    debug @matrix
  end

  def row(row)
    @matrix[row-1].flatten
  end

  def column(col)
    result = []
    @matrix.map do |line|
      result.push(line[col-1])
    end
  result    
  end
end

#alternative version

#class Isogram
#  def self.isogram?(phrase)
#    letters = phrase.downcase.scan(/\w/)
#    letters == letters.uniq
#  end
#end
