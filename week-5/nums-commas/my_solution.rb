# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# Input: Positive Integer
# Output: A string with the integer seperated by commas.
# What are the steps needed to solve the problem?


# 1. Initial Solution
=begin

def separate_comma ( int )
  arr = int.to_s.split('').reverse()
  counter = 0
  (0..(arr.length - 1)).each do |n|
    counter += 1
    if (counter % 3 == 0) && (arr[n + 1])
      arr[n] = "," + arr[n]
    end
  end
  arr.reverse().join('')
end

=end

# 2. Refactored Solution

def separate_comma( int )

end




# 3. Reflection