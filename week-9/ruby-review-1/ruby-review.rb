# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser
# with a group of flavors that represent Pez so it's easy to start with
# a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of
# Pez remaining in a dispenser so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser
# so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so
# I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the
# dispenser so I know the order of the flavors coming up.


# Pseudocode
# -CREATE pez_dispenser class
# -CREATE initialize method that takes an array of strings (flavors) as
#     an input.
# -CREATE method count_pez that returns number of pez in dispenser.
# -CREATE method take_pez that shifts the lead pez out of the dispenser.
# -CREATE method add_pez that unshifts a pez into the dispenser.
# -CREATE method see_flavors that shows flavors of all upcoming pez.


# Initial Solution

# class PezDispenser
#   def initialize(flavors)
#     @pez = flavors
#     @pez_count = @pez.length
#   end

#   attr_reader :pez_count

#   def see_all_pez()
#     return @pez
#   end

#   def add_pez(flavor)
#     @pez_count += 1
#     @pez.unshift(flavor)
#   end

#   def get_pez()
#     @pez_count -= 1
#     @pez.shift()
#   end
# end



# Refactored Solution
class PezDispenser
  def initialize(flavors)
    @pez = flavors
    @pez_count = @pez.length
  end

  attr_reader :pez
  attr_reader :pez_count

  def add_pez(flavor)
    @pez_count += 1
    @pez.unshift(flavor)
  end

  def get_pez()
    @pez_count -= 1
    @pez.shift()
  end
end


# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

# Reflection
# What concepts did you review in this challenge?
# I got some more practice in creating a Ruby class. Within that, I
# reviewed attribute accessors.

# What is still confusing to you about Ruby?
# I feel like I just need a lot more practice.

# What are you going to study to get more prepared for Phase 1?
# I'm going to get more repitition in and read up in my Ruby and
# JavaScript textbooks.