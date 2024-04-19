#https://exercism.org/tracks/ruby/exercises/twelve-days/edit/
class TwelveDays
  def self.song    
    File.read(File.expand_path('../song.txt', __FILE__))
  end
end
