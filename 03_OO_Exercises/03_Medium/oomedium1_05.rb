CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'

class Minilang
  def initialize(command_string)
    @stack = []
    @register = 0
    @command_string = command_string
  end

  def eval
    entries = @command_string.split
    entries.each do |entry|
      if entry.match(/^-?\d+$/)
        @register = entry.to_i
      else
        command = entry.downcase.to_s
        begin
          send(command)
        rescue NoMethodError
          puts "Invalid Token: #{entry}"
          exit
        end
      end
    end
  end

  def push
    @stack.push(@register)
  end

  def print
    puts @register
  end

  def top_of_stack
    begin
      top = @stack.pop
      if top == nil
        x = Exception.new("Empty Stack!")
        raise x
      end
    rescue Exception => x
      puts x.message
      exit
    end
    top
  end

  def pop
    @register = top_of_stack
  end

  def add
    @register += top_of_stack
  end

  def sub
    @register -= top_of_stack
  end

  def mult
    @register *= top_of_stack
  end

  def div
    @register /= top_of_stack
  end

  def mod
    @register %= top_of_stack
  end
end
Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

#Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

#Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: 100)).eval
# 212
Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: 0)).eval
# 32
Minilang.new(format(CENTIGRADE_TO_FAHRENHEIT, degrees_c: -40)).eval
# -40
