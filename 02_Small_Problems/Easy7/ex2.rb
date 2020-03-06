#Input: a string str
# Initialize an hash with three keys: uppercase, lowercase, and neither
# Make two arrays: One with all the uppercase characters, and another with all
# the lowercase characters
# Split the string into an array of characters chars
# Iterate through chars, testing each element for upper or lower-casedness
#   If the character is in the array uppercase, it's uppercase, and so on.
# Increment the hash values based on the state of each element in chars.
# Return the hash

def letter_case_count(str)
  hsh = { :uppercase => 0, :lowercase => 0, :neither => 0 }
  upper = ('A'..'Z').to_a
  lower = ('a'..'z').to_a
  str.chars.each do |c|
    if upper.include?(c)
      hsh[:uppercase] += 1
    elsif lower.include?(c)
      hsh[:lowercase] +=1
    else
      hsh[:neither] +=1
    end
  end
  hsh
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
