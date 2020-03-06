#Input: a string str with either an even or odd number of characters
# Get str length len
# If len is even, use the slice method to return a two_character string
#   starting at index len/2 of str
# If len is odd, return the character at index len/2 + 1
def center_of(str)
  len = str.length
  center_str = nil
  if len.even?
    center_str = str.slice(((len / 2) - 1), 2)
  else
    center_str = str[len / 2]
  end
  center_str
end
puts center_of('I love ruby')
puts center_of('Launch School')
puts center_of('Launch')
puts center_of('Launchschool')
puts center_of('x')
