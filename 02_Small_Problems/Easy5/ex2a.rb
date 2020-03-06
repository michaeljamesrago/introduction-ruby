# Determine whether integer is positive/0 or negative, save that info for later
# Read absolute value of input into integer min
# hours, minutes = absolute value of min divmod 60
# if given value was negative:
#   hours = 23 - hours % 24
#   minutes = 60 - minutes
# else if min is positive or zero
#   hours %= 24
# end
# return a string with hours, a colon, and minutes concatenated
=begin
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
=end
def time_of_day(int)
  hrs, mins = int.divmod(60)
  hours = (hrs % 24).to_s
  minutes = mins.to_s
  format("%02d", hours)+':'+format("%02d", minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
