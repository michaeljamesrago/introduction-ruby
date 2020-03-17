# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.
#
# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the first
# character is a +, your method should return a positive number; if it is a -,
# your method should return a negative number. If no sign is given, you should
# return a positive number.
#
# You may assume the string will always contain a valid number.
#
# You may not use any of the standard conversion methods available in Ruby, such
# as String#to_i, Integer(), etc. You may, however, use the string_to_integer
# method from the previous lesson.
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
#/^[+-]\d+$/
def hexadecimal_to_integer(str)
  digits = str.chars.map { |char| CONVERSION_HASH[char] }
  digits.reduce(0) { |acc, elem| acc * 16 + elem }
end

def string_to_signed_integer(str)
  return string_to_integer(str) unless str.match?(/^[+-]\d+$/)
  absolute = string_to_integer(str[1..-1])
  str[0] == '-' ? -absolute : absolute
end


puts string_to_signed_integer('4321')
puts string_to_signed_integer('+4321')
puts string_to_signed_integer('-4321')
puts string_to_signed_integer('0')
puts string_to_signed_integer('-8')
