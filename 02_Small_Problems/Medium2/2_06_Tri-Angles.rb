# To be a valid triangle, the sum of the angles must be exactly 180 degrees, and
# all angles must be greater than 0: if either of these conditions is not
# satisfied, the triangle is invalid.
#
# Write a method that takes the 3 angles of a triangle as arguments, and returns
# a symbol :right, :acute, :obtuse, or :invalid depending on whether the
# triangle is a right, acute, obtuse, or invalid triangle.
#
# You may assume integer valued angles so you don't have to worry about floating
# point errors. You may also assume that the arguments are specified in degrees.

def triangle(a, b, c)
  sides = [a, b, c]
  negative_or_zero_lengths = sides.any?{ |side| side <= 0 }
  angle_sum_not_180 = sides.reduce{ |acc, elem| acc + elem } != 180
  return :invalid if negative_or_zero_lengths || angle_sum_not_180
  return :right if sides.include?(90)
  return :acute if sides.all?{ |side| side < 90 }
  return :obtuse
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid
