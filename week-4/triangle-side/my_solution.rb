# I worked on this challenge with: Jon Clayton.


# Your Solution Below

def valid_triangle?(a, b, c)
  triangle = [a,b,c].sort
  return false if triangle[0] <= 0
  return false if triangle[2] >= triangle[0] + triangle[1]
  return true
end