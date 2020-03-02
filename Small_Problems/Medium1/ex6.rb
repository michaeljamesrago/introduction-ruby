# Input: string str
# Initialize empty array stack
# Initialize local variable register to 0
# Initialize local variable commands to str.split
# Initialize a bunch of constants like ADD SUB MULT DIV PUSH POP and MOD
# Iterate through commands, operating on stack and register value as appropriate
#   when ADD, SUB, MULT, DIV, or MOD, pop a value from stack and perform the
#   operation on the register value
#   when PUSH, push register value onto the end of stack array
#   When POP, pop value from stack array and set register equal to it.
#   Else, set register value equal to command.to_i
ADD, SUB, MULT, DIV, MOD, PUSH, POP, PRINT = %w(ADD SUB MULT DIV MOD PUSH POP PRINT)

def minilang(command_str)
  stack = []
  register = 0
  commands = command_str.split
  commands.each do |command|
    case command
    when PUSH  then stack.push(register)
    when POP   then register = stack.pop
    when ADD   then register += stack.pop
    when SUB   then register -= stack.pop
    when MULT  then register *= stack.pop
    when DIV   then register /= stack.pop
    when MOD   then register %= stack.pop
    when PRINT then puts register
    else            register = command.to_i
    end
  end
  register
end

minilang('5 PUSH 3 MULT PRINT')
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
minilang('5 PUSH POP PRINT')
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
minilang('-3 PUSH 5 SUB PRINT')
minilang('6 PUSH')

#(3 + (4 * 5) - 7) / (5 % 3)
puts minilang("3 PUSH 5 MOD PUSH 5 PUSH 4 MULT PUSH 7 PUSH 3 SUB ADD DIV")
