# Class Warfare, Validate a Credit Card Number


# I worked on this challenge Natalie Polen.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: A string (credit card number)
# Output: boolean
# Steps:

# Turn string input into array of individual numbers
# Verify number is 16 digits long
# iterate backwards doubling every other digit
# break apart any two digit numbers
# add all numbers
# determine if sum is divisable by ten


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   attr_reader :card_number

#   def initialize(card_number)
#     @card_number = card_number
#     int_array = card_number.to_s.split('')
#     if int_array.length != 16
#       raise ArgumentError.new("Please enter 16 digits.")
#     end
#   end

#   def check_card
#     doubled = double_numbers(@card_number)
#     summed = sum_digits(doubled)
#     summed % 10 == 0
#   end

#   def double_numbers(number)
#     number = number.to_s.split('').map!{|x|x.to_i}
#     number.reverse!()
#     number.each_index{|x|
#       if x % 2 != 0
#         number[x] = number[x] * 2
#       end
#       }
#   end

#   def sum_digits(array)
#     array.map!{ |i| if i > 9
#       i.to_s.split('').map!{|i| i.to_i}
#       else i
#       end
#       }
#     array = array.flatten.reduce(:+)
#   end

# end

# test = CreditCard.new(4563960122001999)

# p test.check_card()



# Refactored Solution

class CreditCard
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    if @card_number.to_s.length != 16
      raise ArgumentError.new("Please enter 16 digits.")
    end
  end

  def check_card
    doubled = double_numbers(@card_number)
    summed = sum_digits(doubled)
    summed % 10 == 0
  end

  def double_numbers(number)
    number = number.to_s.split('').map!(&:to_i).reverse!()

#     number.reverse_each.with_index{|e, i|
#       if i.odd?
#         number[i] = number[i] * 2
#       end
#       p number
#       }
    number.each_index{|x|
      if x.odd?
        number[x] = number[x] * 2
      end
      }
  end

  def sum_digits(array)
    array.map!{ |i| if i > 9
      i.to_s.split('').map!(&:to_i)
      else i
      end
      }
    array = array.flatten.reduce(:+)
  end

end

# test = CreditCard.new(4563960122001999)

# p test.check_card()

## Reflection
# What was the most difficult part of this challenge for you and
# your pair?
# My partner and I went through each section pretty smoothly
# once we got going. I think the thing we had the most difficulty
# with was really just figuring out the overall structure of what
# we were doing. Since we haven't had much experience with classes
# at this point, it took us a minute to get our berings on what
# exactly we'd be doing with creating a class mehtod that would
# call other class methods.

# What new methods did you find to help you when you refactored?
# We spent a while trying to refactor our solution. I was surprised
# that I was unable to find a way to shorten
# Integer.to_s.split('').map!{|x|x.to_i}. We were able to use
# Integer.to_s.split('').map!(&:to_i) to get it down a little, but
# I would think that process could be down with less than the 4 methods
# used. By shortening that section, we learned about the & operator
# and how to use it with a proc. We also used #flatten, which I hadn't
# done before.

# What concepts or learnings were you able to solidify in this challenge?
# This challenge provided some much needed practice with creating a
# class, class methods, and instance variables. Although I'm able to do
# it at this point, I certainly didn't feel confident or comfortable
# with it going into this exercise.
