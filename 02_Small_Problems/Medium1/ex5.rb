#Write a method that displays a 4-pointed diamond in an n x n grid, where n is
#an odd integer that is supplied as an argument to the method. You may assume
#that the argument will always be an odd integer.
# Input: odd integer num
# Initialize counter variable to 1.
# Set up a loop
#   Output a string consisting of the character '*' repeated counter times,
#     centered with padding to make it num spaces wide.
#   Break if counter = num
#   Increment counter by 2
# Decrement counter by two and set up another loop, same as the first but
#   decrementing counter by two each iteration.
def diamond(num)
  counter = 1
  loop do
    puts "#{('*' * counter).center(num)}"
    break if counter == num
    counter += 2
  end
  if num != 1
    counter -= 2
    loop do
      puts "#{('*' * counter).center(num)}"
      break if counter == 1
      counter -= 2
    end
  end
end
