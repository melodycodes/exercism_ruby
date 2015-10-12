class Squares
  def initialize(n)
    @num = n
  end

  def square_of_sums
    ((1..@num).inject(:+)) ** 2
  end

  def sum_of_squares
    ((1..@num).map {|n| n * n}.inject(:+))
  end

  def difference
    square_of_sums - sum_of_squares
  end
end