=begin
Chapter 5 exercise 2
Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.
=end

x = ""

while x != "STOP" do
  puts "Type STOP"
  y = 5
  x = gets.chomp
end

puts y
=begin
On `line 6`, a local variable `x` is initialized to an empty string (`""`).

On `line 8` through `line 12`, a loop is set up with the `while` keyword. The code in the `do...end` will be executed over and over again, as long as the condition to the left of the `do` keyword evaluates to `true`. The `do...end` does not define a block because it is not an argument passed to a method, but rather a piece of code to be executed conditionally to an adjacent statement. Therefore, it does not create an inner scope.

On `line 9`, the Kernel.puts() method is invoked, and the argument "Type stop", a string literal, is passed to it. This will output `Type STOP`, and return `nil`.

On `line 10`, a local variable `y` is initialized with an integer value of 5.

On `line 11`, the `Kernel.gets()`` method is invoked, which allows a system user to type in a value to be captured by the program. The return value of this method call will then call the `chomp` method, which will mutate the object by removing the trailing newline character. The resulting return value will be a string, and the local variable `x` is assigned to that string.

This section of code from `line 8` through `line 12` will execute at least once, because the condition that `x != "STOP"` evaluates to `true` before the first iteration. The loop will only stop when that condition evaluates to `false`, which will only happen when the user types "STOP" when prompted.

On `line 14`, the `Kernel.puts()` method is invoked with the local variable `y` passed to it as an argument. Since `y` was initialized with a value of 5 on `line 10`,
=end
