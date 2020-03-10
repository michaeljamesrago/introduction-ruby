#Using the multiply method from the "Multiplying Two Numbers" problem,
#write a method that computes the square of its argument (the square is
#the result of multiplying a number by itself).
def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

def raise(num, exp)
  acc = 1
  exp.times do |_|
    acc = multiply(num, acc)
  end
  acc
end

puts raise(2, 3)
puts raise(4, 2)
puts raise(6, 6)
