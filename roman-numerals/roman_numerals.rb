class Integer
  ROMAN = %w[M CM D CD C XC L XL X IX V IV I].freeze
  ARABIC = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1].freeze
  TABLET = ARABIC.zip(ROMAN).freeze
  def to_roman
    current = self
    TABLET.inject('') do |a, (arabic, roman)|
      factor, current = current.divmod(arabic)
      a + roman * factor
    end
  end
end
