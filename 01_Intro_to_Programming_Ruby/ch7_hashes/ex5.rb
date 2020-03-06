=begin
Chapter 7 exercise 5
What method could you use to find out if a Hash contains a specific value in it?
Write a program to demonstrate this use.
=end

all_time_highs = {
  :monday=>91.1, 
  :tuesday=>98.1, 
  :wednesday=>87.4, 
  :thursday=>97.5, 
  :friday=>95.2, 
  :saturday=>94.1, 
  :sunday=>98.0
}

print "Enter value: "
val = gets.chomp.to_f
puts all_time_highs.values.include?(val) ? "Value present in hash values." : "Value not present in hash values."
