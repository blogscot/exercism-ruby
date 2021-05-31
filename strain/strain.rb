class Array
  def keep
    return enum_for(:keep) unless block_given?

    each_with_object([]) { |val, arr| arr << val if yield val }
  end

  def discard
    return enum_for(:discard) unless block_given?

    keep { |val| !yield val }
  end
end
