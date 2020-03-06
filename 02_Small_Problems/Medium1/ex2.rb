def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_rightmost_digits_dumb(num, len)
  digits = num.to_s.chars
  left_digits = digits.slice(0, digits.size - len)
  right_digits = digits[(digits.length - len)..-1]
  right_digits = rotate_array(right_digits)
  (left_digits + right_digits).join.to_i
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917
