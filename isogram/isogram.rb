class Isogram
  def self.isogram?(word)
    letters = word.downcase.scan(/\w/)
    letters.uniq == letters
  end
end
