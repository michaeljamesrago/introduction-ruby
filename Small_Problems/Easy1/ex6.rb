def reverse_words(str)
  old_sentence = str.split(' ')
  new_sentence = []
  old_sentence.each do |word|
    if word.length >= 5
      word.reverse!
    end
  new_sentence.push(word)
  end
  new_sentence.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS