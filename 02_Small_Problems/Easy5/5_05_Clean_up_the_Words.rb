# Given a string that consists of some words (all lowercased) and an assortment
# of non-alphabetic characters, write a method that returns that string with all
# of the non-alphabetic characters replaced by spaces. If one or more non
# alphabetic characters occur in a row, you should only have one space in the
# result (the result should never have consecutive spaces).
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
