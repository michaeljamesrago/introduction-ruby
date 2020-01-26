CONVERSION_HASH = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15
}

def string_to_integer(str)
  int = 0
  multiplier = 1
  str.chars.reverse.each do |char|
    int += CONVERSION_HASH[char] * multiplier
    multiplier *= 10
  end
  int
end

def hexadecimal_to_integer(str)
  digits = str.chars.map { |char| CONVERSION_HASH[char] }
  digits.reduce(0) { |acc, elem| acc * 16 + elem }
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts hexadecimal_to_integer('9f')
puts hexadecimal_to_integer('a0')
puts hexadecimal_to_integer('af')
puts hexadecimal_to_integer('64')
puts hexadecimal_to_integer('4d9f')
