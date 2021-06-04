class Crypto
  def initialize(plaintext)
    @text = plaintext.gsub(/[^\w]/, '').downcase
  end

  def ciphertext
    return '' if @text == ''

    size = Math.sqrt(@text.length).ceil
    slices = @text.chars.each_slice(size).to_a
    slices.last << ' ' while slices.last.length < size
    slices.transpose.map(&:join).join(' ')
  end
end
