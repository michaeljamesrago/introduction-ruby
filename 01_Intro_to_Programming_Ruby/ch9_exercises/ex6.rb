=begin
Chapter 9 exercise 6
Get rid of duplicates without specifically removing any one value.
=end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Before: "
p arr
arr.unshift(0)
arr.push(11)
puts "After: "
p arr
puts "Getting rid of 11: "
arr.delete(11)
p arr
puts "Appending 3: "
arr << 3
p arr
puts "Getting rid of duplicates: "
arr.uniq!
p arr



