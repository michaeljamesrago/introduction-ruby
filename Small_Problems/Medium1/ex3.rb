#Input: num
#Convert num to string str
#Initialize local variable count to length of str
#Set up a loop: while count > 0
#  Reassign num to rotate_rightmost_digits method with arguments num, count
#  count -= 1
#Return num

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(num)
  count = num.to_s.length
  while count > 0
    num = rotate_rightmost_digits(num, count)
    count -= 1
  end
  num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
