#https://exercism.org/tracks/ruby/exercises/tournament/edit
class Tournament
  @TALLY = "Team                           | MP |  W |  D |  L |  P\n"
  @teams = {"Devastating Donkeys"=>{'MP'=>0,'W'=>0,'D'=>0,'L'=>0,'P'=>0},"Allegoric Alaskans"=>{'MP'=>0,'W'=>0,'D'=>0,'L'=>0,'P'=>0},"Blithering Badgers"=>{'MP'=>0,'W'=>0,'D'=>0,'L'=>0,'P'=>0},"Courageous Californians"=>{'MP'=>0,'W'=>0,'D'=>0,'L'=>0,'P'=>0}}

  def self.tally (input)
        
    return @TALLY if input.length <= 1

    lines = input.split("\n").each{|line| line.strip!}
    ret = ''
    
    
    lines.each do |line|    
      str = line.split(';')        
      if str[2] == 'win' 
        @teams[str[0]]['MP']+=1
        @teams[str[0]]['W']+=1
        @teams[str[0]]['P']+=3
        @teams[str[1]]['MP']+=1
        @teams[str[1]]['L']+=1
      end
      if str[2] == 'draw' 
        @teams[str[0]]['MP']+=1
        @teams[str[0]]['D']+=1
        @teams[str[0]]['P']+=1
        @teams[str[1]]['MP']+=1
        @teams[str[1]]['D']+=1
        @teams[str[1]]['P']+=1
      end
      if str[2] == 'loss' 
        @teams[str[1]]['MP']+=1
        @teams[str[1]]['W']+=1
        @teams[str[1]]['P']+=3
        @teams[str[0]]['MP']+=1
        @teams[str[0]]['L']+=1
      end
  
  end

  @teams = @teams.sort_by{|key,value| [-value['P'],value[name]]}.to_h
    
    @teams.each_pair do |key,value|
        if value['MP'] != 0 ???????   
          ret << key.ljust(31)
          value.each_pair {|key2,value2| ret << "|  #{value2} "} 
          ret += "\n"
        end
    end
    return @TALLY + ret
  end
end

a="Allegoric Alaskans;Blithering Badgers;win\nDevastating Donkeys;Courageous Californians;draw\n     Devastating Donkeys;Allegoric Alaskans;win\n     Courageous Californians;Blithering Badgers;loss\n     Blithering Badgers;Devastating Donkeys;loss\n     Allegoric Alaskans;Courageous Californians;win"

puts Tournament.tally(a)
  

["Allegoric Alaskans;Blithering Badgers;win",
 "Devastating Donkeys;Courageous Californians;draw",
 "Devastating Donkeys;Allegoric Alaskans;win",
 "Courageous Californians;Blithering Badgers;loss",
 "Blithering Badgers;Devastating Donkeys;loss",
 "Allegoric Alaskans;Courageous Californians;win"]

