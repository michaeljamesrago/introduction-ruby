=begin
Chapter 1 exercise 3
Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
=end
movie_hash = {:godfather => 1971, :starwars => 1977, :spaceballs => 1985, :et => 1980}
puts movie_hash[:godfather]
puts movie_hash[:starwars]
puts movie_hash[:spaceballs]
puts movie_hash[:et]