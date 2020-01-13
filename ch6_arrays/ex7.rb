=begin
Chapter 6 exercise 7
Use the each_with_index method to iterate through an array of your creation that
 prints each index and value of the array.
=end

["cero","uno","dos","tres","cuatro"].each_with_index {|x,i| puts "#{i}: #{x}"}