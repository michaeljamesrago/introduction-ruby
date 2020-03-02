def find_fibonacci_index_by_length(int)
  counter = 3
  fib_array = [1, 1]
  loop do
    fib_array.push(fib_array[counter - 3] + fib_array[counter - 2])
    break if fib_array[-1].to_s.length == int
    counter +=1
  end
  counter
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
