#https://exercism.org/tracks/ruby/exercises/anagram/edit
class Anagram
  def initialize(word)
    @word = word
  end
  def match(arr)
    arr_word = @word.downcase.chars
    ret = arr.select do |w|
       w.chars.all?{ |i| arr_word.include?(i)}
    end
    ret.select{|i| i.length == @word.length}
  end
end
