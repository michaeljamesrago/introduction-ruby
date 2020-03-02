#Input: a string str
#Initialize an empty array arr
#set up a loop: i = 0
# Add a slice of str starting at 0 and ending at i to the arr array
# Increment i by one
# break out of loop if i equals str.length
def substrings_at_start(str)
  arr = []
  i = 0
  while i < str.size
    arr << str[0..i]
    i += 1
  end
  arr
end
