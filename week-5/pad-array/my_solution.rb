=begin

Pad an Array

# I worked on this challenge [with: Gregg Wehmeier & Shea Munion]

# I spent [1.5] hours on this challenge.

# 0. Pseudocode

# What is the input?
  - an array
  - a new length of array/minimum size
  - a string to pad the array (value)

# What is the output? (i.e. What should the code return?)
  - an array

# What are the steps needed to solve the problem?
IF min size is larger than input array's length
  add "value" to new array
ELSE return the array
IF there's a value, fill the new array with value

WHILE min size is larger than array's length
  add "value" to  array
END
RETURN output array

=end
# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
  while  min_size > array.length
    array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |item|
    new_array << item
  end
  while  min_size > new_array.length
    new_array << value
  end
  return new_array
end

# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  while  min_size > array.length
    array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array = array.map{|x| x}
  while  min_size > new_array.length
    new_array << value
  end
  return new_array
end


=begin # 4. Reflection
Were you successful in breaking the problem down into small steps?
Yes, we were able to break the problem down into just a few,
basic steps.



Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
My partner Shea and I really took our time while pseudocoding
to think the problem through from a couple different angles.
By the time we got to actually coding, it was pretty
straightforward. We had a little bit of difficulty initially
when our non-destructive method wasn't returning a new object,
but we figured it out pretty quickly.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial non-destuctive method wasn't successful at passing
the tests. We realized that our 'output array' was pointing to
the same object number as the 'input array.' We were able to
solve this by initializing the 'new array' as an empty array
before populating it.


When you refactored, did you find any existing methods in Ruby to clean up your code?
We were able to use .map to slightly shorten our
non-destructive method.


How readable is your solution? Did you and your pair choose descriptive variable names?
I think our solution is very simple and easy to read. Variable
names were already included in the prepared my_solution file,
so we went with those.

What is the difference between destructive and non-destructive methods in your own words?
Destructive methods permanently alter the object they're
passed on, whereas non-destructive methods leave the original
object intact and return a wholly new object.

=end