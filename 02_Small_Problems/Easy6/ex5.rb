def reverse(arr)
  counter = arr.length
  new_arr = []
  while counter > 0
    new_arr << arr[counter - 1]
    counter -= 1
  end
  new_arr
end

def reverse2(arr)
  arr.each_with_object([]){ |elem, memo| memo.unshift(elem) }
end

def reverse3(arr)
  arr.inject([]){ |memo, elem| memo.unshift(elem) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]

puts reverse2([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse2(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse2(['abc']) == ['abc']              # => true
puts reverse2([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse2(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]

puts reverse3([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse3(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse3(['abc']) == ['abc']              # => true
puts reverse3([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse3(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]
