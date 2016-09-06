class Hexadecimal
  HEX_DECODE = '0123456789abcdef'.chars.zip(0..15).to_h

  def initialize(hex_string)
    @hex_string = hex_string.downcase
  end

  def to_decimal
    @hex_string.chars.reverse.map.with_index do |hex_char, i|
      HEX_DECODE[hex_char] * 16 ** i
    end.reduce(&:+)
  rescue
    0
  end
end
