# Input: a string str
# initialize empty string repeated
# Use chars method on str to get an array of characters
# Use each method to iterate through list of characters
# Use times method to add character to repeated twice
# Return repeated
def repeater(str)
  repeated = ''
  str.chars.each do |char|
    2.times{ |_| repeated << char }
  end
  repeated
end
puts repeater("Hello everybody!")
