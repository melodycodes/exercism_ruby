class SumOfMultiples
  def initialize(*n)
    @factors = n
  end

  def self.to(max, *factors)
    factors = (factors.empty? ? [3, 5] : factors.flatten)
    sum_multiples(factors, max)
  end

  def to(max)
    self.class.to(max, @factors)
  end

  private

  def self.sum_multiples(factors_arr, max)
    factors_arr.inject([]) do |m, f|
      m << get_multiples(f, max)
    end.flatten.uniq.inject(:+)
  end

  def self.get_multiples(n, max)
    return 0 if max == 1 || n >= max
    (1..(max / n)).inject([]) do |mults, i|
      multiple = n * i
      return mults if multiple >= max
      mults << multiple
    end
  end
end
