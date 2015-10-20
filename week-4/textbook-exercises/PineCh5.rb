

=begin

5.5

puts "Hello there, and what's your name?"
name = gets.chomp
puts "Your name is " + name + "? What a lovely name!"
puts "Pleased to meet you, " + name + ". :)"


5.6.1

puts "Hi there, what's your first name"
first_name = gets.chomp
puts "Cool, " + first_name + ", what's your middle name?"
middle_name = gets.chomp
puts "Alright, " + first_name + " " + middle_name + ", what's your last name?"
last_name = gets.chomp
puts "Excellent, I shall call you " + first_name + " " + middle_name + " " + last_name + "!"

5.6.2

puts "Hey there! What's yer favorite number?"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "Well, that's all fine and good if you want to settle for a puny number like " + fav_num.to_s + ", but what about a bigger, manlier number like " + better_num.to_s + "!?"

=end