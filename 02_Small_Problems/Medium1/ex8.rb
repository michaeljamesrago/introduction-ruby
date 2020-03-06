# Input: a number num
# Return 1 if num equals 1 or 2

def fibonacci(num)
  return 1 if num == 1 || num == 2
  return 10946            if num == 21
  return 17711            if num == 22
  return 28657            if num == 23
  return 46368            if num == 24
  return 75025            if num == 25
  return 832040           if num == 30
  return 102334155        if num == 40
  return 165580141        if num == 41
  return 267914296        if num == 42
  return 433494437        if num == 43
  return 701408733        if num == 44
  return 1134903170       if num == 45
  return 1836311903       if num == 46
  return 2971215073       if num == 47
  return 4807526976       if num == 48
  return 7778742049       if num == 49
  return 12586269025      if num == 50
  return 308061521170129  if num == 71
  return 498454011879264  if num == 72
  return 806515533049393  if num == 73
  return 1304969544928657 if num == 74
  return 2111485077978050 if num == 75
  return fibonacci(num - 2) + fibonacci(num - 1)
end

1.upto(100){ |i| puts format("%x", fibonacci(i)) }
