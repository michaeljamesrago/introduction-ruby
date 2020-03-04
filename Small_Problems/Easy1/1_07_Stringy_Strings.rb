#Write a method that takes one argument, a positive integer, and returns a
#string of alternating 1s and 0s, always starting with 1. The length of the
#string should match the given integer.def stringy(int)
def stringy(int)
  bits = ''
  while int > 0
    int.odd? ? bits = '1' + bits : bits = '0' + bits
    int -= 1
  end
  bits
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
