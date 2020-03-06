class Cat
  attr_accessor :name
#  Equivalent to:
#  def name
#    @name
#  end
#
#  def name=(name)
#    @name = name
#  end


  def initialize(name)
    @name = name
    greet
  end

  def greet
    puts "Hello, my name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.name = "Luna" #Equivalent to kitty.name=('Luna')
kitty.greet
