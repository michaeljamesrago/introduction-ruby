=begin
Chapter 9 exercise 4
Append 11 to the end of the original array. Prepend 0 to the beginning.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Before: "
p arr
arr.unshift(0)
arr.push(11)
puts "After: "
p arr

