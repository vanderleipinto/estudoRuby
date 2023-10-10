class Phrase
  def initialize (text)
    @text = text
  end
  def word_count
    words = @text.scan(/\b[\w']+\b/)
    words = words.map(&:downcase)
    word_counts = Hash.new(0)
    words.each{|word| word_counts[word] +=1}
    word_counts
  end  
end
