movies = {
  Avatar: 7,
  Arrival: 10
  }
puts "Welcome to the movie rating database!"
puts "You can:\n1. add\n2. update\n3. display\n4. delete"
print "What would you like to do?: "

choice = gets.chomp
case choice
when "add"
  puts "Please enter a movie: "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Please enter a rating for #{title}: "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} was added with rating #{rating}"
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "Please enter a movie to update: "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "#{tilte} does not exist."
  else
    puts "Please enter the new rating"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} was updated to #{rating}"
  end
when "display"
  puts "Here are all the movies!"
  movies.each{|title,rating| puts "#{title}: #{rating}"}
when "delete"
  print "Movie to delete please: "
  title = gets.chomp
  if !movies[title.to_sym].nil?
  	puts "#{title} successfully deleted!"
    movies.delete(title)
  else
    puts "#{title} does not exist in the database!"
  end
else
  puts "Error! Your selection was not valid, please try again and either add,update,display, or delete. Thanks!"
end
