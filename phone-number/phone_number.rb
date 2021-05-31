class PhoneNumber
  def self.clean(number)
    number.gsub!(/[^\d]/, '')
    number = number[1..-1] if number.start_with?('1')
    number if number.length == 10 && number[0].to_i > 1 && number[3].to_i > 1
  end
end
