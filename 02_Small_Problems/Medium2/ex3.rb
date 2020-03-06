# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.
#Input: a string str
#Initialize hash that will hold the values upper, lower, and neither as keys
#  and the total number of characters that fit these categories as values.
#Loop through the string
#  test each character for inclusion in neither category with neither method
#  If character is not a "neither", then test for uppercase by comparing char
#    with char.upcase for equality.
#  Increment hash[upper] if character is uppercase, hash[lower] if it's not
#  three categories with extracted neither method
#  Increment appropriate hash value by one for each character
#Iterate through hash and change values to a percentage of size value of str
#
#neither method: takes character as parameter
#  return true if character is same as char.upcase AND same as char.downcase
def letter_percentages(str)
  hsh = Hash.new(0)
  str.chars.each do |char|
    if neither(char)
      hsh[:neither] += 1
    elsif char == char.upcase
      hsh[:uppercase] += 1
    else
      hsh[:lowercase] += 1
    end
  end
  hsh[:uppercase] = ((hsh[:uppercase].to_f / str.size) * 100)
  hsh[:lowercase] = ((hsh[:lowercase].to_f / str.size) * 100)
  hsh[:neither] = ((hsh[:neither].to_f / str.size) * 100)
  hsh
end

def neither(char)
  char == char.upcase && char == char.downcase
end

puts letter_percentages('abCdef 123')
puts letter_percentages('AbCd +Ef')
puts letter_percentages('123')
