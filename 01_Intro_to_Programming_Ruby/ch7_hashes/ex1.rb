=begin
Chapter 7 exercise 1
Given a hash of family members, with keys as the title and an array of names as 
the values, use Ruby's built-in select method to gather only immediate family 
members' names into a new array.
=end

# Given

family = {  uncles: ["bob", "joe", "steve"], 
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
         }
    
new_array=family.select{ |k,v| k==:sisters || k==:brothers }.values.flatten

p new_array