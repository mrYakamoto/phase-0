# Your Names
# 1) Gregory Wehmeier
# 2) Walter Kerr

# We spent 1 hour on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

# error_counter = 3

##figures out whether item_to_make is in library

  # library.each do |food|
  #   if library[food] != library[item_to_make]
  #     p error_counter += -1
  #   end
  # end

  # if error_counter > 0
  #   raise ArgumentError.new("#{item_to_make} is not a valid input")
  # end

  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size
  # serving_size = library.values_at(item_to_make)[0]


  return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}" if serving_size_mod == 0
  case item_to_make
  when "cookie" then return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: Just eat the raw cookie dough"
  when "cake" then return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: sugar cookies"
  when "pie" then return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: put your pie filling on a waffle instead"
  end


  # case serving_size_mod
  # when 0
  #   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  # else
  #   return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  # end

end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


### Reflection

## What did you learn about making code readable by working on this challenge?
# It's always good to try to think of a more straightforward way to
# perform an action. The reasoning behind the code here was really
# convoluted and largely unnecessary.

##Did you learn any new methods? What did you learn about them?
# I learned #values_at and that it returns an array even if there's
# only one value to return.

##What did you learn about accessing data in hashes?
# #has_key? is a useful method to check if a key is included
# within the hash. While performing #each on a hash with one
# parameter, that one parameter will still include both the key
# and the hash for each item. The argument will just point to both
# of them together.

##What concepts were solidified when working through this challenge?
# Avoiding nesting if else statements when possible. Also, ways to
# access values and keys inside hashes.

