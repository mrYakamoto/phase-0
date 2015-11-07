# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Create array for letters in bingo. Randomly pick an element
  # from that array and combine with a random number 1-100.

# Check the called column for the number called.
  # check the letter corresponding column if there's a match for
  # the number.

# If the number is in the column, replace with an 'x'

# Display a column to the console
  # puts the corresponding element from each array to the console

# Display the board to the console (prettily)
  # puts each row of the updated bingo board to the console to make
  # the entire bingo board.

## Initial Solution

# class BingoBoard

#   attr_reader :bingo_board

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call_letters()
#     bingo = ["B","I","N","G","O"]
#     @last_letter = bingo[rand(0..4)]
#     @last_number = rand(1..100).to_s
#     @last_call = @last_letter + (@last_number)
#   end

#   def check_call()
#     if @last_letter == "B"
#       @bingo_board.each do |x|
#         if x[0].to_s == @last_number
#           x[0] = "X"
#         end
#       end
#     elsif @last_letter == "I"
#       @bingo_board.each do |x|
#         if x[1].to_s == @last_number
#           x[1] = "X"
#         end
#       end
#     elsif @last_letter == "N"
#       @bingo_board.each do |x|
#         if x[2].to_s == @last_number
#           x[2] = "X"
#         end
#       end
#     elsif @last_letter == "G"
#       @bingo_board.each do |x|
#         if x[3].to_s == @last_number
#           x[3] = "X"
#         end
#       end
#     elsif @last_letter == "O"
#       @bingo_board.each do |x|
#         if x[4].to_s == @last_number
#           x[4] = "X"
#         end
#       end
#     end
#     p bingo_board[0]
#     p bingo_board[1]
#     p bingo_board[2]
#     p bingo_board[3]
#     p bingo_board[4]
#   end

# end

# Refactored Solution

class BingoBoard

  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
  end



  def create_legal_board()
  @new_board = [[],[],[],[],[]]
  @new_board.each{ |array| array.push(rand(1..15)) }
  @new_board.each{ |array| array.push(rand(16..30)) }
  @new_board.each{ |array| array.push(rand(31..45)) }
  @new_board.each{ |array| array.push(rand(46..60)) }
  @new_board.each{ |array| array.push(rand(61..75)) }
  @new_board[2][2] = "X"
  print"\n"
  print "B\tI\tN\tG\tO"
  print "\n\n"
  @new_board.each{|element|
    element.each{|inside_element|
      print "#{inside_element}\t"
    }
  print "\n"
  }
  print "\n"
  @new_board
end

  def call_letters()
    bingo = ["B","I","N","G","O"]
    @last_letter = bingo[rand(0..4)]
    @last_number = rand(1..100).to_s
    @last_call = @last_letter + (@last_number)
    puts @last_call
  end

  def check_call()
    case @last_letter
      when "B"
      @bingo_board.each {|x|
        x[0].to_s == @last_number ? x[0] = "X" : x[0]
        }
      when "I"
      @bingo_board.each {|x|
        x[1].to_s == @last_number ? x[1] = "X" : x[1]
        }
      when "N"
        @bingo_board.each {|x|
        x[2].to_s == @last_number ? x[2] = "X" : x[2]
        }
      when "G"
        @bingo_board.each {|x|
        x[3].to_s == @last_number ? x[3] = "X" : x[3]
        }
      when "O"
        @bingo_board.each {|x|
        x[4].to_s == @last_number ? x[4] = "X" : x[4]
        }
    end
    print"\n"
    print "B\tI\tN\tG\tO"
    print "\n\n"
    @bingo_board.each{|element|
      element.each{|inside_element|
        print "#{inside_element}\t"
      }
    print "\n"
    }
    print "\n"
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
50.times {
new_game.call_letters()
new_game.check_call()
  }


#Reflection
# How difficult was pseudocoding this challenge? What do you think of
#  your pseudocoding style?
# I've gone from overusing coding terms to trying a very colloquial
# approach to pseudocoding. It's made it much easier for me to
# produce a skeleton of the program and get started without spending
# too much time worrying about things unnecessarily.

# What are the benefits of using a class for this challenge?
# Since there're several methods that we want to use for bingo
# boards, a class allows us to keep them all organized in one place
# exactly where we want to call them, on bingo boards.

# How can you access coordinates in a nested array?
# Exactly how you would in a normal array. Just take the arrays
# one at a time in order of their nesting and access them using
# a bracketed index.

# What methods did you use to access and modify the array?
# I think I only used #each and #push for this challenge to modify
# the arrays.

# Give an example of a new method you learned while reviewing the Ruby
#   docs. Based on what you see in the docs, what purpose does it serve,
#   and how is it called?
# I learned about #cycle during this lesson. While I didn't end up
# using it, it iterates through an array and performs a given code
# block on each item. It then repeats that actions a given amount
# of cycles. #cycle(2){} is basically the same as 2.times #each{}.


# How did you determine what should be an instance variable versus a
#   local variable?
# local variables are only accessible from inside the function or
# code block that it's created in, whereas instance variables are
# accessible outside of the code block they're created in in an
# instance of the object.

# What do you feel is most improved in your refactored solution?
# I spent most of my refactoring improving the formatting of the
# output to the console. Now, the boards are printed at each step
# in a nicely formatted grid pattern. I also created a method
# for producing a new legal bingo board.
