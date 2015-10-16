class Grains
  def self.square(n)
    2**(n - 1)
  end

  def self.total
    (1..64).inject { |count, i| count += square(i) }
  end
end
