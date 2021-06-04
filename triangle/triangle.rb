class Triangle
  attr_accessor :a, :b, :c

  def initialize(sides)
    @a, @b, @c = sides.sort
  end

  def equilateral?
    a == c && c == b if valid?
  end

  def isosceles?
    c == b || a == b if valid?
  end

  def scalene?
    a != c && c != b if valid?
  end

  def valid?
    a.positive? && b.positive? && c.positive? && c <= a + b
  end
end
