class Machine
  def initialize
    @switch = :off
  end

  def start
    puts "start method executing"
    flip_switch(:on)
    p self
  end

  def stop
    puts "stop method executing"
    flip_switch(:off)
    p self
  end

  def on_or_off
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    puts "private method flip switch executing"
    puts "Argument = #{desired_state}"
    self.switch = desired_state
  end
end
machine = Machine.new
p machine.on_or_off
machine.start
machine.stop
machine.send :flip_switch, :on
p machine
p machine.on_or_off
