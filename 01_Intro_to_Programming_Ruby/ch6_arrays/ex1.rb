=begin
Chapter 6 exercise 1
Below we have given you an array and a number. Write a program that checks to 
see if the number appears in the array.
=end

arr = [1, 3, 5, 7, 9, 11]
number = 3
puts "#{number} is included in the array." if arr.include?(number)

=begin
Book solution:

arr.each do { |i|
  if i==number
    puts "#{i} is in the array."
end

=end

