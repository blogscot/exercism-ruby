class Scrabble
  def initialize(word)
    letter_groups = %w[aeioulnrst dg bcmp fhvwy k jx qz]
    group_scores = [1, 2, 3, 4, 5, 8, 10]
    @scoring = Hash.new(0)
    letter_groups.zip(group_scores).each do |group, score|
      group.chars.each { |letter| @scoring[letter] = score }
    end
    @letters = word.to_s.downcase.scan(/\w/)
  end

  def self.score(word)
    new(word).score
  end

  def score
    @letters.sum { |letter| @scoring[letter] }
  end
end
