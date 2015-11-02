# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input?
# an array of numbers
# What is the output? (i.e. What should the code return?)
# a letter grade
# What are the steps needed to solve the problem?
# average all numbers
# determine which grade range average falls


# 1. Initial Solution

# def get_grade(array)
#   average = array.reduce(:+)/array.length
#   if average < 60
#     return 'F'
#   elsif average < 70
#     return 'D'
#   elsif average < 80
#     return 'C'
#   elsif average < 90
#     return 'B'
#   else
#     return 'A'
#   end
# end

# 3. Refactored Solution

def get_grade(array)
  unless array.all? {|x| x.is_a? Numeric}
    raise ArgumentError.new("Only numbers are allowed")
  end
  average = array.reduce(:+)/array.length
  if average < 60
    return 'F'
  elsif average < 70
    return 'D'
  elsif average < 80
    return 'C'
  elsif average < 90
    return 'B'
  else
    return 'A'
  end
end

# 4. Reflection

# I wasn't able to come up with a way to refactor this
# any simpler, but I did add an ArgumentError in case
# an element that's not a number is submitted in the
# array.