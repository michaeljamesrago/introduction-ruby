def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

def raise(num, exp)
  acc = 1
  (1..exp).each { acc = multiply(num, acc) }
  acc
end

puts raise(2, 3)
puts raise(4, 2)
puts raise(6, 6)
