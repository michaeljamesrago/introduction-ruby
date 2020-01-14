=begin
Chapter 5 exercise 2
Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
=end

x = ""

while x != "STOP" do
  puts "Type STOP"
  x = gets.chomp
end