#https://exercism.org/tracks/ruby/exercises/difference-of-squares/edit
class Squares
    def initialize(num)
      @num = num
    end
  def square_of_sum
    sum = 0
    1.upto(@num){|n| sum += n}
    sum**2    
  end

  def sum_of_squares   
    sum = 0
    1.upto(@num){|n| sum += n**2}
    sum
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
    
