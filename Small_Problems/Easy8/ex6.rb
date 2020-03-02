#Input: two numbers num1 and num2
#For all the numbers between num1 and num2 inclusive, print Fizzbuzz if the
#number is divisible by both 3 and five, Fizz if it's only divisible by 3, Buzz
#if it's only divisible by 5, and the number itself if it's not divisible by
#either three or five.
def fizzbuzz(num1, num2)
  num1.upto(num2) do |i|
    if i % 3 == 0 && i % 5 == 0
      puts "Fizzbuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
  end
end
