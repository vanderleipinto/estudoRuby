class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    result = 0
    
    if ALLOWED_OPERATIONS.include?(operation) 
        case operation
          when '+'
            result = first_operand + second_operand
          when '/'          
            result = first_operand / second_operand          
          when '*'
            result = first_operand * second_operand
        end      
      end
          return "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end