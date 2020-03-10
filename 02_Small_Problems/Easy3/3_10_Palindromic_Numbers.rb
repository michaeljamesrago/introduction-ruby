#Write another method that returns true if the string passed as an
#argument is a palindrome, false otherwise. This time, however, your
#method should be case-insensitive, and it should ignore all non
#alphanumeric characters. If you wish, you may simplify things by
#calling the palindrome? method you wrote in the previous exercise.
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

def palindromic_number?(num)
  palindrome?(num.to_s)
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true
