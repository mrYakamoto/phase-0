##Release 2:
#5.6.1

puts "Hi there, what's your first name"
first_name = gets.chomp
puts "Cool, " + first_name + ", what's your middle name?"
middle_name = gets.chomp
puts "Alright, " + first_name + " " + middle_name + ", what's your last name?"
last_name = gets.chomp
puts "Excellent, I shall call you " + first_name + " " + middle_name + " " + last_name + "!"

#5.6.2

puts "Hey there! What's yer favorite number?"
fav_num = gets.chomp.to_i
better_num = fav_num + 1
puts "Well, that's all fine and good if you want to settle for a puny number like " + fav_num.to_s + ", but what about a bigger, manlier number like " + better_num.to_s + "!?"

=begin

4.3.1 [Return a Formatted Address]
https://github.com/mrYakamoto/phase-0/blob/master/week-4/address/my_solution.rb

4.3.2 [Defining Math Methods]
https://github.com/mrYakamoto/phase-0/blob/master/week-4/math/my_solution.rb

4.3 REFLECTIONS
How do you define a local variable?
  Simply type variable_name = value

How do you define a method?
  def method_name (parameters)
    method actions
  end

What is the difference between a local variable and a method?
  A local variable stores a value so that it
  can be more easily repeated without having
  to type it each and every time. A method
  performs an action/actions

How do you run a ruby program from the command line?
  ruby program_name.rb

How do you run an RSpec file from the command line?
  rspec rspec_file_name.rb

What was confusing about this material? What made sense?
  This material was a much needed refresher
  on Ruby since I haven't looked at it in a
  while. After I got back into the swing of
  it though, it was all very basic stuff.

end
