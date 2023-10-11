#https://exercism.org/tracks/ruby/exercises/hamming/edit
class Hamming
  def self.compute(dna1,dna2)  
      raise ArgumentError if dna1.length != dna2.length   
  count = 0
    size = dna1.length
    (size).times do |i|
      count +=1 unless dna1[i] == dna2[i]
      end 
  count
  end
end

#alternative version
# class Hamming  
#   def self.compute(a, b)
#     raise ArgumentError, 'Not the same length.' if a.length != b.length
#     (0...a.length).count do |i|
#       a[i] != b[i]
#     end
#   end
# end
