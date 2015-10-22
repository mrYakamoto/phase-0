# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def get_grade (avg)
  if avg < 60
    return 'F'
  elsif avg < 70
    return 'D'
  elsif avg < 80
    return 'C'
  elsif avg < 90
    return 'B'
  else
    return 'A'
  end
end