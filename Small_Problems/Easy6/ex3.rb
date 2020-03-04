# def find_fibonacci_index_by_length(int)
#   counter = 3
#   fib_array = [1, 1]
#   loop do
#     fib_array.push(fib_array[counter - 3] + fib_array[counter - 2])
#     break if fib_array[-1].to_s.length == int
#     counter +=1
#   end
#   counter
# end
def fibonacci(int)
  if int <=2
    return 1
  else
    return (fibonacci(int - 2) + fibonacci(int - 1))
  end
end

def find_fibonacci_index_by_length(int)
  fib = 1
  loop do
    break if fibonacci(fib).to_s.length == int
    fib += 1
  end
  fib
end

def ffibl(int, base = 'd')
  fib = 1
  loop do
    format_string = "%#{base}"
    break if format(format_string, fibonacci(fib)).length == int
    fib += 1
  end
  fib
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
