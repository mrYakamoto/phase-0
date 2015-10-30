# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent .5 hours on this challenge.

# 0. Pseudocode

# Input: object initialization and number of sides
# Output: object of class 'Die'

# Steps:
# Create class 'Die'
# have initialize take one parameter for number of sides
# create method inside 'Die' to return a random integer
# between 1 and 'number of sides'

# 1. INITIAL SOLUTION

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("A die needs at least 1 side")
    end
    @sides = sides
  end

  def sides
     @sides
  end

  def roll
    return rand(1..@sides)
  end

end

# my_die = Die.new(20)
# p my_die
# p my_die.sides
# p my_die.roll()

# 3. REFACTORED SOLUTION

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("A die needs at least 1 side")
    end
    @sides = sides
  end

  attr_reader :sides

  def inspect
    "A #{@sides} sided die"
  end

  def roll
    return rand(1..@sides)
  end

end

# 4. Reflection
# WHAT IS AN ARGUMENTERROR AND WHY WOULD YOU USE ONE?
# An ArgumentError lets the user know that there's a problem
# with the arguments entered that will prevent the method
# from working.

# WHAT NEW RUBY METHODS DID YOU IMPLEMENT? WHAT CHALLENGES
# AND SUCCESSESS DID YOU HAVE IN IMPLEMENTING THEM?
# I used rand(start..end) for a random number within a range.
# This exercise was very straightforward, and I didn't have any
# trouble.

# WHAT IS A RUBY CLASS?
# A Ruby class is a categorization of an object that gives it
# a certain amount of specificity.

# WHY WOULD YOU USE A RUBY CLASS?
# A class inherits all the methods from its parent classes, but
# if an object has more specific needs than it's superclasses,
# you can give it methods and attributes specially suited for it.

# WHAT IS THE DIFFERENCE BETWEEN A LOCAL VARIABLE AND AN
# INSTANCE VARIABLE?
# An instance variable is created and stored in an object as an
# attribute during the object's creation. A local variable is
# the storage of a value within an object, itself.

# WHERE CAN AN INSTANCE VARIABLE BE USED?
# Instance variables can be used inside methods definitions
# within a class.