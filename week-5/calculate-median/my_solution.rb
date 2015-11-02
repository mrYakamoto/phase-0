# Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself.

# 0. Pseudocode

# What is the input?
# an array of strings or numbers
# What is the output? (i.e. What should the code return?)
# the amedian string or number
# What are the steps needed to solve the problem?
# CREATE a method which takes 1 array argument
# IF array includes numbers
#   SORT elements
#   while 2 or more elements remain, eliminate the
#     first and last.
#     if 2 remain, add them together and divide by 2
#     else return the final number.


#INITIAL SOLUTION
# def median(array)
#   if array[0].is_a?(Numeric)
#     array = array.sort
#     while array.length > 2
#       array.pop()
#       array.shift()
#     end
#     if array.length == 2
#       return (array[0] + array[1])/2.0
#     else
#       return array[0]
#     end
#   elsif array[0].is_a?(String)
#     sorted = array.map{|string|string.downcase}.sort
#     while sorted.length > 2
#       sorted.pop()
#       sorted.shift()
#     end
#     if sorted.length == 2
#       median = []
#       array.each do |x|
#         if (x.downcase == sorted.first)
#           median.unshift(x)
#         elsif (x.downcase == sorted.last)
#           median << x
#         end
#       end
#       return median
#     else
#     array.find{|i| i.downcase == sorted[0]}
#     end
#   end
# end

#REFACTORED

def median(array)
  if array.all?{|element| element.is_a?(Numeric)}
    array = array.sort
    if array.length.odd?
      return array[array.length/2]
    else
      return (array[array.length/2] + array[(array.length/2)-1]) / 2.0
    end
  elsif array.all?{|element| element.is_a?(String)}
    sorted = array.map{|string|string.downcase}.sort
    if array.length.odd?
      return sorted[sorted.length/2]
    else
      median = []
      median.unshift(sorted[(sorted.length/2)-1], sorted[sorted.length/2])
      median[0].replace(array.find{|i| i.downcase == median[0]})
      median[1].replace(array.find{|i| i.downcase == median[1]})
      return median
    end
  else
    raise ArgumentError.new("Array must be all strings or all numbers")
  end
end

median([1,2,"cat"])

#REFLECTION

# This was some good practice for me on handling arrays and using the
# enumerable class. I'm not certain my refactored solution is better
# since I think the readability of it is much more confusing. It is
# shorter and probably faster though, and I was able to use a couple
# methods like replace() and all?().