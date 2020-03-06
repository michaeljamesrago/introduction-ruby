#Write a method that takes an Array of numbers and then returns the sum of the
#sums of each leading subsequence for that Array. You may assume that the Array
#always contains at least one number.
# Input: An array with at least one element, where all elements are numbers
# Initialize local variable acc as an accumulator value, set it to 0
#   Initialize counter variable ind, set to 0
# Loop through the array
#   Initialize variable sum to 0
#   For index values 0 through ind, add arr[index] to sum
#   Add sum to acc
#   Increment i by 1
#   break out of loop if i is equal to arr.size
# Return acc
def sum_of_sums(arr)
  acc = 0
  ind = 0
  loop do
    sum = 0
    0.upto(ind) do |i|
      sum += arr[i]
    end
    acc += sum
    ind += 1
    break if ind == arr.size
  end
  acc
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])
