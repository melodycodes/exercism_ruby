class Binary
  VERSION = 1

  def initialize(num)
    err_msg = 'Input must be a binary string.'
    fail ArgumentError, err_msg if num =~ /[^01]/
    @binary_num = num
  end

  def to_decimal
    dec_num = 0
    @binary_num.chars.reverse_each.with_index do |bit, i|
      dec_num += 2**i * bit.to_i
    end
    dec_num
  end
end
