class Phrase
  VERSION = 1

  def initialize(str = '')
    # lowercase sentence and remove quotes
    @sentence = str.downcase.gsub(/'([a-z]+)'/, '\1')
    @words = @sentence.split(/[^a-z0-9']+/)
  end

  def word_count
    @words.uniq.each_with_object({}) do |w, count|
      count[w] = @words.count(w)
      count
    end
  end
end
