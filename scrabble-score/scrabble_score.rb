class Scrabble
  SCORE_TO_LETTER = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %W[Q Z]
  }

  score_array = []
  SCORE_TO_LETTER.each do |s, l|
    scores = Array.new(l.size) { s }
    score_array += l.zip(scores)
  end

  SCORE_HASH = score_array.to_h

  def initialize(w = '')
    @word = w
  end

  def score
    return 0 if @word.nil?
    @word.chars.inject(0) do |total_score, letter|
      letter_score = SCORE_HASH[letter.upcase]
      total_score += letter_score.nil? ? 0 : letter_score
    end
  end

  def self.score(word)
    new(word).score
  end
end
