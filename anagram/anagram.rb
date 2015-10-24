class Anagram
  def initialize(a)
    @word_chars = a.downcase.chars
    @sorted_word = @word_chars.sort
    @word_size = @word_chars.size
  end

  def match(word_list)
    word_list.select { |w| anagram?(w) }
  end

  def anagram?(w2)
    word2_chars = w2.downcase.chars
    return false if @word_size != word2_chars.size
    return false if @word_chars == word2_chars
    @sorted_word == word2_chars.sort
  end
end
