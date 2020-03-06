# Blocks: B:O   X:K   D:Q   C:P   N:A  G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# Input: a string str
# Initialize an array blocks which is a two dimensional array
# Go through each array in blocks
#   Go through each character in str, and if it is included in block array,
#     return false if the other character is also in str, or if the count is
#     greater than one
BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
          ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
          ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  word = str.upcase
  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
            ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
            ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
  word.chars.each do |char|
    remaining_blocks = blocks.reject!{ |block| block.include?(char) }
    return false unless remaining_blocks
  end
  true
end

#def block_word?(str)
#  word = str.upcase
#  BLOCKS.each do |block|
#    word.chars.each do |letter|
#      return false if word.count(letter) > 1
#      ind = block.index(letter)
#      if ind
#        return false if word.include?(block[ind-1])
#      end
#    end
#  end
#  true
#end
#def block_word?(str)
#  blocks = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
#            ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
#            ['V', 'I'], ['L', 'Y'], ['Z', 'M']]
#  letters = str.upcase.chars
#  letters.each do |char|
#    blocks.each do |block|
#      ind = block.index(char)
#      if ind
#        return false if letters.include?(block[ind-1])
#      end
#    end
#  end
#  true
#end

def block_words(*words)
  words.select{ |word| block_word?(word) }
end

p block_words('butch', 'zoy', 'bitch', 'strinj')
