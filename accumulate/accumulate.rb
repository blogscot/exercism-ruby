class Array
  def accumulate(&block)
    return enum_for(:accumulate) unless block_given?

    result = []
    each do |*val|
      result.push(block.call(*val))
    end
    result
  end
end
