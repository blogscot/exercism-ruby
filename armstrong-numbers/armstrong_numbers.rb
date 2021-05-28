class ArmstrongNumbers
  def self.include?(num)
    digits = num.digits
    length = digits.length
    digits.map.sum { |digit| digit**length } == num
  end
end
