#https://exercism.org/tracks/ruby/exercises/series/edit
class Series
  def initialize(total)
    @total = total
  end

  def slices(num)
    raise ArgumentError, "ArgumentError" if num > @total.size
    ret = []
    @total.split('').each_cons(num) {|a| ret << a}
    ret.map{|sub| sub.join('')}
  end
end
