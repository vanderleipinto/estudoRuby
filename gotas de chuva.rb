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
