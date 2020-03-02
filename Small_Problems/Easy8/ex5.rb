def substrings_at_start(str)
  arr = []
  i = 0
  while i < str.size
    arr << str[0..i]
    i += 1
  end
  arr
end

def substrings(str)
  arr = []
  i = 0
  while i < str.size
    substrings_at_start(str[i..-1]).each do |elem|
      arr << elem
    end
    i += 1
  end
  arr
end
#is_palindrome? method
#Input: a string str
#Initialize len as length of string
#Take a slice of str first_half starting at 0, len/2 characters long
#Take another slice of str second_half starting at zero - first_half.length
#  through -1
#reverse second_half and test it for equality with first half
def is_palindrome?(str)
  len = str.length
  return false if len == 1
  half_len = len / 2
  first_half = str.slice(0, half_len)
  second_half = str[0 - half_len..-1]
  return first_half == second_half.reverse
end

def palindromes(str)
  substrings(str).select{ |elem| is_palindrome?(elem) }
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
