# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES


number_array = [5, [10, 15], [20,25,30], 35]

#Initial Solution
# def add_five(array)
#   array.map! do |element|
#     if element.kind_of?(Array)
#       element.map! do |inner_element|
#         inner_element + 5
#       end
#     else element + 5
#     end
#   end
# end
# p add_five(number_array)

#Refactored Solution
def add_five(array)
  array.map! do |element|
    if element.kind_of?(Array)
      add_five(element)
    else
    element + 5
    end
  end
end

p add_five(number_array)


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(array)
  array.map! do |element|
    if element.kind_of?(Array)
      add_ly(element)
    else
      element + "ly"
    end
  end
end

p add_ly(startup_names)

#Reflection
# What are some general rules you can apply to nested arrays?
# Nested arrays can be accessed in the same way as normal arrays,
# just with additional index points after the initial.

# What are some ways you can iterate over nested arrays?
# If you know the exact amount of nested arrays, it can easily
# be done manually. Recursion seems like a much better solution
# since then it will work for all dimensions of nesting.

# Did you find any good new methods to implement or did you re-use
# one you were already familiar with? What was it and why did you
# decide that was a good option?
# We got stuck trying to think of a way to implement our solution
# so that it would work on any array and not just the one specefic
# example we were designing it for. We re-used map! to actually
# change the array, but after thinking about ways to go about it
# for a while together, we realized that this would be a perfect
# instance to use recursion and call the method back on itself.
