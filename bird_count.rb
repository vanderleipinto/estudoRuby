#https://exercism.org/tracks/ruby/exercises/bird-count/edit

class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)    
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.sum
  end

  def busy_days
    count = 0
    @birds_per_day.each do |day|
      count +=1 if day >= 5
    end
  return count
  end

  def day_without_birds?
    @birds_per_day.each do |day|
      return true if day == 0
    end
  return false
  end
end
