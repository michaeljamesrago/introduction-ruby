#Input: a number n
# instantiate an array fibs [1, 1]
# set a local variable i = 2
# while i < n
#   fibs[i] = fibs[i-2] + fibs[i-1]
#   increment i by one
# return fibs[-1]

def fibonacci_last(n)
  fibs = [1, 1]
  i = 2
  while i < n
    fibs[i] = (fibs[i-2] + fibs[i-1]) % 10
    i += 1
  end
  fibs[-1]
end
puts fibonacci_last(15),        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20),        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100),# -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001),   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007), # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
