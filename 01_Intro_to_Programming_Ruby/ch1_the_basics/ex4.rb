=begin
Chapter 1 exercise 4
Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
=end
movie_hash = { godfather: 1971,
               starwars: 1977, 
               spaceballs: 1985, 
               et: 1980 }
               
dates_array = [movie_hash[:godfather], movie_hash[:starwars], movie_hash[:spaceballs], movie_hash[:et]]
puts dates_array[0]
puts dates_array[1]
puts dates_array[2]
puts dates_array[3]