# https://exercism.org/tracks/ruby/exercises/robot-simulator/edit
class Robot
  attr_accessor :robot, :coordinates, :bearing

  def initialize(x = 0, y = 0, direction: nil)
    @vor = [:north, :east, :south, :west]
    @bearing = direction
    @coordinates = [x, y]
  end

  def orient(direction)
    return raise ArgumentError unless %i[east west north south advance].include?(direction)
    @bearing = direction
  end

  def turn_right
    pos = @vor.index(@bearing) + 1
    pos = 0 if pos > 3
    @bearing = @vor[pos]
  end

  def turn_left
    pos = @vor.index(@bearing) - 1
    pos = 3 if pos < 0
    @bearing = @vor[pos]
  end

  def at(x, y)
    @coordinates = [x, y]
  end

  def advance
    case @bearing
    when :north
      @coordinates[1] += 1
    when :east
      @coordinates[0] += 1
    when :south
      @coordinates[1] -= 1
    when :west
      @coordinates[0] -= 1
    end
  end

  def execute_actions(actions)
    actions.each do |action|
      case action
      when :turn_left
        turn_left
      when :turn_right
        turn_right
      when :advance
        advance
      end
    end
  end
end

class Simulator
  def instructions(directions)
    ret = []
    directions.each_char do |char|
      case char
      when "L"
        ret << :turn_left
      when "R"
        ret << :turn_right
      when "A"
        ret << :advance
      end
    end
    ret
  end

  def place(robot, x:, y:, direction:)
    robot.bearing = direction
    robot.coordinates = [x, y]
  end

  def evaluate(robot, directions)
    robot.execute_actions(instructions(directions))
  end
end

# reduced
# class Robot
#   DIRECTIONS = %i[north east south west].each_with_index.to_h.freeze
#   attr_reader :coordinates

#   def at(x, y) = @coordinates = [x, y]
#   def orient(direction) = @bearing = DIRECTIONS[direction] || raise(ArgumentError)
#   def bearing = DIRECTIONS.keys[@bearing]

#   def turn_right = @bearing = (@bearing + 1) % 4
#   def turn_left = @bearing = (@bearing - 1) % 4
#   def advance = @coordinates[1 - @bearing % 2] += [1, -1][@bearing / 2]
# end
# class Simulator
#   INSTRUCTIONS = {'A' => :advance, 'L' => :turn_left, 'R' => :turn_right}

#   def instructions(input) = input.chars.map(&INSTRUCTIONS)
#   def place(robot, x:, y:, direction:)
#     robot.at(x, y)
#     robot.orient(direction)
#   end
#   def evaluate(robot, input)
#     instructions(input).each { |i| robot.instance_eval { send(i) } }
#   end
# end
