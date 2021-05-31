class Prime
  def self.nth(num)
    raise ArgumentError, 'No {n}th prime.' if num < 1

    @primes = [2, 3]
    i = @primes.last + 2
    while @primes.length < num
      @primes.push(i) if prime?(i)
      i += 2
    end
    @primes[num - 1]
  end

  def self.prime?(number)
    max = Math.sqrt(number)
    @primes.all? do |prime|
      return true if prime > max

      number % prime != 0
    end
  end
end
