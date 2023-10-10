#https://exercism.org/tracks/ruby/exercises/simple-calculator/edit

class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    raise ArgumentError, 'Operands must be numbers' unless first_operand.is_a?(Numeric) && second_operand.is_a?(Numeric)
    raise UnsupportedOperation, "Operação inválida: #{operation}. Operações permitidas: #{ALLOWED_OPERATIONS.join(', ')}" unless ALLOWED_OPERATIONS.include?(operation)

    case operation
    when '+'
      result = first_operand + second_operand
    when '/'
      begin
        result = first_operand / second_operand
      rescue 
          return "Division by zero is not allowed."  
      end
        
    when '*'
      result = first_operand * second_operand
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
