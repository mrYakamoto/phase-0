# Release 1


# Create a new list
# INPUT: list name (string)
# OUTPUT: empty hash
# DEF method create_list
# Initialize a new, empty hash
# END

def new_list
  Hash.new
end

my_list = new_list()
p my_list



# Add an item with a quantity to the list
# INPUT: grocery_item(string), num_item(integer)
# OUTPUT: Hash that contains the item
# DEF method add_item
# add grocery_item and num_item as key/value pair to hash
# END

def add_item(list_name, item_name, qty)
  if list_name.has_key?(item_name)
    return list_name
  end
  list_name[item_name] = qty # implicit return; return the qty that you assigned to the hash
  list_name
end

add_item(my_list, "Lemonade", 2)
add_item(my_list, "Tomatoes", 3)
add_item(my_list, "Onions", 1)
add_item(my_list, "Ice Cream", 4)
p my_list





# my_list = create_list
# my_list.include?("apples")
#   dont do anything
# else
#   my_list = add_item(my_list, "apples",2)
# {}.methods <-- like this :-)



#Remove an item from the list
#INPUT: name of item to remove
#OUTPUT: Hash less that item
#DEF method remove_item
#remove grocery item from hash
#END

def remove_item(list_name, item_name)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list."
  end
  list_name.delete(item_name)
  list_name
end

p remove_item(my_list, "Lemonade")





#Update quantities for items in your list
#INPUT: grocery_item, new qty
#OUTPUT: hash with updated amounts
#IF new qty == old qty, alert user
#DEF method update_qty
#update item amounts
#END

def change_quantity(list_name, item_name, qty)
  if list_name.has_key?(item_name) == false
    return "#{item_name} does not exist in this list. Add the item first."
  end
  list_name[item_name] = qty
  list_name
end

p change_quantity(my_list, "Ice Cream", 1)




#Print the list
#INPUT: none
#OUTPUT: list of grocery items with their quantities beside them
#DEF method print_list
#END

def display_grocery_list(list_name)
  line_width = 18
  formatted_display = "ITEM".ljust(line_width/2) << "QUANTITY".rjust(line_width) << "\n"
  list_name.each do |key, value|
    formatted_display += "#{key}".ljust(line_width/2) << " -- #{value}".rjust(line_width) << "\n"
  end
  formatted_display
end

puts display_grocery_list(my_list)

# called string interpolation " #{var_name} " :-)

=begin
WHAT DID YOU LEARN ABOUT PSEUDOCODE FROM WORKING ON THIS
CHALLENGE?
I'm getting better at makign my pseudocode more plain english
every time now. I still including a lot of probably unnecessary
coding vocabulary in this exercise, but I realize that and know
what I need to do to make it more colloquial.

WHAT ARE THE TRADEOFFS OF USING ARRAYS AND HASHES FOR THIS
CHALLENGE?
This challenge seems ideally suited for using a Hash. Each
element has a unique name with a quantity value attached. It
seems like when using an array you'd have to make an array of
pairs of arrays anyways, which would be exactly like a Hash but
with extra unnecessary steps added.

WHAT DOES A METHOD RETURN?
A method returns whatever you tell it to return. If no return is
specified, it returns the value of the last evaluated expression.

WHAT KIND OF THINGS CAN YOU PASS INTO METHODS AS ARGUMENTS?
Strings, arrays, integers, floats, hashes, or methods. Pretty
much anything can be used as an argument.

HOW CAN YOU PASS INFORMATION BETWEEN METHODS?
A method can be called inside a method. Or a method can be
used as an argument for another method.

WHAT CONCEPTS WERE SOLIDIFIED IN THIS CHALLENGE, AND WHAT
CONCEPTS ARE STILL CONFUSING?
Defining a method to create a new empty array or hash object
was cleared up for me in this challenge. I'm much clearer on
what's expected out of good pseudocode after going through it
with a partner and a guide. I'm comfortable using string
interpolation now. ljust, rjust, and center were useful in this
excercise, and I learned about using a variable inside of an
each statement with += will only use that variable once. Hashes
were also cleared up a lot during this exercise. I didn't run
into any concepts that we weren't able to figure out during
this challenge.

=end