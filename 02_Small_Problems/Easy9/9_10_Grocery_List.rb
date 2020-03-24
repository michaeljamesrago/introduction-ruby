# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.
def buy_fruit(list)
  arr = []
  items = list.map { |item| item[0] }
  items.each do |item|
    list.assoc(item)[1].times { |_| arr << item }
  end
  arr
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
