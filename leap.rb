#https://exercism.org/tracks/ruby/exercises/leap/edit
class Year
  def self.leap?(year)
    (year%100==0 ? (year%100==0) && year%400==0 : year%4==0)    
  end
end
