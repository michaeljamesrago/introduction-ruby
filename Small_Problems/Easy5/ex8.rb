

ENGLISH_NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

def sort_by_name(arr)
  arr.sort_by{ |num| ENGLISH_NUMBERS[num] }
end

def sort_by_name_ii(arr)
  arr.sort{ |a, b| ENGLISH_NUMBERS[a] <=> ENGLISH_NUMBERS[b] }
end


p sort_by_name([4, 9, 11, 13, 0, 8])
p sort_by_name_ii([4, 9, 11, 13, 0, 8])
