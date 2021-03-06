class Squares
  def initialize(n)
    @range = (1..n)
  end

  def square_of_sums
    @range.inject(:+)**2
  end

  def sum_of_squares
    @range.inject { |sum, n| sum += n**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
