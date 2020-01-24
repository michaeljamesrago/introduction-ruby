def reverse_sentence(str)
  arr = str.split(' ')
  arr.reverse!
  arr.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'