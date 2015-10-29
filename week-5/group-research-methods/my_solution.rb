
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