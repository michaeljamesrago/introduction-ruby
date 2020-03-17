#Write a method that takes a year as input and returns the century. The return
#value should be a string that begins with the century number, and ends with
#st, nd, rd, or th as appropriate for that number.
#
#New centuries begin in years that end with 01. So, the years 1901-2000
#comprise the 20th century.
def century(year)
  cen = ((year.to_i - 1) / 100 + 1).to_s
  suffixer(cen)
end

def suffixer(cen)
  return cen + 'th' if th?(cen)
  case cen[-1]
  when '1'
    return cen + 'st'
  when '2'
    return cen + 'nd'
  when '3'
    return cen + 'rd'
  end
end

def th?(cen)
  ones = %w(4 5 6 7 8 9 0)
  tens = %w(11 12 13)
  ones.include?(cen[-1]) || tens.include?('0'.concat(cen)[-2, 2])
end

puts 'Please enter a year.'
puts century(gets.chomp)
