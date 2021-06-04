class Atbash
  ALPHABET = [*'a'..'z'].freeze
  TABLE = ALPHABET.zip(ALPHABET.reverse).to_h.freeze
  GROUP_SIZE = 5
  class << self
    def encode(plaintext)
      letters_and_digits = plaintext.downcase.scan(/\w/)
      into_groups(translate(letters_and_digits), GROUP_SIZE)
    end

    def decode(ciphertext)
      translate(ciphertext.delete(' ').chars)
    end

    private

    def translate(text)
      text.map { |char| char =~ /[a-zA-Z]/ ? TABLE[char] : char }.join
    end

    def into_groups(text, size)
      text.chars.each_slice(size).map(&:join).join(' ')
    end
  end
end
