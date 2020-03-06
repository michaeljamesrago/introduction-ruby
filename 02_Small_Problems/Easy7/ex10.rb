def penultimate(str)
  str.split[-2]
end
puts penultimate('last word') == 'last'
puts penultimate('Launch School is great!') == 'is'

# Middle word method
# with an empty string should return nil
# with an even number of words, should return word numberofwords/2
def middle_word(str)
  words = str.split
  num_words = words.length
  return nil if num_words == 0
  return words[0] if num_words == 1
  (num_words / 2) * 2 == num_words ? words[num_words / 2] : words[(num_words / 2) + 1]
end
puts middle_word("")
puts middle_word("one")
puts middle_word("one two")
puts middle_word("one two three")
puts middle_word("one two three four")
