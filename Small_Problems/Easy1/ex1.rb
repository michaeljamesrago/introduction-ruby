def repeat_string(str="String not specified", num=1)
  num.times do
    puts str
  end
end

repeat_string
repeat_string("Hello", 8)

=begin
On `line 1` through `line 5`, a method called `repeat_string` is defined. It takes two parameters: variable `str` which points by default to a string object with a value of "String not specified", and `num` which points by default to an integer object with a value of 1.

On 'line 2' through 'line 4', the `times` method is invoked on the object represented by the variable `num` which will have been passed in by a call to the `repeat_string` method. The block defined between the `do` keyword on `line 2` and the `end` keyword on line 4 is passed to the `times` method as an argument.

On `line 3`, the Kernel.puts() method is invoked with an argument of `str`, the value of which will be determined when the `repeat_string` method is invoked with or without arguments. The return value of the puts() method will be `nil`.

The output of the `repeat_string` method will be the value of `str` repeated the number of times specified by the value of `num`. The return value of the `repeat_string` method will be the value of `num`, because the `times` method returns the caller.

On `line 7`, the `repeat_string` method is invoked with no arguments. This causes the statements in the method definition to be executed with their default values. The output will be "String not specified" one time, and the return value will be 1.

On `line 8`, the `repeat_string` is invoked with the arguments "Hello" and 8. The output of this method invocation will be the string `Hello` repeated eight times, and the return value of this call to the `repeat_string` method will be 8.

This code demonstrates that methods invoked with no arguments can still have predictable outputs and return values if they are defined with default values for their parameters.
=end
