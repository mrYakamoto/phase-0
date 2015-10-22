# Leap Years

# I worked on this challenge with: Jon Clayton.


# Your Solution Below

def leap_year? (year)
  case
  when year % 400 == 0
    return true
  when year % 100 == 0
    return false
  when year % 4 == 0
    return true
  else
    return false
  end
end