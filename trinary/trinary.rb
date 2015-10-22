class Trinary
  def initialize(num)
    @tri = num
  end

  def to_decimal
    return 0 if @tri =~ /[^0-9]/
    dec = 0
    @tri.chars.reverse.each_with_index do |n, i|
      dec += n.to_i * 3**i
    end
    dec
  end
end
