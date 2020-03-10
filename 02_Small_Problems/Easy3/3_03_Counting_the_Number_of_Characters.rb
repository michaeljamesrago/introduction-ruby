# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.
# input:
# Please write word or multiple words: walk
# output:
# There are 4 characters in "walk".
# input:
# Please write word or multiple words: walk, don't run
# output:
# There are 13 characters in "walk, don't run".
# PSEUDOCODE:
# Prompt user for input string
# Split string on ' '
# Reduce array using length method
# Return result
puts 'Please enter word or multiple words:'
words = gets.chomp
words_array = words.split(' ')
char_count = words_array.reduce(0) { |acc, elem| acc + elem.length }
puts "There are #{char_count} characters in #{words}."
