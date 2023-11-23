class ResistorColorTrio
  
  def initialize(arr)
    @arr = arr.map(&:to_sym)
    @bands = {
      black: 0,
      brown: 1,
      red: 2,
      orange: 3,
      yellow: 4,
      green: 5,
      blue: 6,
      violet: 7,
      grey: 8,
      white: 9
}
  end

    def label  
      
      ret ="Resistor value: #{ @bands[@arr[0]]}#{ @bands[@arr[1]]}#{'0'*@bands[@arr[2]]}"

      case ret.count('0')
        when 3 then ret.sub!('000', ' kilo').concat('ohms')
        when 4 then ret.sub!('0000', '0 kilo').concat('ohms')
        else ret.concat(' ohms')
      end
      ret
    end
    
end
