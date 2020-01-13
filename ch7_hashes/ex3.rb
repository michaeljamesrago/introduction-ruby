=begin
Chapter 7 exercise 3
Using some of Ruby's built-in Hash methods, write a program that loops through a 
hash and prints all of the keys. Then write a program that does the same thing 
except printing the values. Finally, write a program that prints both.
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

all_time_highs.each_key{ |k| puts k }

all_time_highs.each_value{ |v| puts v }

all_time_highs.each{ |k, v| puts "#{k}: #{v}" }