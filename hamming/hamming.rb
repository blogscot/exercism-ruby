class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError unless strand1.length == strand2.length

    strand1.chars.zip(strand2.chars).count { |s1, s2| s1 != s2 }
  end
end
