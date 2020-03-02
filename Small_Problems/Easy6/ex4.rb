#Write a method that takes an Array as an argument, and reverses its elements
#in place; that is, mutate the Array passed into this method. The return value
#should be the same Array object.
# Input: an array arr
# Initialize variable counter to equal length of arr array.
# Initialize empty array holder []
# Set up a loop: while counter is greater than zero, remove the last element
#   from arr and add it to holder, decrement counter by one each iteration
# Now holder contains all the elements from arr in reverse order
# Use #each method on holder array, add elements to arr one by one
# Return arr
def reverse!(arr)
  counter = arr.length
  holder = []
  while counter > 0
    holder << arr.pop
    counter -= 1
  end
  holder.each{ |n| arr << n }
  puts "working"
  arr
end

list = [1,2,3,4]
result = reverse!(list)
puts result == [4, 3, 2, 1]
puts list == [4, 3, 2, 1]
puts list.object_id == result.object_id

list = %w(a b e d c)
puts reverse!(list) == ["c", "d", "e", "b", "a"]
puts list == ["c", "d", "e", "b", "a"]

list = ['abc']
puts reverse!(list) == ["abc"]
puts list == ["abc"]

list = []
puts reverse!(list) == []
puts list == []
