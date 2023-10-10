#https://exercism.org/tracks/ruby/exercises/resistor-color-duo/edit
class ResistorColorDuo
  COLORS = {Black: 0, Brown: 1,Red: 2,Orange: 3,Yellow: 4,Green: 5,Blue: 6,Violet: 7,Grey: 8,White: 9}
  
  def self.value(colors)
    sum = colors.take(2).map { |color| COLORS[color] }.join.to_i
    debug "soma = #{sum}"
    return sum
    
  end
end

class ResistorColorDuo
  COLORS = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }.freeze

  def self.value(colors)
    colors.take(2).map{ |color| COLORS[color] }.join.to_i
  end
end
