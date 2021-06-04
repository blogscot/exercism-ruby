require 'date'

class Meetup
  DAYSOFWEEK = %i[sunday monday tuesday wednesday thursday friday saturday].freeze
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, which)
    start_date = Date.new(@year, @month)
    end_date = Date.new(@year, @month, -1)
    matching_days = (start_date..end_date).select(&:"#{weekday}?")
    case which
    when :first
      date = matching_days.first
    when :second
      date = matching_days[1]
    when :third
      date = matching_days[2]
    when :fourth
      date = matching_days[3]
    when :last
      date = matching_days.last
    when :teenth
      date = matching_days.find { |match| match.day > 12 }
    end
    Date.new(@year, @month, date.day)
  end
end
