def repeat_string(str="String not specified", num=1)
  num.times do
    puts str
  end
end 

repeat_string
repeat_string("Hello", 8)