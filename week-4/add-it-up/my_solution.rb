# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge Jacob Crofts.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of numbers
# Steps to solve the problem.


# 1. total initial solution

def total (array)
  total = 0
  array.each do |x|
   total += x
  end
  total
end


# 3. total refactored solution
def total (array)
  total = 0
  array.each { |x| total += x }
  total
end



# 4. sentence_maker pseudocode
 make sure all pseudocode is commented out!
 Input: Array of strings
 Output: String
 Steps to solve the problem.


# 5. sentence_maker initial solution
def sentence_maker (array)
  sentence = array[0].capitalize()
  (1..(array.length-1)).each do |x|
    sentence = sentence + " " + array[x].to_s
  end
  sentence = sentence +"."
end

# 6. sentence_maker refactored solution

def sentence_maker (array)
  array.join(" ").capitalize() + "."
end