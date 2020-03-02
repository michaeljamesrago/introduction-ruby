=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Input: n, an integer value.
Create an array switches with ::new, with n + 1 elements and default value of false]
Initialize counter to 1
Set up an outer loop:
  While counter <= n
  Set up an inner loop:
    i = counter
    while i < switches.size
      switches[i] = !switches[i]
      i += counter
    end
    counter += 1
  end
Now switches is an array with index numbers 1 through n filled with Boolean values. Select the index numbers of "true" elements for the return array.




=end

require 'pry'

def lights(n)
  switches = Array.new(n + 1, false)
  counter = 1
  while counter <= n
    i = counter
    while i < switches.size
      switches[i] = !switches[i]
      i += counter
    end
    counter += 1
  end
  ons = []
  switches[1..-1].each_with_index{ |elem, i| ons << i + 1 if elem }
  ons
end

p lights 5
