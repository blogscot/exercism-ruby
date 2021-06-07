# Tiphat: fun with lambdas! @glanotte
class WordProblem
  OPERATIONS = {
    'What is' => ->(_, n) { n },
    'plus' => ->(acc, n) { acc + n },
    'minus' => ->(acc, n) { acc - n },
    'multiplied by' => ->(acc, n) { acc * n },
    'divided by' => ->(acc, n) { acc / n }
  }.freeze

  def initialize(question)
    @question = question
  end

  def answer
    groups = @question.scan(/(#{OPERATIONS.keys.join("|")}) (-?\d+)/)
    raise ArgumentError if groups.size < 2

    groups.reduce(0) { |acc, (operation, val)| OPERATIONS.fetch(operation).call(acc, val.to_i) }
  end
end
