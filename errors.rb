# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#Answer: errors.rb
# 2. What is the line number where the error occurs?
#Answer: 203
# 3. What is the type of error message?
#Answer: unexpected end-of-input
# 4. What additional information does the interpreter provide about this type of error?
#Answer: expecting keyword_end
# 5. Where is the error in the code?
#Answer: this is an infinite loop.
# 6. Why did the interpreter give you this error?
#Answer: There is no exit to the loop in this method.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
#Answer: 35
# 2. What is the type of error message?
#Answer: undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#Answer:'south park' is the undefined variable or method
# 4. Where is the error in the code?
#Answer: 'south park' is undefined
# 5. Why did the interpreter give you this error?
#Answer: 'south park' is written without being used or defined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
#line 50
# 2. What is the type of error message?
#undefined method
# 3. What additional information does the interpreter provide about this type of error?
#'cartman' for main:Object (NoMethodError)
# 4. Where is the error in the code?
#the method cartman is called without being defined.
# 5. Why did the interpreter give you this error?
#cartman should be defined before being used.

# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#line 65, 69
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#line 69, the method is passed an argument.
# 5. Why did the interpreter give you this error?
#the method is passed an argument without being defined as a method that accepts arguments.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 84
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#line 88
# 5. Why did the interpreter give you this error?
#the method is used without being passed an 'offensive_message' argument



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#109
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#109
# 5. Why did the interpreter give you this error?
#cartmans_lie is only passed one argument, whereas it's been defined as accepting two arguments.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#124
# 2. What is the type of error message?
#TypeError
# 3. What additional information does the interpreter provide about this type of error?
#String can't be coerced into Fixnum
# 4. Where is the error in the code?
# *
# 5. Why did the interpreter give you this error?
# You can't multiply a number by a string.

# --- error -------------------------------------------------------

#1amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 139
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#divided by 0
# 4. Where is the error in the code?
#20/0
# 5. Why did the interpreter give you this error?
# you can't divide a number by 0

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#155
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file
# 4. Where is the error in the code?
#cartmans_essay.md
# 5. Why did the interpreter give you this error?
# file doesn't exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
The unexpected end of input.

How did you figure out what the issue with the error was?
I still don't really understand why the line
number defaulted to the end of the document, but
I was able to easily identify the problem looking
at the code.

Were you able to determine why each error message happened based on the code?
Yes

When you encounter errors in your future code, what process will you follow to help you debug?
Reading and understanding the error message.

=end