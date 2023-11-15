#https://exercism.org/tracks/ruby/exercises/phone-number/edit
class PhoneNumber
  def self.clean(phone)
    arr = phone.chars.select {|i| i.match?(/[0-9]/)}
   
    # if it's bigger than 11 or less than 10 digits
    return nil if arr.length > 11 || arr.length < 10

    #if digits -7 e -10 are different from 2 to 9
    return nil unless (arr[-7].match?(/[2-9]/) && (arr[-10].match?(/[2-9]/))) 
      
    #if there are 11 digits and 11º different from 1
    if (arr[-11])
      return nil if arr[-11] != '1'
      arr.delete_at(-11)
    end

    return arr.join('')    
      end
  end
      
