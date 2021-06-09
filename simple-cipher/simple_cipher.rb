class Cipher
  attr_reader :key

  ALPHA = [*'a'..'z'].freeze
  KEY = 100.times.map { ALPHA.sample }.join
  def initialize(key = KEY)
    raise ArgumentError, "#{key} is an invalid key." unless /^[a-z]+$/.match? key

    @key = key
  end

  def encode(plaintext)
    process(plaintext) { |a, b| a + b }
  end

  def decode(ciphertext)
    process(ciphertext) { |a, b| a - b }
  end

  def process(text)
    text
      .chars
      .zip(@key.chars)
      .map do |char, key|
        ALPHA[(yield ALPHA.index(char), ALPHA.index(key)) % 26]
      end
      .join
  end
end
