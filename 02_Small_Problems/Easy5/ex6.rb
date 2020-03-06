# Write a method that takes a string with one or more space separated words and
# returns a hash that shows the number of words of different sizes.
#
# Words consist of any string of characters that do not include a space.
#
# Examples
#
# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1,
# 7 #=> 2 }
# word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
# word_sizes('') == {}
# Input: string with one or more words separated by spaces.
# Split string into separate words
# Get new array of lengths of each word.
# Create new hash
# Iterate through lengths array
#   Add array elements as keys to hash and set their values to the #counts of
#   the element in the array.
def my_word_sizes(str)
  words = str.split(' ')
  lengths = words.map{|n| n.size}
  hsh = {}
  lengths.each{|x| hsh[x] = lengths.count(x)}
  hsh
end

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
