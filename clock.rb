#https://exercism.org/tracks/ruby/exercises/clock/edit
class Clock
   attr_reader :hour, :minute
   def initialize(hour: 0,minute: 0)
     @hour = (hour + minute / 60) % 24
     @minute = minute % 60   
   end
  def to_s
    "%02d:%02d"% [@hour, @minute]
  end

   def +(clockparam)
     hour = @hour + clockparam.hour
     minute = @minute + clockparam.minute
     Clock.new(hour: hour ,minute: minute)
   end
   def -(clockparam)
     hour = @hour - clockparam.hour
     minute = @minute - clockparam.minute
     Clock.new(hour: hour ,minute: minute)
   end
   def ==(clockparam)
     (@hour == clockparam.hour && @minute == clockparam.minute)     
   end
 end
  
