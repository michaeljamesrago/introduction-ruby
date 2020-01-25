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

def real_palindrome?(str)
  str = str.to_s
  palindrome?(str.downcase.delete('^0-9a-z'))
end

puts real_palindrome?('Able was I ere I saw elba.')
puts real_palindrome?('A man, a plan, a canal. Panama!')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?("Amal L. : llama")
puts real_palindrome?(12321)
puts real_palindrome?(14.41)
puts real_palindrome?(1446441)
puts real_palindrome?(14.411)
