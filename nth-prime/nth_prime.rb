class Prime
  @@all_primes = [2]

  def self.nth(n)
    fail ArgumentError, 'Argument must be nonzero' if n == 0

    n -= 1
    curr = @@all_primes.last + 1

    (@@all_primes.size..n).each do |i|
      curr += 1 until vfy_prime?(curr)
      @@all_primes[i] = curr
      curr += 1
    end

    @@all_primes[n]
  end

  def self.vfy_prime?(num)
    (2...num).each { |d| return false if num % d == 0 }
    true
  end
end
