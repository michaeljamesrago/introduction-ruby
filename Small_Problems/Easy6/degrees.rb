# Input is a floating point number
# Get number of degrees by num % 360
# Get fractions of a degree by using num % 1
# Get number of minutes by multiplying fraction by 60
# Get number of seconds by  minutes % 1 * 60
# Return interpolated string
require 'pry'
DEGREE = "\xC2\xB0"
def dms(float)
  float %= 360
  degrees, fraction = float.divmod(1)
  minutes, fraction_of_minute = (fraction * 60).divmod(1)
  seconds = (fraction_of_minute * 60).round(2)
  binding.pry
  "#{degrees}#{DEGREE}#{format('%02d', minutes)}'#{format('%02d', seconds)}\""
end
#puts dms(705.2575)

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
