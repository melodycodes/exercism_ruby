class Trinary
  def initialize(num)
    @tri = num
  end

  def to_decimal
    @tri.chars.reverse.map.with_index do |n, i|
      n.to_i * 3**i
    end.inject(:+)
  end
end
