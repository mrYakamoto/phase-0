# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# Input: Positive Integer
# Output: A string with the integer seperated by commas.
# What are the steps needed to solve the problem?
# turn into array of single digits. Reverse array. Insert commas every
# third as long as it's not the last digit.

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
def separate_comma ( int )
  int.to_s.split('').to_a().reverse().each_slice(3).to_a.map(&:join).join(",").reverse()
end

# 3. Reflection
=begin
WHAT WAS YOUR PROCESS FOR BREAKING THE PROBLEM DOWN?
Since the prompt is merely one line of direction, it
didn't take a lot of steps. Mostly it just took thinking
each action through step by step to ensure that commas
were going in the correct places.

WHAT DIFFERENT APPROACHES DID YOU CONSIDER?
At first, I went for a very simple approach where I
simply iterated through the items one at a time and
used logic to insert the commas. I knew that there were
built in methods that would make the problem simpler, but
I wasn't sure what to use.

WAS YOUR PSEUDOCODE EFFETIVE IN HELPING YOU BUILD A
SUCCESSFUL INITIAL SOLUTION?
I think my pseudocode helped me a little bit. There
weren't a ton of steps in this challenge, but it did
help to plan out a plan of action.

WHAT RUBY METHOD(S) DID YOU USE WHEN REFACTORING YOUR
SOLUTION?
I was stuck on refactoring my solution for a minute.
After researching some methods and approaches, I used
each_slice() and map().

WHAT DIFFICULTIES DID YOU HAVE IMPLEMENTING IT/THEM? DID
IT/THEY SIGNIFICANTLY CHANGE THE WAY YOUR CODE WORKS?
IF SO, HOW?
I was getting an error from each_slice() that I didn't
understand. Turns out each_slice() returns an enumerable,
which I didn't know about. I solved this by using the
to_a() method to turn it back into an array. The
refactored solution is much fancier coding, but I'm not
it's really more efficient. It's probably doing as much
or more work.

HOW DID YOU INITIALLY ITERATE THROUGH THE DATA STRUCTURE?
Yes, I initially iterated through each index point to
implement my code.

DO YOU FEEL YOUR REFACTORED SOLUTION IS MORE READABLE THAN
YOUR INITIAL SOLUTION? WHY?
As long as you understand what each method is doing, I think
my refactored solution is more readable. It's easy to follow
linear path of this method, then that one, then that one, one
at a time instead of accounting for several moving parts in
a loop.

=end