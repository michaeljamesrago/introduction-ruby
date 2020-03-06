# Initialize an empty hash madlibs_hash
# prompt for four inputs that represent the values for
# four keys we will put in the hash: noun, verb, adjective
# adverb.
madlibs_hash = {}
puts "Enter a noun:"
madlibs_hash[:noun] = gets.chomp
puts "Enter a verb:"
madlibs_hash[:verb] = gets.chomp
puts "Enter an adjective:"
madlibs_hash[:adjective] = gets.chomp
puts "Enter an adverb:"
madlibs_hash[:adverb] = gets.chomp
puts "Did you #{madlibs_hash[:verb]} your #{madlibs_hash[:adjective]} #{madlibs_hash[:noun]} #{madlibs_hash[:adverb]}? That's hilarious!"
