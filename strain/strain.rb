class Array
  def keep
    res = []
    for i in 0..size - 1
      res << self[i] if yield self[i]
    end
    res
  end

  def discard
    res = []
    for i in 0..size - 1
      res << self[i] unless yield self[i]
    end
    res
  end
end
