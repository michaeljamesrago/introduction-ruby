# Write a method that computes the difference between the square of the sum of
# the first n positive integers and the sum of the squares of the first n
# positive integers.
def sum_square_difference(num)
  square_of_sum = (1..num).to_a.reduce(&:+) ** 2
  sum_of_squares = (1..num).to_a.reduce(0) { |acc, elem| acc + (elem ** 2) }
  square_of_sum - sum_of_squares
end

puts sum_square_difference(3) == 22 # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
