class Robot
  attr_reader :name

  @@robot = 'AA000'
  def initialize
    reset
  end

  def reset
    @name = @@robot
    @@robot = @@robot.next
  end

  def self.forget
    @@robot = 'AA000'
  end
end
