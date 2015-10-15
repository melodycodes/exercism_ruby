class Prime
    @@all_primes = []

  def self.nth(n)
    raise ArgumentError.new if n.zero?
    return @@all_primes[n - 1] unless @@all_primes[n - 1].nil?
    curr = @@all_primes.size
    (@@all_primes.size...n).each do |i|
      # increment current prime
      curr += 1
      # find next prime
      until vfy_prime?(curr)
        curr += 1
      end
      @@all_primes[i] = curr # store ith prime
    end
    @@all_primes[n - 1]
  end

  def self.vfy_prime?(num)
    return false if num <= 1

    (2...num).each do |d|
      return false if num % d == 0
    end
    true
  end
end
