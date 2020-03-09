#A fixed-length array is an array that always has a fixed number of elements.
#Write a class that implements a fixed-length array, and provides the necessary
#methods to support the following code.
# FixedArray should extend Array
# override [] to use fetch
# override []= to also use fetch
# Note: "Inheriting from Array means you need to verify that all of the
# standard Array methods will work properly with the fixed-length requirement;
# that could be a lot of code. Furthermore, it is generally considered bad form
# to inherit from standard classes; instead, you should use a collaborator
# object." So this would be the wrong way, even though it works:
#
# class FixedArray < Array
#   def [](ind)
#     self.fetch(ind)
#   end
#
#   def []=(ind, elem)
#     self.fetch(ind)
#     super(ind, elem)
#   end
# end
#
# Here is the solution implemented with a collaborator object:
class FixedArray
  def initialize(max_size)
    @array = Array.new(max_size)
  end

  def [](index)
    @array.fetch(index)
  end

  def []=(index, value)
    self[index]             # raise error if index is invalid!
    @array[index] = value
  end

  def to_a
    @array.clone
  end

  def to_s
    to_a.to_s
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
