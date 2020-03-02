#Input: a string str
#Iterate through the range of indices 0 through length of str - 1.
#If the index is even, capitalize the character at that index number
#If the index is odd, downcase it
def staggered_case(str)
  ind = str.length - 1
  0.upto(ind) do |i|
    if i.even?
      str[i] = str[i].upcase
    else
      str[i] = str[i].downcase
    end
  end
  str
end


puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!',
staggered_case('ALL_CAPS') == 'AlL_CaPs',
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
