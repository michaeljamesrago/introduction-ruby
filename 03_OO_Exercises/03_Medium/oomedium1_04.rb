#Circular queue class
#  Initialize method takes one parameter, size, @size
#  Counter variable set to zero
#  empty hash created to store elements with counter variable as keys
#
# dequeue method
#   keys method, min method to find lowest key in hash, delete pair
#
# enqueue method(elem)
#   adds key counter variable to hash, sets value to elem
#   increments counter variable by one
#   if there are more than @size pairs in the hash, execute dequeue method
#
require 'pry'
class CircularQueue
  def initialize(max_size)
    @max_size = max_size
    @elements = {}
    @counter = 0
  end

  def dequeue
    oldest_key = @elements.keys.min
    @elements.delete(oldest_key)
  end

  def enqueue(val)
    @elements[@counter] = val
    @counter += 1
    dequeue if @elements.size > @max_size
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

# class CircularQueue
#   def initialize(size)
#     @buffer = [nil] * size
#     @end = 0
#     @start = 0
#   end
#
#   def enqueue(object)
#     if @buffer[@end].nil?
#       @buffer[@end] = object
#     else
#       @start = increment(@end)
#       @buffer[@end] = object
#     end
#
#     @end = increment(@end)
#   end
#
#   def dequeue
#     value = @buffer[@start]
#     @buffer[@start] = nil
#     @start = increment(@start) unless value.nil?
#     value
#   end
#
#   private
#
#   def increment(position)
#     (position + 1) % @buffer.size
#   end
# end
