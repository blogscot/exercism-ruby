class Clock
  attr_accessor :hours, :minutes

  def initialize(time)
    @hours = time.fetch(:hour, 0)
    @minutes = time.fetch(:minute, 0)
  end

  def to_s
    mins = minutes % 60
    hrs = (hours + minutes / 60) % 24
    format('%<hours>02d:%<minutes>02d', hours: hrs, minutes: mins)
  end

  def +(other)
    Clock.new(hour: hours, minute: minutes + other.minutes)
  end

  def -(other)
    Clock.new(hour: hours, minute: minutes - other.minutes)
  end

  def ==(other)
    to_s == other.to_s
  end
end
