class Luhn
  def self.valid?(text)
    text = text.tr(' ', '')
    return false unless text[/^\d{2,}$/]

    (text
    .chars
    .map(&:to_i)
    .reverse
    .map.with_index { |num, index| index.odd? ? num * 2 : num }
    .map { |num| num > 9 ? num - 9 : num }
    .sum % 10).zero?
  end
end
