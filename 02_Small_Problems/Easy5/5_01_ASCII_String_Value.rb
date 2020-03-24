# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

def ascii_value(str)
  str_copy = str.dup
  val = 0
  while str_copy.length > 0
    val += str_copy.slice!(0).ord
  end
  val
end

a = 'ddb'
puts "the value of a is #{a}"
puts ascii_value(a)
puts "the value of a is #{a}"
puts ascii_value('dda')

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
