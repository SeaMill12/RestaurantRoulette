module CalendarsHelper
  def calendars(date = Date.today, &block)
    Calendars.new(self, date, block).table
  end
end