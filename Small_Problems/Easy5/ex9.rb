require 'pry'
# Input string
# Break string into an array of characters
# Initialize new string
# Call #each on character array, and add that character to the new string if
# the last character in the new string is not equal to it.

def crunch(str)
  crunched = ''
  str.chars.each{ |c| crunched << c unless crunched.end_with?(c) }
  crunched
end




puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
