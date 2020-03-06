=begin
Chapter 8 exercise 1
Write a program that checks if the sequence of characters "lab" exists in the 
following strings. If it does exist, print out the word.

"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end

arr = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate', 'polar bear']

arr.each {|word| puts word if word =~ /lab/ }
