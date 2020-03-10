# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.
# PSEUDOCODE:
# declare an empty array
# for i in 0..5
# get numbers from user and put them in the array
# take the last element off the array
# then use include? method to see if the number is in the array
# if yes, print message saying so
# if no, print message saying it isn't
num_array = []
ordinals_array = %w(1st 2nd 3rd 4th 5th last)

for i in (0..5) do
  print "Please enter the #{ordinals_array[i]} number: "
  num_array.push gets.chomp
end

last_num = num_array.pop

puts num_array.include?(last_num) ? "The number #{last_num} appears in #{num_array}." : "The number #{last_num} does not appear in #{num_array}."
