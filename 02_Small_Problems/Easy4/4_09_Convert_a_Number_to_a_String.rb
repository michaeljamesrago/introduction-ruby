# In the previous two exercises, you developed methods that convert simple
# numeric strings to signed Integers. In this exercise and the next, you're
# going to reverse those methods.
#
# Write a method that takes a positive integer or zero, and converts it to a
# string representation.
#
# You may not use any of the standard conversion methods available in Ruby, such
# as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
# old-fashioned way and construct the string by analyzing and manipulating the
# number.
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

INV_HASH = CONVERSION_HASH.invert

def integer_to_string(int)
  return 0 if int == 0
  digit_string = ''
  while int > 0
    digit_string << INV_HASH[int % 10]
    int /= 10
  end
  digit_string.reverse
end
