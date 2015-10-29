# Calculate the mode Pairing Challenge

# Will Granger and Gregg Wehmeier worked on this challenge

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode
=begin
# What is the input?
An array of numbers or strings
# What is the output? (i.e. What should the code return?)
An array containing the most common element(s)
# What are the steps needed to solve the problem?

DEFINE method [mode] that takes an array argument

Initialize an empty hash

for EACH element in array
IF element exists as key in hash
increment key's value by one
ELSE
Use element as new key in hash with a value of 1
END

Initialize new variable highest_value and set equal to 0
Initialize empty array mode_array
for EACH key in hash
IF key's value > highest_value
highest_value = key's value
mode_array = key
ELSIF key's value = highest_value
push key into mode_array
END

RETURN mode_array
=end

# 1. INITIAL SOLUTION

array1 = [1, 2, 3, 3, 3]

def mode(array)
  frequency = Hash.new(0)
  array.each { |x|  frequency[x] += 1 }
  p frequency
  highest_value = 0
  mode_array = []
  frequency.each do |key, value|
    if value > highest_value
      highest_value = value
      mode_array.replace([key])
    elsif
      value == highest_value
      mode_array.push(key)
    else
      next key
    end
  end
  p mode_array
  return mode_array
end


# 3. REFACTORED SOLUTION

def mode(array)
  freq_hash = Hash.new(0)
  array.each { |x|  freq_hash[x] += 1 }
  mode_array = freq_hash.select{|k, v| v == freq_hash.values.max}.keys
end

# 4. Reflection
=begin
WHICH DATA STRUCTURE DID YOU AND YOUR PAIR DECIDE TO
IMPLEMENT AND WHY?
We went with using a hash. Since we're basically just
tallying up each element in the array, it seemed
ideally suited for a hash where each unique element is a
key and the values are the tally.

WERE YOU MORE SUCCESSFUL BREAKING THIS PROBLEM DOWN INTO
IMPLEMENTABLE PSEUDOCODE THAN THE LAST WITH A PAIR?
I'm getting a little more comfortable with my pseudocode,
and this exercise went smoothly. I think our pseudocode
is a bit messy and convoluted, but it was a good
starting point to get our initial solution going.

WHAT ISSUES/SUCCESSES DID YOU RUN INTO WHEN TRANSLATING
YOUR PSEUDOCODE TO CODE?
We were running into some trouble before using .replace()
for the mode_array assignment. We were trying to set an
array equal to a string value, which resulted in some
problems that took us a bit of time to figure out. With
some minor adjustment, our pseudo ended up working pretty
well.

WHAT METHODS DID YOU USE TO ITERATE THROUGH THE CONTENT?
DID YOU FIND ANY GOOD ONES WHEN YOU WERE REFACTORING?
WERE THEY DIFFICULT TO IMPLEMENT?
Initially, we did everything with .each() and IF
statements. While refactoring, we found several new
methods that were verrry useful. .select(), .keys(),
.values(), and .max() made handling the hash data much
easier.

=end





