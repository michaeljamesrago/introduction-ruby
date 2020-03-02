#Input: an array of integers arr
#Use reduce method to get product of all members of arr
#Convert product to float and divide it by size of arr, rounding the result to
# three decimal places
def show_multiplicative_average(arr)
  product = arr.reduce{ |elem, acc| elem * acc }.to_f
  average = (product / arr.size).round(3)
  puts "The result is #{average}"
end

puts show_multiplicative_average([2, 5, 7])

show_multiplicative_average([3, 5])
#The result is 7.500

show_multiplicative_average([6])
#The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667
