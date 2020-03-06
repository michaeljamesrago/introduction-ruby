=begin
Chapter 9 exercise 3
Now, using the same array from #2, use the select method to extract all odd 
numbers into a new array.
=end

odds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|n| n % 2 == 1}
p odds