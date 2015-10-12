class Squares
  def initialize(n)
    @range = (1..n)
  end

  def square_of_sums
    (@range.inject(:+)) ** 2
  end

  def sum_of_squares
    (@range.map {|n| n * n}.inject(:+))
  end

  def difference
    square_of_sums - sum_of_squares
  end
end