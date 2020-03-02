# Input: array of strings arr
# Call map method on arr, with block
#   Inside block, call delete method on each element of arr with one argument
#   ("aeiouAEIOU")

def remove_vowels(arr)
  arr.map{ |str| str.delete("aeiouAEIOU") }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
