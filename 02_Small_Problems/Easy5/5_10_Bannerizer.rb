# Write a method that will take a short line of text, and print it within a box.
def wrapper(str)
  words = str.split
  lines = []
  while !words.empty?
    line = ''
    while line.length < 76
      line << words.shift if words[0].length + line.length <= 76
      break if words.empty? || words[0].length + 1 + line.length > 76
      line << ' '
    end
    lines << line
  end
  lines
end

def wrapper_dev(str)
  words = str.split
  lines = []
  while !words.empty?
    line = ''
    while line.length < 76
      next_word_length = words[1] ? words[1].length : 0
      line << words.shift if words[0].length + line.length <= 76
      break if next_word_length == 0 || next_word_length + 1 + line.length > 76
      line << ' '
    end
    lines << line
  end
  lines
end

long_str = "This is a fairly straight forward solution To simplify matters, we start out by setting horizontal_rule and empty_line to appropriate values for the top and bottom 2 lines of the box. The expression '-' * (message.size + 2) simply creates a string of message.size + 2 hyphens; combined with the + at the beginning and end of the the string, this is just wide enough to draw the horizontal lines while leaving room for one blank on either side of the message."

puts wrapper(long_str)
puts wrapper_dev(long_str)

def print_in_box(str)
  banner_text = wrapper_dev(str)
  banner_width = banner_text.max{|a, b| a.length <=> b.length}.to_s.length + 2
  top_bottom_border = '+' + ('-' * banner_width) + '+'
  blank_line = '|' + (' ' * banner_width) + '|'
  puts top_bottom_border, blank_line
  banner_text.each{|line| puts '|' + line.center(banner_width) + '|'}
  puts blank_line, top_bottom_border
end

print_in_box "Fourscore and seven years ago"
print_in_box ""
print_in_box "To boldly go where no one has gone before."
print_in_box long_str
