=begin
Given a string that consists of some words and an assortment of non-alphabetic
characters, write a method that returns that string with all of the non
alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the
result should never have consecutive spaces).
cleanup("---what's my +*& line?") == ' what s my line '

Input: A string with letters, spaces, and non-alphabetic characters.
Initialize a new string, for return value
Iterate through the characters of the input string.
  If the character is alphanumeric, add it to the return string.
  If the character is non-alphanumeric
    If return string is empty or last character is a space,
      next
    else
      Add a space to the end of the return string.
=end
def cleanup(str)
  cleaned_up = ''
  str.chars.each do |char|
    if char.index(/[A-z]/)
      cleaned_up << char
      next
    end
    next if cleaned_up[-1] == ' '
    cleaned_up << ' '
  end
  cleaned_up
end

puts cleanup("---what's my +*& line?") == ' what s my line '
