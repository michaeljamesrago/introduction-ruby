#Input: a string str
#Iterate through the characters of the string
# If the character is uppercase, change it to lowercase.
# If the character is lowercase, change it to uppercase
# Make a method called is_uppercase?(char)
#   Return true if char = char.upcase
def is_uppercase?(char)
  char == char.upcase
end

def swapcase(str)
  i = str.length - 1
  0.upto(i) do |ind|
    if is_uppercase?(str[ind])
      str[ind] = str[ind].downcase
    else
      str[ind] = str[ind].upcase
    end
  end
  str
end

puts swapcase('CamelCase') == 'cAMELcASE',
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
