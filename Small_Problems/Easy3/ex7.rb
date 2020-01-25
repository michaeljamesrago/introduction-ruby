# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.
def oddities1(arr)
  i = 0
  arr2 = []
  while (arr[i])
    arr2.push(arr[i])
    i += 2
  end
  arr2
end

def oddities2(arr)
  arr2 = []
  arr.each_with_index{ |obj, i| arr2.push(obj) if i.even? }
  arr2
end

def oddities3(arr)
  i = 1
  while arr[i]
    arr[i] = nil
    i+=2
  end
  arr.compact
end

puts oddities1(['first', 'second', 'third', 'fourth', 'fifth', 'sixth']).inspect
puts oddities2(['seventh', 'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth']).inspect
puts oddities3(['thirteenth', 'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth']).inspect
