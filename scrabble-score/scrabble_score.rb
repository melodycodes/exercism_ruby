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

  def initialize(w = '')
    @word = w
    build_score_hash
  end

  def score
    return 0 if @word.nil?
    @word.chars.inject(0) do |sum, letter|
      score = @scoring_hash[letter.upcase]
      sum += score.nil? ? 0 : score
    end
  end

  def self.score(word)
    new(word).score
  end

  def build_score_hash
    scores = []
    score_array = []
    SCORE_TO_LETTER.each do |score, letters|
      scores = Array.new(letters.size) { score }
      score_array += letters.zip(scores)
    end
    @scoring_hash = score_array.to_h
  end
end
