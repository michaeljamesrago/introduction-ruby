# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.
def sum(i)
  result = (1..i).reduce { |acc, elem| acc + elem }
  puts "Sum total of numbers between 1 and #{i} is #{result}."
end

def product(i)
  result = (1..i).reduce { |acc, elem| acc * elem }
  puts "Sum total of numbers between 1 and #{i} is #{result}."
end

num = ''
loop do
  print 'Please enter an integer greater than zero: '
  num = gets.chomp.downcase
  break if num.to_i.to_s == num
  puts 'That is an invalid entry.'
end

print "Enter 's' to compute the sum, 'p' to compute the product: "
loop do
  selection = gets.chomp.downcase
  if selection == 's'
    sum(num.to_i)
    break
  elsif selection == 'p'
    product(num.to_i)
    break
  else
    print "Please enter 's' or 'p': "
  end
end
