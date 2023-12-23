def linearSearch(arr,number)
  arr.each_with_index do |value,index|
    return "Value = #{value} at #{index}" if value==number
  end
end

