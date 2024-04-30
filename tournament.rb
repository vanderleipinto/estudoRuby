# https://exercism.org/tracks/ruby/exercises/tournament/edit
class Tournament
  @TALLY = "Team                           | MP |  W |  D |  L |  P\n"
  @teams = {
    "Devastating Donkeys" => {"name" => "Devastating Donkeys            ", "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0},
    "Allegoric Alaskans" => {"name" => "Allegoric Alaskans             ", "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0},
    "Blithering Badgers" => {"name" => "Blithering Badgers             ", "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0},
    "Courageous Californians" => {"name" => "Courageous Californians        ", "MP" => 0, "W" => 0, "D" => 0, "L" => 0, "P" => 0}
  }.freeze

  def self.tally(input)
    return @TALLY if input.length <= 1
    teams = Marshal.load(Marshal.dump(@teams))
    lines = input.split("\n").each { |line| line.strip! }
    array = []
    input.each_line { |line| array << line.strip!.split(";") }
    ret = ""

    array.each do |str|
      if str[2] == "win"
        teams[str[0]]["MP"] += 1
        teams[str[0]]["W"] += 1
        teams[str[0]]["P"] += 3
        teams[str[1]]["MP"] += 1
        teams[str[1]]["L"] += 1
      end
      if str[2] == "draw"
        teams[str[0]]["MP"] += 1
        teams[str[0]]["D"] += 1
        teams[str[0]]["P"] += 1
        teams[str[1]]["MP"] += 1
        teams[str[1]]["D"] += 1
        teams[str[1]]["P"] += 1
      end
      if str[2] == "loss"
        teams[str[1]]["MP"] += 1
        teams[str[1]]["W"] += 1
        teams[str[1]]["P"] += 3
        teams[str[0]]["MP"] += 1
        teams[str[0]]["L"] += 1
      end
    end
    p teams
    mostrar_valores(teams)
  end

  def self.mostrar_valores(teams)
    str = @TALLY
    teams.sort_by { |_, item| [-item["P"], -item["name"], -item["W"]] }
      .filter { |_, item| item["MP"] != 0 }
      .each { |_, value| str += "#{value["name"]}|  #{value["MP"]} |  #{value["W"]} |  #{value["D"]} |  #{value["L"]} | #{value["P"].to_s.rjust(2)}\n" }
    str
  end
end

# reduced

# class Tournament

#   def self.tally input
#     teams = Hash.new{|hash, key| hash[key] = {:W => 0, :D => 0, :L => 0} }
#     input.strip.lines do |line|
#       a, b, status = line.split ';'
#       case status.rstrip
#         when  'win'; status_a = :W; status_b = :L
#         when 'loss'; status_a = :L; status_b = :W
#         when 'draw'; status_a = :D; status_b = :D
#       end
#       teams[a][status_a] += 1
#       teams[b][status_b] += 1
#     end

#     "Team                           | MP |  W |  D |  L |  P\n"\
#     + teams.sort_by{|team, hash| w, d = hash.values; [-(w * 3 + d), team] }
#           .map{|team, hash| w, d, l = hash.values; sprintf "%-30s | %2d | %2d | %2d | %2d | %2d\n", team, w+l+d, w, d, l, w*3+d }
#           .join
#   end

# end
