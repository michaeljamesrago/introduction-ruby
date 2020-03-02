#Input: a string str
#Initialize an empty array arr
#set up a loop: i = 0
# Take a slice of str substr from index i through -1
# Call the substrings_at_start method on substr to get an array of substrings
# Add each member of that array to arr
# Increment i by one
# break out of loop if i == str.size
#return arr
def substrings_at_start(str)
  arr = []
  i = 0
  while i < str.size
    arr << str[0..i]
    i += 1
  end
  arr
end

def substrings(str)
  arr = []
  i = 0
  while i < str.size
    substrings_at_start(str[i..-1]).each do |elem|
      arr << elem
    end
    i += 1
  end
  arr
end
