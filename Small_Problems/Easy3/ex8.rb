def palindrome?(str)
  forward = 0
  backward = str.length - 1
  while forward < backward
    return false if str[forward] != str[backward]
    forward += 1
    backward -= 1
  end
  true
end

puts palindrome?('maddam')
puts palindrome?('madam')
puts palindrome?('356653')
puts palindrome?('Madam')
puts palindrome?([1, 2, 'middle', 'middle', 2, 1])
puts palindrome?([true, false, false, false, false, false, false, true])
puts palindrome?([[1, 2], [3, 4], [3, 4], [1, 2]])
puts palindrome?('A')
