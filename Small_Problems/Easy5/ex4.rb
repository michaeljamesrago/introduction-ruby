=begin
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the
string will always contain at least one word. You may also assume that each
string contains nothing but words and spaces

Input: A string containing only words, made of letters and separated by spaces.
Separate string into an array of words.
For each word in the array, get a new string that swaps the first and last
letters.
  Get first letter
  Get last letter
  Get middle of letter with word[1..(word.length-2)]
  return last + middle + first
Put the new strings together, separated by spaces, into one concatenated return value.
=end

def word_swap(word)
  return word if word.length < 2
  word[word.length-1] + word[1..word.length-2] + word[0]
end

def swap(words)
  arr = words.split(' ')
  arr2 = arr.map do |word|
    word_swap(word)
  end
  arr2.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'
