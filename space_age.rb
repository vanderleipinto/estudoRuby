class SpaceAge
  def initialize(seconds)
    @sec = seconds
    @earth_year_seconds = 31557600
    @orbital = {
      mercury:  0.2408467,
      venus: 0.61519726 ,
      mars: 1.8808158,
      jupiter:  11.862615,
      saturn:  29.447498,
      uranus: 84.016846,
      neptune: 164.79132
    }
  end
  def on_earth
     @sec.fdiv(@earth_year_seconds).round(2)
  end
  def on_mercury
     
     orbital_calculate(@orbital[:mercury])
  end
  def on_venus     
     orbital_calculate(@orbital[:venus])     
  end
  def on_mars     
     orbital_calculate(@orbital[:mars])     
  end
  def on_jupiter     
     orbital_calculate(@orbital[:jupiter])     
  end
  
  def on_saturn
     orbital_calculate(@orbital[:saturn])     
  end
  
  def on_uranus   
     orbital_calculate(@orbital[:uranus])     
  end  
  def on_neptune     
     orbital_calculate(@orbital[:neptune])     
  end  
  
  def orbital_calculate(orbital)
    (@sec.fdiv(@earth_year_seconds)).fdiv(orbital).round(2)
  end
end

#Enhanced code
class SpaceAge 
  
#    EARTH_YEAR_SECONDS = 31557600
#    ORBITAL = {
#      mercury:  0.2408467,
#      venus: 0.61519726 ,
#      mars: 1.8808158,
#      jupiter:  11.862615,
#      saturn:  29.447498,
#      uranus: 84.016846,
#      neptune: 164.79132
#    }
 
#  def initialize(seconds)
#    @sec = seconds
#  end
 
#  def on_earth
#     @sec.fdiv(EARTH_YEAR_SECONDS).round(2)
#  end  

#  ORBITAL.keys.each do |planet|
#      define_method("on_#{planet}") do
#         orbital_calculate(ORBITAL[planet])
#      end
#   end
 
#  def orbital_calculate(orbital)
#    (@sec.fdiv(EARTH_YEAR_SECONDS)).fdiv(orbital).round(2)
#  end
# end
