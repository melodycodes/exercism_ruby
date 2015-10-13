class Integer

  def to_roman

    num_to_roman = {
      1000 => "M",
      900 => "CM",
      500 => "D",
      400 => "CD",
      100 => "C",
      90  => "XC",
      50  => "L",
      40  => "XL",
      10  => "X",
      9   => "IX",
      5   => "V",
      4   => "IV",
      1   => "I"
    }

    str = ""
    r = self

    num_to_roman.each do |k,v|
      q,r = r.divmod(k)
      str << (v * q)
    end

    str
  end

end