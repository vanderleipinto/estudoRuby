https://exercism.org/tracks/ruby/exercises/raindrops/edit
class Raindrops
  def self.convert(raindrops)    
    ret = ''
    ret << "Pling" if (raindrops %3 == 0)
    ret << "Plang" if (raindrops %5 == 0)
    ret << "Plong" if (raindrops %7 == 0)
    ret = raindrops.to_s if ((raindrops %3 != 0) && (raindrops %5 != 0) && (raindrops %7 != 0))
    ret    
  end
end

#alternative version
#class Raindrops
#  RAINDROPS = {3 => "Pling", 5 => "Plang", 7 => "Plong" }
#  
#  def self.convert(number) 
#    conversion  = ""
#    RAINDROPS.each { |prime, sound| conversion += sound if number % prime == 0  }
#    conversion.empty? ? number.to_s : conversion
#  end
#end
