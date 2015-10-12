class Hamming

  VERSION = 1

  def self.compute(s1,s2)
    raise ArgumentError.new if s1.size != s2.size

    pairs = s1.chars.zip(s2.chars)
    pairs.count {|x,y| x != y}
  end
end