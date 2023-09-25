#https://exercism.org/tracks/ruby/exercises/chess-game/edit

module Chess
  RANKS = 1..8
  FILES = 'A'..'H'

  def self.valid_square?(rank, file)
    return true if RANKS.include?(rank) && FILES.include?(file)
    return false
  end

  def self.nick_name(first_name, last_name)
    return first_name[0..1].upcase + last_name[-2..-1].upcase
  end 

  def self.move_message(first_name, last_name, square)
    if valid_square?(square[1].to_i, square[0])
     return "#{self.nick_name(first_name, last_name)} moved to #{square}"
    end
    return "#{self.nick_name(first_name, last_name)} attempted to move to #{square}, but that is not a valid square"
  end
end
