# Input: a number num
# Output a series of strings.
# Iterate through the series of numbers 1 through num
# For each line, construct a string consisting of
#   Whitespace character * num - i
#   '*' * i

def triangle(num)
  1.upto(num) do |i|
    puts "#{' ' * (num - i)}#{('*' * i)}"
  end
end

triangle(5)
triangle(9)
