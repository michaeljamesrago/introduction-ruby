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

INV_HASH = CONVERSION_HASH.invert

def integer_to_string(int)
  return 0 if int == 0
  digit_string = ''
  while int > 0
    digit_string << INV_HASH[int % 10]
    int /= 10
  end
  digit_string.reverse
end

def signed_integer_to_string(int)
  return integer_to_string(int) if int >= 0
  '-' + integer_to_string(int.abs)
end

p signed_integer_to_string(0)
p signed_integer_to_string(-50)
p signed_integer_to_string(654)
p signed_integer_to_string(-1433)
