class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    limit = Integer.sqrt(@num)
    sieve = [nil, nil, *2..@num]
    (2..limit).each do |n|
      (n**2..@num).step(n) { |m| sieve[m] = nil } if sieve[n]
    end
    sieve.compact
  end
end
