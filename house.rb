# https://exercism.org/tracks/ruby/exercises/house/edit
module House
  PHRASES = {"house" => "Jack built",
             "malt" => "lay in",
             "rat" => "ate",
             "cat" => "killed",
             "dog" => "worried",
             "cow with the crumpled horn" => "tossed",
             "maiden all forlorn" => "milked",
             "man all tattered and torn" => "kissed",
             "priest all shaven and shorn" => "married",
             "rooster that crowed in the morn" => "woke",
             "farmer sowing his corn" => "kept",
             "horse and the hound and the horn" => "belonged to"}.freeze
  def self.recite
    PHRASES.each_with_object([]) do |(name, action), song|
      if song.empty?
        song.push("This is the #{name} that #{action}.\n\n")
      else
        song.push(song.last.dup.insert(8, "the #{name}\nthat #{action} "))
      end
    end.join.chomp
  end
end
