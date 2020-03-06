=begin
Chapter 4 exercise 2
Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD".
=end

def capper(str)
  unless str.length < 10
    str.upcase
  else
    "string less than ten characters"
  end
end

puts capper("How do you do?")

puts capper("Frank")
