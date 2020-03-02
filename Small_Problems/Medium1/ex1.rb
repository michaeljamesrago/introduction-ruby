#Write a method that rotates an array by moving the first element to the end of
#the array. The original array should not be modified.
# Input: an array arr.
# Initialize an empty array rotated, same size as arr
# Set local variable ind equal to arr.length - 1
# while ind > 0
#  arr[ind] = rotated[ind - 1]
#  ind -= 1
# Return rotated.
def rotate_array_dumb_way(arr)
  rotated = Array.new(arr.size)
  ind = arr.size - 1
  while ind >= 0
    rotated[ind - 1] = arr[ind]
    ind -= 1
  end
  rotated
end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]

puts rotate_string('abcde')
