class Array
  def accumulate
    output = []
    each { |i| output << yield(i) }
    output
  end
end
