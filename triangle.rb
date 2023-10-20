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
