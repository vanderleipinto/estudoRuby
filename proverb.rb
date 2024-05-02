# https://exercism.org/tracks/ruby/exercises/proverb/edit

class Proverb
  def initialize(*array, qualifier: nil)
    @first = qualifier.nil? ? array.first : qualifier + " " + array.first
    @array = array
  end

  def to_s
    ret = ""
    @array.each_cons(2) { |words| ret << "For want of a %s the %s was lost.\n" % words }
    ret << "And all for the want of a %s." % @first
  end
end

# reduced
# class Proverb
#   attr_reader :to_s

#   def initialize(*chain, qualifier: nil)
#     @to_s = chain.each_cons(2).inject('') { |out, e| out << "For want of a #{e[0]} the #{e[1]} was lost.\n" } +
#       "And all for the want of a #{qualifier ? "#{qualifier} " : ''}#{chain[0]}."
#   end
# end
