#Write a method that takes two Array arguments in which each Array contains a
#list of numbers, and returns a new Array that contains the product of every
#pair of numbers that can be formed between the elements of the two Arrays. The
#results should be sorted by increasing value.
#Input: 2 arrays of numbers, arr1 and arr2
# Get product of both arrays prod
# do a #map on prod, that subjects each element to the Array#reduce method
# sort the resulting array
def multiply_all_pairs(arr1, arr2)
  prod = arr1.product(arr2)
  prod.map{ |arr| arr.reduce{ |acc, elem| acc * elem }}.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
