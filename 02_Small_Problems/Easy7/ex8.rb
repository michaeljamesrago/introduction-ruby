#Input: two arrays arr1 and arr2, of the same length and consisting of numbers
#Set a counter variable i to 0
#Set a limit of arr1's length - 1
#Iterate through the arrays, multiplying the objects at index i for both arrays
def multiply_list(arr1, arr2)
  arr3 = []
  0.upto(arr1.length - 1) do |i|
    arr3 << arr1[i] * arr2[i]
  end
  arr3
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
