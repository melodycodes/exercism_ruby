class Phrase
  VERSION = 1

  def initialize(str = '')
    @sentence = str.downcase
    @words = @sentence.scan(/\b[\w']+\b/)
  end

  def word_count
    @words.uniq.each_with_object({}) do |w, count|
      count[w] = @words.count(w)
      count
    end
  end
end
