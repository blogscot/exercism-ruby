class BeerSong
  def self.recite(num_bottles, num_verses)
    @num_bottles = num_bottles
    (1..num_verses).map { first_line + second_line }.join("\n")
  end

  def self.first_line
    if @num_bottles.positive?
      "#{num_bottles} of beer on the wall, #{num_bottles} of beer.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\n"
    end
  end

  def self.second_line
    @num_bottles -= 1
    if @num_bottles.positive?
      "Take one down and pass it around, #{num_bottles} of beer on the wall.\n"
    elsif @num_bottles.zero?
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.num_bottles
    "#{@num_bottles} #{@num_bottles > 1 ? 'bottles' : 'bottle'}"
  end
end
