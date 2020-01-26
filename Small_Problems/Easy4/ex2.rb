def get_century(year)
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
puts get_century(gets.chomp)
