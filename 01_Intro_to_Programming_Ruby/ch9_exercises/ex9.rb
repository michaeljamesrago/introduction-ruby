=begin
Chapter 9 exercise 9
Suppose you have a hash h = {a:1, b:2, c:3, d:4}

1. Get the value of key `:b`.

2. Add to this hash the key:value pair `{e:5}`

3. Remove all key:value pairs whose value is less than 3.5
=end

h = {a:1, b:2, c:3, d:4}
print "Hash \'h\': "
puts h
puts "Value of h[:b] is #{h[:b]}."
puts "Adding e:5 to hash h: "
h[:e] = 5
p h
puts "Removing all key:value pairs whose value is less than 3.5: "
h.delete_if{|k, v| v.to_f < 3.5}
p h

