class Prime
  @@all_primes = [2]

  def self.nth(n)
    fail ArgumentError, 'Argument must be nonzero' if n == 0

    curr = @@all_primes.last + 1

    while @@all_primes.count < n
      @@all_primes << curr if vfy_prime?(curr)
      curr += 1
    end

    @@all_primes[n - 1]
  end

  def self.vfy_prime?(num)
    2.upto(Math.sqrt(num)).each { |d| return false if num % d == 0 }
    true
  end
end
