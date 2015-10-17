class Sieve
  def initialize(n)
    @max = n
  end

  def primes
    primes = (2..@max).to_a
    primes.each do |p|
      primes.delete_if { |x| x != p && x % p == 0 }
    end
  end
end
