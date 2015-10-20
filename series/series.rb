class Series
  def initialize(num_str)
    @digits = num_str.chars.map(&:to_i)
  end

  def slices(length)
    fail_msg = 'Specified length is longer than the original string.'
    fail ArgumentError, fail_msg if length > @digits.size
    @digits.each_cons(length).to_a
  end
end
