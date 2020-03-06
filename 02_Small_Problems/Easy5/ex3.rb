=begin
Write two methods that each take a time of day in 24 hour format, and return
the number of minutes before and after midnight, respectively. Both methods
should return a value in the range 0..1439.

Input: A string, format 'XX:XX'
process_string method: Split string on colon, before colon is hours value, after colon is minutes. both values must be changed to integers.
after_midnight method : takes input value as a parameter, passes to
process_string method to get hours and minutes. Adds minutes to 60xhours and
returns value
before_midnight method : takes input value, passes to process_string method
takes (-hours%24)*60 - minutes
=end
def process_string(time)
  hrs_mins = time.split(":")
  hrs_mins.map{|num| num.to_i}
end

def after_midnight(time)
  hrs, mins = process_string(time)
  x = ((hrs % 24) * 60) + mins
  x
end

def before_midnight(time)
  hrs, mins = process_string(time)
  x = ((-hrs % 24) * 60) - mins
  x
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
