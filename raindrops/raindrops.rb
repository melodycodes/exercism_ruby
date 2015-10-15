class Raindrops
  def self.convert(num)
    res = FACTOR_TO_NOISES.map do |f, str|
      str if (num % f).zero?
    end.join

    res.empty? ? num.to_s : res
  end

  FACTOR_TO_NOISES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

end
