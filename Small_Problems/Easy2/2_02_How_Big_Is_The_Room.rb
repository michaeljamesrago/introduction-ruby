#Build a program that asks a user for the length and width of a room in meters
#and then displays the area of the room in both square meters and square feet.
#Note: 1 square meter == 10.7639 square feet
SQUARE_FEET_PER_SQUARE_METER = 10.7639
puts "Enter length in meters:"
length_in_meters = gets.chomp.to_f
puts "Enter width in meters:"
width_in_meters = gets.chomp.to_f
area_in_square_meters = length_in_meters.round(2) * width_in_meters.round(2)
area_in_square_feet = (area_in_square_meters * SQUARE_FEET_PER_SQUARE_METER).round(2)
puts "Area is #{area_in_square_meters} square meters (#{area_in_square_feet} square feet)"
