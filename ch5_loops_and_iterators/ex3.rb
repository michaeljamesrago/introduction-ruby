=begin
Chapter 5 exercise 3
Write a method that counts down to zero using recursion.
=end

def countdown(i)
    puts i
    i -= 1
    countdown(i) if i >= 0
end 

puts "Enter a number for recursion countdown:"
countdown(gets.chomp.to_i)