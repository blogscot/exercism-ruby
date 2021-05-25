class Raindrops
  def self.convert(num)
    output = ''
    output += 'Pling' if (num % 3).zero?
    output += 'Plang' if (num % 5).zero?
    output += 'Plong' if (num % 7).zero?
    output == '' ? num.to_s : output
  end
end
