#https://exercism.org/tracks/ruby/exercises/anagram/edit
class Anagram
  def initialize(word)
    @word = word.downcase.gsub(/\s+/, "")
  end
  def match(arr)
   word1_count = Hash.new(0)
   word2_count = Hash.new(0)
    ret = []

    @word.each_char {|c| word1_count[c]+=1}

    arr.each do |arr_word|
      arr_word.downcase.gsub(/\s+/, "").each_char {|c| word2_count[c]+=1}
      ret << arr_word if word1_count == word2_count
      word2_count = Hash.new(0)
    end  
    ret.select{|w| w.downcase.gsub(/\s+/, "") != @word}
  end   
end
