#https://exercism.org/tracks/ruby/exercises/high-scores/edit
class HighScores
  def initialize (list)
    @list = list
  end
  def scores
    @list
  end

  def latest
    @list.last
  end

  def personal_best
    # bigger = @list.first
    # @list.each{|actual| bigger = actual if actual >= bigger}
    # bigger

    @list.sort.last
  end

  def personal_top_three
    @list.sort.reverse.take(3)
  end

  def latest_is_personal_best?
    self.latest == self.personal_best
  end 
  
end
