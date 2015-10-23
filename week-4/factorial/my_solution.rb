# Factorial

# I worked on this challenge with Jacob Crofts.


# Your Solution Below

def factorial(number)
#establish a counter
  counter = 1
#loop up to number
  (1..number).each do |x|
#store result of each operation
    counter = counter * x
  end
#return
  counter
end