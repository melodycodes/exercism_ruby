class Raindrops
  def self.convert(num)
    res = translate(num)
    res.size.zero? ? num.to_s : res
  end

  private
    FACTOR_DECODE = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong"
    }

    def self.translate(num)
      FACTOR_DECODE.map {|f, str| str if (num % f).zero? }.join
    end

end