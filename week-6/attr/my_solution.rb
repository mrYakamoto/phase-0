#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = "Greggy_D"
  end
end

class Greetings
  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Well, how do you do #{@NameData.name}?"
  end
end

### Reflection
##release_1
# What are these methods doing?
# These methods are each either modifying or returning
# the value of instance variables inside instance_of_profile.

# How are they modifying or returning the value of
# instance variables?
# They are returning the value of the instance variable
# or reassigning the varible to a new value.

##release_2
# What changed between the last release and this
#   release?
# An attr_reader was added for the instance
#   variable age.

# What was replaced?
# The method what_is_age was replaced with an
#   attr_reader.

# Is this code simpler than the last?
# Yes, the attr_reader is a shortcut for writing
#   methods that simply return an object property.

##release_3
# What changed between the last release and this release?
# An attr_writer was added for the instance variable @age.

# What was replaced?
# Code for redefining the instance variable @age was
#   replaced with an attr_writer.

# Is this code simpler than the last?
# Yes, the attr_writer is a shortcut for writing methods
#   that simply change the value of an instance variable.


##release_6
# What is a reader method?
# A reader method simply returns the value of an instance
# variable

# What is a writer method?
# A writer method changes the value of an instance
# variable.

# What do the attr methods do for you?
# The attr methods are a shortcut for creating reader and
# writer methods.

# Should you always use an accessor to cover your bases? Why or why not?
# No, often times you don't want allow the user access to
# change variables inside the program.

# What is confusing to you about these methods?
# Nothing's particularly confusing. I just need some more
# practice to get ahold of implementing them.

