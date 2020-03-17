# The String#to_i method converts a string of numeric characters (including an
# optional plus or minus sign) to an Integer. String#to_i and the Integer
# constructor (Integer()) behave similarly. In this exercise, you will create a
# method that does the same thing.
#
# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.
# #
# For now, do not worry about leading + or - signs, nor should you worry about
# invalid characters; assume all characters will be numeric.
#
# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. Your method should do this the old
# fashioned way and calculate the result by analyzing the characters in the
# string.
CONVERSION_HASH = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15
}

def string_to_integer(str)
  int = 0
  multiplier = 1
  str.chars.reverse.each do |char|
    int += CONVERSION_HASH[char] * multiplier
    multiplier *= 10
  end
  int
end

def hexadecimal_to_integer(str)
  digits = str.chars.map { |char| CONVERSION_HASH[char] }
  digits.reduce(0) { |acc, elem| acc * 16 + elem }
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('9f')
puts hexadecimal_to_integer('a0')
puts hexadecimal_to_integer('af')
puts hexadecimal_to_integer('64')
puts hexadecimal_to_integer('4d9f')
