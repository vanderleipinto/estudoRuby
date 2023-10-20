#https://exercism.org/tracks/ruby/exercises/triangle/edit
class Triangle
  def initialize(triangle)
    @triangle = triangle
  end
  def equilateral?
    if !@triangle.include?(0) 
      @triangle[0] == @triangle[1] &&  @triangle[2] == @triangle[0] 
    end
  end

  def isosceles?
    if !@triangle.include?(1)
      @triangle[0] == @triangle[1] || @triangle[1] == @triangle[2] || @triangle[0] == @triangle[2]
    end
  end
  def scalene?
    debug triangle?
    triangle? && (@triangle[2]==2
    @triangle[0] != @triangle[1] && @triangle[1] != @triangle[2] && @triangle[0] != @triangle[2])
  end

  def triangle?
    @triangle.all?(&:positive?) &&
    @triangle.permutation(3).all?{|a,b,c| c <= a+b}
  end
end

#alternative version
class Triangle
#   attr_reader :sides
#   def initialize(sides)
#     @sides = sides
#   end
#   def equilateral?
#     triangle? && sides.uniq.count == 1
#   end
#   def isosceles?
#     triangle? && sides.uniq.count <= 2
#   end
#   def scalene?
#     triangle? && sides.uniq.count == 3
#   end
#   def triangle?
#     @sides.all?(&:positive?) &&
#       @sides.permutation(3).all? { |(a, b, c)| a <= b + c }
#   end
# end
