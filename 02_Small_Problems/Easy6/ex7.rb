#Write a method that takes an Array as an argument, and returns two Arrays (as
#a pair of nested Arrays) that contain the first half and second half of the
#original Array, respectively. If the original array contains an odd number of
#elements, the middle element should be placed in the first half Array.
# Input: Array arr of length n
# Declare an empty array first_half
# Declare an empty array second_half
# Loop through arr with indexes: case n <=> index
# when -1, place elem in first_half
# when 0, place elem in first half if n is odd, second_half if in is even
# when 1, place elem in second half.
# return [first_half, second_half]
def halvsies(arr)
  first_half = []
  second_half = []
  len = arr.length
  arr.each_with_index do |elem, ind|
    case ind <=> len / 2
    when -1
      first_half << elem
    when 0
      len.odd? ? first_half << elem : second_half << elem
    when 1
      second_half << elem
    end
  end
  [first_half, second_half]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
puts halvsies([:fl, "md", 695, 'nc']) == [[:fl, "md"], [695, 'nc']]
puts halvsies(["boo", "far", "foo", "bar", "bor"]) == [['boo', 'far', 'foo'], ['bar', 'bor']]
puts halvsies([:three]) == [[:three], []]
puts halvsies([]) == [[], []]
