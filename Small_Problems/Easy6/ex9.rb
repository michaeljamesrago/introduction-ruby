# Input: an array arr, and a value param
# Iterate through arr, and return true when/if the element is equal to param
# If it gets through all the elements without returning, have the method return
# false
def include?(arr, param)
  arr.each{ |elem| return true if elem == param }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false
