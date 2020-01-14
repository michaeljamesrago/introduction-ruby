=begin
Chapter 9 exercise 15
Use Ruby's Array method delete_if and String method start_with? to delete all of
the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

Then recreate the arr and get rid of all of the words that start with "s" or 
starts with "w".
=end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

puts arr

arr.delete_if{|item| item.start_with?(/s/)}

puts "After first delete_if operation:"

puts arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|item| item.start_with?(/s/) || item.start_with?(/w/)}

puts "After 2nd delete_if operation:"

puts arr