def balanced?(str)
  parens = str.scan(/[\(\)]/)
  return true if parens.empty?
  enclosed = parens.first == '(' && parens.last == ')'
  enclosed && parens.count('(') == parens.count(')')
end
puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
