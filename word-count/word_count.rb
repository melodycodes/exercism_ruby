class Phrase
  VERSION = 1

  def initialize(str = '')
    @sentence = str.downcase
    @words = @sentence.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.each_with_object(Hash.new(0)) do |w, count|
      count[w] += 1
    end
  end
end
