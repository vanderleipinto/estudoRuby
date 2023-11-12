#https://exercism.org/tracks/ruby/exercises/difference-of-squares/edit
class Squares
    def initialize(num)
      @num = num
      
      @summ = 0
    end
  def square_of_sum
    sum = 0
    for n in 1..@num do
      sum += n      
    end
     return sum**2    
  end

  def sum_of_squares   
    sum = 0
    for n in 1..@num do
      sum += n**2      
    end
     return sum
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
    
