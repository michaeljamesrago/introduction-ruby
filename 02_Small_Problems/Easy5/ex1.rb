def ascii_value(str)
  str_copy = str.dup
  val = 0
  while str_copy.length > 0
    val += str_copy.slice!(0).ord
  end
  val
end

a = 'ddb'
puts "the value of a is #{a}"
puts ascii_value(a)
puts "the value of a is #{a}"
puts ascii_value('dda')
