# Modify the word_sizes method from the previous exercise to exclude 
# non-letters when determining word size. For instance, the length of "it's" is
# 3, not 4.
LETTERS = ('a'..'z').to_a + ('A'..'Z').to_a

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
    actual_size = word.count('/a-z/') + word.count('/A-Z/')
    counts[actual_size] += 1
  end
  counts
end

def another_word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    actual_size = word.chars.count{|char| LETTERS.include?(char)}
    counts[actual_size] += 1
  end
  counts
end

puts another_word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts another_word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts another_word_sizes("Don't say it's over!")
