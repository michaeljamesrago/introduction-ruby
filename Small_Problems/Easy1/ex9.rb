def sum(digits)
  total = 0
  digits = digits.to_s
  digits_arr = digits.chars
  while digits_arr[0]
    total += digits_arr.shift.to_i
  end
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
  