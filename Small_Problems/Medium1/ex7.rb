#Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.
#Input: a string str containing words separated by spaces, some of which are
# number words like 'one', 'two', and 'three'
#Make a hash with the number words as keys and their corresponding numbers as
#  values.
#Split str into words, then iterate through the words replacing any words that
# are keys in the hash with their number values.
#Join the array back up and return it.
NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
NUMBERS_HASH = NUMBER_WORDS.zip(('0'..'9').to_a).to_h
def word_to_digit(str)
  words = str.split
  words.map do |word|
    word.gsub!(/\W/, '')
    NUMBERS_HASH.has_key?(word) ? NUMBERS_HASH[word] : word
  end.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.')
