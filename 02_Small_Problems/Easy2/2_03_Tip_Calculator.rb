#Create a simple tip calculator. The program should prompt for a bill amount
#and a tip rate. The program must compute the tip and then display both the tip
#and the total amount of the bill.puts 'Please enter the bill total:'
bill = gets.chomp.to_f
puts 'Please enter the tip percentage:'
tip_percentage = gets.chomp.to_f / 100
tip = (bill * tip_percentage).round(2)
puts "The tip is #{Kernel.format('%02.2f', tip)}"
puts "The total is #{Kernel.format('%02.2f', (bill + tip))}"
