i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.keep_if {|x| x.to_s.match(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.keep_if {|x, y| y == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#
# For the first method, I used .keep_if which is almost exactly like .select.
# You send .keep_if a block and inside the block I iterate over the items
# changing them all to strings with .to_s so I can use .match which will
# match an item with the string argument.
#
# For the second method I use .keep_if again, but this time the block uses
# the equality operand == to match to the correct values in the hash.
# .keys is called at the end to return just the keys of the matching
# values into an array.


#Person 2
#REFACTORED
def my_array_modification_method!(array, num_added)
  array.map!{|element| element.is_a?(Integer) ? element + num_added : element}
end

def my_hash_modification_method!(hash, aged)
  hash.map {|key, value| hash[key] = value + aged}
  return hash
end

=begin
# IDENTIFY AND DESCRIBE THE RUBY METHOD YOU IMPLEMENTED
  I made use of the map method in both problems. In the first problem,
  I also made use of the ternary operator to reduce my code to one
  line.
#TEACH YOUR ACCOUNTABILITY GROUP HOW TO USE THE METHOD
  Map can be called on an array or hash object. It's a destructive
  method that yields each element in the object to a passed code block
  that in turn permanently alters it. It's important to remember
  that a hash will provide 2 arguments to the code block.
#SHARE ANY TRICK YOU USED TO FIND AND DECIPHER THE RUBY DOCS
  Searching through the method names on the left side of the page
  for any that sound like they might be relevant before going to the
  main page content is very useful to me.
=end

# Person 3
def my_array_sorting_method(source)
  source.sort{ |x,y| x.to_s <=> y.to_s }
end

def my_hash_sorting_method(source)
  sort_array = source.invert.to_a
  sorted_hash = sort_array.sort{ |x,y| x <=> y }.to_h
  sorted_hash.invert.to_a
end

# Identify and describe the Ruby method(s) you implemented.

# For the array sorting, I used the sort method. Reading the docs, I
# found that .sort does exactly what I needed; it compares elements in
# the array, two at a time, sorting the elements based on the code
# block passed to it. On top of that, sort returns a new array,
# while sort! is it's "destructive" counterpart.

# The block uses x and y to compare elements, using the compare <=>
# method. It compares every element, x, against the next in the
# array, y; x <=> y will sort in ascending order, y <=> x in
# descending. Keep in mind that my method doesn't assign the array to
# any variable.

# I wanted to account for the "I" being uppercase, but of course, the
# array contains numbers, and the result is looking for capital
# letters to come before lowercase anyway. I think the solution, is
# to include some way to check each element's type before applying
# a constructive downcase for the sort comparison.

# Sorting the hash took much longer. I'm sure I could use Enumerable
# or an enumerator to save myself a lot of trouble, but after two
# hours pouring over the documentation and readings, I just stuck to
# what I knew would work.

# I started by pulling the values into an array, since there's no "sort"
# method for hashes. However, I couldn't find a way to pull the keys
# into a multi-dimensional array, and when I found myself nesting
# "for" loops, I stopped myself to try a different approach.

# My method begins by applying .invert and .to_a to a new array;
# .invert swaps a hash's keys with their values, and .to_a converts
# the hash to a multi-dimensional array like this:
# [key, value], [key, value]. That way, I can use the array sort
# method on the hash's values; if I didn't invert first, the array
# would be sorted alphabetically. In order to get everything back in
# order, I convert my array to a new hash so I can apply .invert
# again.

# I think my solution has too many conversions, and it won't work if
# multiple dogs have the same age. I'm not fully satisfied with this,
# so I intend to return to this problem and solve it properly!

# Person 4

=begin
Iterative solution here, refactored in the un-commented section:
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |element|
    if element.to_s.include? thing_to_delete
      source.delete(element)
    end
  end
  return source
end
=end

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |element| element.to_s.include? thing_to_delete}
end

=begin
Iterative solution here, refactored in the un-commented section:
def my_hash_deletion_method!(source, thing_to_delete)
  source.each_key do |key|
    if key.to_s == thing_to_delete
      source.delete(key)
    end
  end
  return source
end
=end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key,value| key == thing_to_delete}
end

=begin
Identify and describe the Ruby method(s) you implemented.
The main method here is .delete_if (.delete was used in the original, iterative solution). On an array, it works like this:
  array.delete_if {|element| BOOLEAN}
With this code, if the BOOLEAN expression evaluates to True, that element in the array will be deleted.
This works similarly in the hash version:
  hash.delete_if {|key, value| BOOLEAN}
Again, if the BOOLEAN evaluates to True, that key/value pair will be deleted from the hash.
These are both destructive methods, as per the specs.
=end


# Person 5

def my_array_splitting_method(source)
 Array.new << source.select{ |x| x.is_a? Integer } <<  source.select{ |x| x.is_a? String }
end



def my_hash_splitting_method(source, age)
  Array.new << source.select{ |x, y| y <= age}.to_a <<  source.select{ |x, y| y > age}.to_a # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
# .select returns a new array (or hash) of all the elements for which the Boolean expression evaluates to true
# .is_a? evaluates the class of the object in question. In this case I'm using it on each element of the array to determine whether it is a String or an Integer
# .to_a used in my 2nd method and converts the hash output of .select to an array
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?