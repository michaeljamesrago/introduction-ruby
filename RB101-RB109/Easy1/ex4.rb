=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted, print each element alongside the number of occurrences.

Create hash.
Iterate through array.
  For each element of array, check if hash has that element as a key.
    If not, add the key to the hash and set its value to 1.
    If it does, increment the value associated with that key by 1.
Print out the hash.
=end

vehicles = [
  'car', 'cAR', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'Car', 'CAr'
]
=begin
def count_occurrences(arr)
  h = {}
  arr.each do |item|
    x = item.downcase     #Misunderstood the part about being 'case-sensitive'.
    unless h.has_key?(x)
      h[x] = 1
    else
      count = h[x]
      count += 1
      h[x] = count
    end 
  end
  puts arr
  puts h
end 
=end
def count_occurrences(arr)
  h={}
  arr.uniq.each do |item|
    h[item] = arr.count(item)
  end
  h.each do |x, y|
    puts "#{x}: #{y}"
  end
end
count_occurrences(vehicles)

=begin
Better way: 
def count_occurrences(arr)
  h={}
  arr.uniq.each do |item|
    h[item] = arr.count(item)
  end
  h.each do |x, y|
    puts "#{x}: #{y}"
  end
end
=end
