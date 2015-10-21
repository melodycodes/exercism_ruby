class PrimeFactors
  require 'prime'
  def self.for(num)
    Prime.prime_division(num).flat_map { |f, exp| [f] * exp }
  end
end
