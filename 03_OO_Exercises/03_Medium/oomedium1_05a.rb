class MinilangError < StandardError
end

class EmptyStackError < MinilangError
end

class WrongNumberOfArgumentsError < MinilangError
end

class InvalidTokenError < MinilangError
end

class Minilang
  VALID_COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)
  def initialize(command_string)
    @stack = []
    @register = 0
    @command_string = command_string
    @number_of_params = @command_string.scan(/<[^>]+>/).count
  end

  def eval(params = nil)
    validate_params(params)
    command_string = format(@command_string, params)
    entries = command_string.split
    entries.each do |entry|
      if entry.match(/^-?\d+$/)
        @register = entry.to_i
      else
        execute_command(entry)
      end
    end
  rescue MinilangError => err
    puts err.message
  end

  def execute_command(entry)
    command = entry.downcase.to_s
    raise InvalidTokenError, "Invalid Token: #{entry}" unless VALID_COMMANDS.include?(entry)
    send(command)
  end

  def validate_params(params)
    params_given = !!params ? params.count : 0
    if params_given != @number_of_params
      raise WrongNumberOfArgumentsError, "Wrong number of arguments!"
    end
  end

  def top_of_stack
    top = @stack.pop
    raise EmptyStackError, "Empty stack!" if top == nil
    top
  end

  def pop
    @register = top_of_stack
  end

  def print
    puts @register
  end

  def push
    @stack.push(@register)
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

Minilang.new('-3 PUSH 5 XSUB PRINT').eval # InvalidTokenError
Minilang.new('5 PUSH POP POP PRINT').eval #EmptyStackError
CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
FAHRENHEIT_TO_CENTIGRADE = '9 PUSH 5 PUSH 32 PUSH %<degrees_f>d SUB MULT DIV PRINT'
AREA_OF_A_RECTANGLE = '%<width>d PUSH %<height>d MULT PRINT'
c_to_f = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
c_to_f.eval(degrees_c: 100)
# => 212
c_to_f.eval(degrees_c: 0)
# => 32
c_to_f.eval(degrees_c: -40)
# => -40
c_to_f.eval
# => WrongNumberOfArgumentsError
f_to_c = Minilang.new(FAHRENHEIT_TO_CENTIGRADE)
f_to_c.eval(degrees_f: 0)
# => -18
f_to_c.eval(degrees_f: 32)
# => 0
f_to_c.eval(degrees_f: 100)
# => 37
f_to_c.eval(degrees_f: 212)
# => 100
f_to_c.eval(degrees_f: 50, humidity: 30)
# => WrongNumberOfArgumentsError
area_calculator = Minilang.new(AREA_OF_A_RECTANGLE)
area_calculator.eval(width: 15, height: 21)
# => 315
area_calculator.eval(width: 15)
# => WrongNumberOfArgumentsError
area_calculator.eval
# => WrongNumberOfArgumentsError
