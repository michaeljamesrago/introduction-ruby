# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight. If
# the number of minutes is negative, the time is before midnight.
#
# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with
# any integer input.
#
#You may not use ruby's Date and Time classes.
def time_of_day(int)
  negative = int >= 0 ? false : true
  hours, minutes = int.abs.divmod(60)
  hours %= 24
  if negative
    hours = 23 - hours
    minutes = 60 - minutes
  end
  format("%02d", hours) + ':' + format("%02d", minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
