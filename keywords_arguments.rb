#https://www.hackerrank.com/challenges/ruby-methods-keyword-arguments/problem
def convert_temp(temp, **options)
    if (options.values_at(:input_scale) == ['celsius'])
    return temp*1.8 + 32 if options.values_at(:output_scale) == ['fahrenheit']
    return temp + 273.15    if options.values_at(:output_scale) == ['kelvin']
  end

  if (options.values_at(:input_scale) == ['fahrenheit'])
    return (temp-32)/1.8 if options.values_at(:output_scale) == ['celsius']
    return (temp + 459.67) / 1.8   if options.values_at(:output_scale) == ['kelvin']
  end  
  
  if (options.values_at(:input_scale) == ['kelvin'])
    return temp-273.15 if options.values_at(:output_scale) == ['celsius']
    return temp * 1.8 - 459.67  if options.values_at(:output_scale) == ['fahrenheit']
  end 
end

# alternative version
#def convert_temp(temp, **option)
#   if option[:input_scale] == "kelvin" 
#      temp = temp - 273.15
#  elsif option[:input_scale] == "fahrenheit" 
#      temp = ((temp - 32) / 1.8)
#  end
  
#  if option[:output_scale] == "kelvin"
#     temp =  temp + 273.15
#  elsif option[:output_scale] == "fahrenheit"
#    temp = 1.8 * temp +32
#  end
#  temp
# end
