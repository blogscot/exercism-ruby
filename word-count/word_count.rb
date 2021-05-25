class Phrase
  def initialize(text)
    @lookup = Hash.new(0)
    words = text.downcase.scan(/\b[\w']+\b/)
    words.each { |word| @lookup[word] += 1 }
  end

  def word_count
    @lookup
  end
end
