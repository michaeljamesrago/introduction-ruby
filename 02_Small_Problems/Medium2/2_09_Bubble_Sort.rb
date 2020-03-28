# Bubble Sort is one of the simplest sorting algorithms available. It isn't an
# efficient algorithm, but it's a great exercise for student developers. In this
# exercise, you will write a method that does a bubble sort of an Array.
#
# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.
#
# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be "in
# place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.
def my_bubble_sort!(array)
  loop do
    swapped = false
    0.upto(array.length - 2) do |i|
      if array[i] > array[i + 1]
        array[i + 1], array[i] = array[i], array[i + 1]
        swapped = true
      end
    end
    break if !swapped
  end
  array
end

def bubble_sort!(array)
  loop do
    i = 1
    swapped = false
    1.upto(array.size - i) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
      i += 1
    end
    break unless swapped
  end
  nil
end

p array = [5, 3]
bubble_sort!(array)
p array

p array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array
