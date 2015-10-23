# Factorial

# I worked on this challenge with Jacob Crofts.


# Your Solution Below
def factorial(number)
  counter = 1
  (1..number).each do |x|
    counter = counter * x
  end
  counter
end