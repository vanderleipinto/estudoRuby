#https://exercism.org/tracks/ruby/exercises/port-palermo/edit
module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city.slice(0..3).upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    return :A if ship_identifier.slice(0..2) == 'OIL' || ship_identifier.slice(0..2) == 'GAS'
    return :B
  end
end
