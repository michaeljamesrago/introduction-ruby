#Input: two arrays arr1 and arr2
#Initialize empty array new_arr
#From zero through the last index number, take the element at index i, first
# from one array, put it in new_arr, then from the other array, and put that in
# new_arr as well.
#return new_arr
def interleave(arr1, arr2)
  new_arr = []
  last_index = arr1.size-1
  0.upto(last_index) do |i|
    new_arr << arr1[i]
    new_arr << arr2[i]
  end
  new_arr
end

def interleave2(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave2([1, 3, 5], [2, 4, 6])
