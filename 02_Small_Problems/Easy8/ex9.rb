#Input: integer with undetermined number of digits num
# Convert num to a string
# reverse the string
# convert the reversed string to an integer
# return that integer
def reversed_number(num)
  num.to_s.reverse.to_i
end
