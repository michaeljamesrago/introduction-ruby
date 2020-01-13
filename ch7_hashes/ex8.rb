=begin
Chapter 7 exercise 8
Challenge: Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Write a program that prints out groups of words that are anagrams. Anagrams are 
words that have the same exact letters in them but in a different order.
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams = {}

words.each do |word|
    key = word.split("").sort.join
    if anagrams.has_key?(key)
        anagrams[key].push(word)
    else
        anagrams[key] = [word]
    end
end

p anagrams.values