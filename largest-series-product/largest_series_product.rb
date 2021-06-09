class Series
  def initialize(input)
    @input = input
  end

  def largest_product(step)
    raise ArgumentError if @input.size < step || step.negative? || @input =~ /\D/
    return 1 if step.zero?

    @input
      .chars
      .each_cons(step)
      .map { |arr| arr.map(&:to_i).reduce(:*) }.max
  end
end
