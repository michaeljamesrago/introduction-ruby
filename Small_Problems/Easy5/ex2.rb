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

puts time_of_day(0)
puts time_of_day(1)
puts time_of_day(59)
puts time_of_day(61)
puts time_of_day(119)
puts time_of_day(121)
puts time_of_day(1439)
puts time_of_day(1441)
puts time_of_day(2879)
puts time_of_day(2881)
puts time_of_day(0)
puts time_of_day(-1)
puts time_of_day(-59)
puts time_of_day(-61)
puts time_of_day(-119)
puts time_of_day(-121)
puts time_of_day(-1439)
puts time_of_day(-1441)
puts time_of_day(-2879)
puts time_of_day(-2881)
