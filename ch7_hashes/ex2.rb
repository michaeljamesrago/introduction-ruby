=begin
Chapter 7 exercise 2
Look at Ruby's merge method. Notice that it has two versions. What is the 
difference between merge and merge!? Write a program that uses both and 
illustrate the differences.
=end

all_time_highs = {
  monday: 91.1,
  tuesday: 97.0,
  wednesday: 87.4,
  thursday: 90.2,
  friday: 95.1,
}

daily_report = {
  tuesday: 98.1,
  thursday: 97.5,
  friday: 95.2,
  saturday: 94.1,
  sunday: 98.0
}

puts "\'all_time_highs\' hash before merge:"
p all_time_highs
puts "\'daily_report\' hash before merge:"
p daily_report
puts "return value of nondestructive merge:"
p all_time_highs.merge(daily_report){|day, standing_record, new_datum| new_datum >= standing_record ? new_datum : standing_record}
puts "but original \'all_time_highs\' hash is not updated:"
p all_time_highs
all_time_highs.merge!(daily_report){|day, standing_record, new_datum| new_datum >= standing_record ? new_datum : standing_record}
puts "\'all_time_highs\' hash after destructive merge:"
p all_time_highs
