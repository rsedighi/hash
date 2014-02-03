require 'date'

class WeekDay
  def dates(year, month, day)
    date = Date.new(year, month, day).wday
    hashed = { 0 => 'Su', 1 => 'Mo', 2 => 'Tu', 3 => 'We', 4=> 'Th', 5=> 'Fr', 6=> 'Sa' }
    return hashed[date]
  end
end

puts "What year are we looking at?"
year = gets.to_i

puts "And the month?"
month = gets.to_i

puts "On which day?"
day = gets.to_i

calendar = WeekDay.new
puts calendar.dates(year, month, day)
