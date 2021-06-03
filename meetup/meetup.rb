require 'date'

class Meetup
  DAYSOFWEEK = %i[sunday monday tuesday wednesday thursday friday saturday].freeze
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, which)
    wday = Time.new(@year, @month).wday
    @days_in_month = Date.new(@year, @month, -1).day
    days_of_month = (1..@days_in_month).zip((DAYSOFWEEK * 6).drop(wday))
    matching_days = days_of_month.select { |_, day| day == weekday }
    case which
    when :first
      date, = matching_days.first
    when :second
      date, = matching_days[1]
    when :third
      date, = matching_days[2]
    when :fourth
      date, = matching_days[3]
    when :last
      date, = matching_days.last
    when :teenth
      date, = matching_days.find { |num,| num > 12 }
    end
    Date.new(@year, @month, date)
  end
end
