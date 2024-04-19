class Digito_verificador
  def initialize(number)
    @number = number
  end

  def calculate_check_digit(number)
    
    weight = [2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5]
    sum = 0

    number.to_s.reverse.chars.each_with_index do |digito, index|
      sum += digito.to_i * weight[index % 12]
    end

    rest = sum % 11
    digito_verificador = (rest < 2) ? 0 : (11 - rest)

    #self.digito_verificador = digito_verificador.to_s
    digito_verificador
  end
end

def calculate_check_digit(number)
    
   weight = [2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 4, 5]
    sum = 0
  
    number.to_s.reverse.chars.each_with_index do |digito, index|
  
      sum += digito.to_i * weight[index % 12]
    end
  
   rest = sum % 11
    digito_verificador = (rest < 2) ? 0 : (11 - rest)
  
    #self.digito_verificador = digito_verificador.to_s
    digito_verificador
  end
  