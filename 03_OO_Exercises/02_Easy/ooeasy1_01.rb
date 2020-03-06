#Complete this class so that the test cases shown below work as intended. You
#are free to add any methods or instance variables you need. However, do not
#make the implementation details public. You may assume that the input will
#always fit in your terminal window.

class Banner
  def initialize(message, width = nil)
    @message = message
    @wide_enough = width && (width >= message.length + 2)
    @wide_enough ? @width = width : @width = message.length + 2
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
    "+#{'-' * @width}+"
  end

  def empty_line
    "|#{' ' * @width}|"
  end

  def message_line
    "|#{@message.center(@width)}|"
  end
end
banner1 = Banner.new("To boldly go where no one has gone before.")
puts banner1.to_s
puts banner1.inspect
banner2 = Banner.new("To boldly go where no one has gone before.", 8)
puts banner2.to_s
puts banner2.inspect
banner3 = Banner.new("To boldly go where no one has gone before.", 64)
puts banner3.to_s
puts banner3.inspect
