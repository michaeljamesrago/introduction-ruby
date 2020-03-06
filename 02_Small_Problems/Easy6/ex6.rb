#Write a method that takes two Arrays as arguments, and returns an Array that
#contains all of the values from the argument Arrays. There should be no
#duplication of values in the returned Array, even if there are duplicates in
#the original Arrays.
# Input: two array objects, arr1 and arr2
# Concatenate arrays into new array new_arr
# Remove duplicates from new_arr
# Return new_arr
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end
puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
