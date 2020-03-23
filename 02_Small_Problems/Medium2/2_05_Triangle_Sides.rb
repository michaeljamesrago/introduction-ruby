#To be a valid triangle, the sum of the lengths of the two shortest sides must
#be greater than the length of the longest side, and all sides must have lengths
#greater than 0: if either of these conditions is not satisfied, the triangle is
#invalid.

#Write a method that takes the lengths of the 3 sides of a triangle as
#arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid
#depending on whether the triangle is equilateral, isosceles, scalene, or
#invalid.
def triangle(a, b, c)
  sides = [a, b, c]
  negative_or_zero_lengths = sides.any?{ |side| side <= 0 }
  sum_of_2_short_sides = sides.min(2).reduce{ |elem, acc| elem + acc }
  shorts_less_than_long = sum_of_2_short_sides <= sides.max
  return :invalid if negative_or_zero_lengths || shorts_less_than_long
  return :valid
end
