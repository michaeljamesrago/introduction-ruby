def abs_is_odd(num)
  return (num.abs.odd?)
end

puts abs_is_odd(5)
puts abs_is_odd(-6)
puts abs_is_odd(-453)
puts abs_is_odd(-7)

=begin
On `line 1` through `line 3`, the `abs_is_odd` method is defined, with one parameter expected, to which the variable `num` is assigned.

On `line 2`, the `abs` method is called on `num`, and assuming `num` is an integer, it will return the absolute value of that integer. Using method-chaining, this return value is then passed to the `odd?` method, which will return a boolean value indicating whether or not it's true that the method's caller is an odd number.

The resulting boolean value, coming after the `return` keyword, will cause the `abs_is_odd` method to return that boolean value.

On `line 5`, the `abs_is_odd` method is invoked, with an integer object of value `5` passed in as an argument. The `abs_is_odd` method will return the boolean value `true`, which will be passed to the `Kernel.puts()` method as an argument. The output will be `true` and the return value of the `Kernel.puts()` method will be nil.

This code demonstrates passing integer literals as arguments, and use of the `return` keyword to set the return value of a method inside its definition.
=end
