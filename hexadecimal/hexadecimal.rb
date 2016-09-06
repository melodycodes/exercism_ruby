class Hexadecimal
  HEX_DECODE = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "A" => 10,
    "B" => 11,
    "C" => 12,
    "D" => 13,
    "E" => 14,
    "F" => 15
  }.freeze

  def initialize(n)
    @hex_str = n.upcase
    @hex_chars = @hex_str.chars
  end

  def to_decimal
    @hex_chars.reverse.each_with_index.inject(0) do |total, (hex_char, i)|
      decimal_val = HEX_DECODE[hex_char]
      return 0 unless decimal_val
      total += decimal_val * (16 ** i)
    end
  end
end
