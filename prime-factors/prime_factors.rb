class PrimeFactors
  def self.of(num)
    current = 2
    factors = []
    while num > 1
      if (num % current).zero?
        factors << current
        num /= current
      else
        current += 1
      end
    end
    factors
  end
end
