#Write a method that counts the number of occurrences of each element in a given
#array. The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once
#counted, print each element alongside the number of occurrences.

def count_occurences(arr)
  hsh = Hash.new(0)
  arr.each{ |elem| hsh[elem] += 1 }
  hsh.each{ |k, v| puts "#{k}: #{v}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]
count_occurences(vehicles)
