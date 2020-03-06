#Write a method that takes two arguments, a string and a positive integer, and
#prints the string as many times as the integer indicates.

def repeat_string(str="String not specified", num=1)
  num.times do
    puts str
  end
end

repeat_string
repeat_string("Hello", 8)
