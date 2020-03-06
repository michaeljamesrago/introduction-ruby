#Write a method that takes a single String argument and returns a new string
#that contains the original value of the argument with the first character of
#every word capitalized and all other letters lowercase.
#Input: a string str
#Initialize array words, set to return value of split operation on str
#Call #map on words array, set return value of block to capitalized version

def word_cap(str)
  str.split.map{ |word| word.chr.upcase + word[1..-1].downcase }.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
