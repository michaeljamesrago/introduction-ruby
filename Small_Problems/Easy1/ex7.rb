def stringy(int)
  bits = ''
  while int > 0
    int.odd? ? bits.prepend('1') : bits.prepend('0')
    int -= 1
  end
  bits
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
