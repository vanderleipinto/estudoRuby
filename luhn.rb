class Luhn
  def self.valid?(num)
    return false if num.length == 1
    num.each_char.with_index do |char,index|
      if index.to_i.odd 
        
    true
  end
end
