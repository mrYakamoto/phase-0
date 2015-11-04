# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an Integer (correct answer)
# Output: a string or key indicting proximity to correct answer
# Steps:
# create GuessingGame class that takes 1 integer argument
# create class method guess which takes an integer guess
#   and returns higher, lower, or correct
# create class method solved? which returns a boolean indicating
#   whether the last guess was correct.

# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(int)
#     if int > @answer
#       @solved = false
#       :high
#     elsif int < @answer
#       @solved = false
#       :low
#     else
#       @solved = true
#       :correct
#     end
#   end

#   def solved?
#     @solved
#   end
# end

# Refactored Solution
# I'm not sure if it's any more
# efficient, but I went with a
# case statement instead of an
# if/else conditional in my
# refactored solution.

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(int)
    case
    when int > @answer
      @solved = false
      :high
    when int < @answer
      @solved = false
      :low
    when int == @answer
      @solved = true
      :correct
    end
  end

  def solved?
    @solved
  end
end




# Reflection
# How do instance variables and methods represent the characteristics
# and behaviors (actions) of a real-world object?
# Instance variables are descriptors of an object's qualities and
# methods are the actions it's capable of. For example, color: brown,
# might be a quality of a squirrel and 'bury nut' might be an action
# a squirrel performs.

# When should you use instance variables? What do they do for you?
# Instance varibles can be used to create and store properties/
# values inside newly created objects. They will create the
# properties/values they stand for inside of instances of that
# class.

# Explain how to use flow control. Did you have any trouble using it
# in this challenge? If so, what did you struggle with?
# Flow control is important to always be concerned with, not just because
# the actions being directed are important, but the order in which they
# are examined can severely impact the functionality and efficiency
# of a code block. An insufficiently thought out flow control could
# easily prevent a code block from reaching a correct conclusion. I
# didn't have any trouble with flow control in this exercise.

# Why do you think this code requires you to return symbols? What are
# the benefits of using symbols?
# Returning a symbol is slightly faster in this case. The same
# response, like the key :higher, might be returned many times in the
# course of trying to guess the correct answer. If a string were
# used, it would create a new string object each and every time
# that "higher" was returned, even though our intention is to
# return the exact same thing. by using they key :higher, the same
# object, with the exact same object id, can be accessed every time.