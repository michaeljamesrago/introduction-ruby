def consonant_repeater(str)
  repeated = ''
  str.chars.each do |char|
    if char.downcase.match?(/[aeiou\W]/)
      repeated << char
    else
      repeated << char << char
    end
  end
  repeated
end
puts consonant_repeater("Hello everybody!")
puts consonant_repeater("July 4th")
puts consonant_repeater("Hello-World")
puts consonant_repeater("aeioub")
