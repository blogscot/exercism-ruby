class Bob
  def self.hey(remark)
    remark = remark.strip
    yelling = remark.upcase == remark && remark.match?(/[A-Z]/)
    question = remark.end_with?('?')
    return "Calm down, I know what I'm doing!" if yelling && question
    return 'Sure.' if question
    return 'Whoa, chill out!' if yelling
    return 'Fine. Be that way!' if remark.empty?

    'Whatever.'
  end
end
