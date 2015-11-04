# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: a random string
# Steps:


# Initial Solution
class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("The input can't be empty")
    end
    @labels = labels
  end
  def sides
    return @labels.length
  end

  def roll
    @labels[rand(0..@labels.length-1)]
  end
end


# Refactored Solution

# I wasn't able to get my code down any simpler. My methods are all
# only one step already.

# Reflection

# What were the main differences between this die class and the last
# one you created in terms of implementation? Did you need to change
# much logic to get this to work?
# The only difference between this and the previous is that this one
# has to access the information inside of a passed array instead of
# just using a range of numbers. I only really had to change one
# line, but did take me a hot minute to figure out exactly how to
# access the array. Turns out, I needed to use the instance
# variable.

# What does this exercise teach you about making code that is easily
# changeable or modifiable?
# Making your code easily modifiable can save a huge amount of work
# and heartbreak when something innevitably goes wrong or changes.

# What new methods did you learn when working on this challenge, if
# any?
# I used #empty? for the first time to determine whether the passed
# array has any contents.

# What concepts about classes were you able to solidify in this
# challenge?
# Using the instance variable inside of class methods was cleared up
# for me in this challenge.