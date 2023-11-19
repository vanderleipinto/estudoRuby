#https://exercism.org/tracks/ruby/exercises/wordy/edit
class WordProblem
   def initialize(text)
     @text = text
   end
   def answer
     arr = []
     @text.split(' ').each do |item|
        arr << item.to_i if item.to_i != 0
        arr << "+" if  item == 'plus'
        arr << "-" if item == 'minus'
        arr << "/" if item == 'divided'
        arr << "*" if item == 'multiplied'
     end
 
     raise ArgumentError, 'Argument error' unless  arr.include?('+') || arr.include?('-') || arr.include?('/') || arr.include?('*')   

     result = []
     result << eval(arr[..2].join(''))
     eval("#{result[0]}#{arr[3..].join('')}")   
   end
 end
