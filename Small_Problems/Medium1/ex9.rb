#Input: a number n
# instantiate an array fibs [1, 1]
# set a local variable i = 2
# while i < n
#   fibs[i] = fibs[i-2] + fibs[i-1]
#   increment i by one
# return fibs[-1]

def fibonacci(n)
  fibs = [1, 1]
  i = 2
  while i < n
    fibs[i] = fibs[i-2] + fibs[i-1]
    i += 1
  end
  fibs[-1]
end

puts fibonacci(5)
puts fibonacci(20)
puts fibonacci(100)
puts fibonacci(100_001)
