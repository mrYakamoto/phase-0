# 8.6 RUBY REVIEW

# ASSERT STATEMENTS (new information on testing)

class CreditCard
  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    if @card_number.to_s.length != 16
      raise ArgumentError.new("Please enter 16 digits.")
    end
  end

  def check_card
    doubled = double_numbers(@card_number)
    summed = sum_digits(doubled)
    summed % 10 == 0
  end

  def double_numbers(number)
    number = number.to_s.split('').map!(&:to_i).reverse!()
    number.each_index{|x|
      if x.odd?
        number[x] = number[x] * 2
      end
      }
  end

  def sum_digits(array)
    array.map!{ |i| if i > 9
      i.to_s.split('').map!(&:to_i)
      else i
      end
      }
    array = array.flatten.reduce(:+)
  end

end

def assert
  raise "Assertion failed!" unless yield
end

assert { CreditCard.new(4563960122001999).check_card == true }
assert { CreditCard.new(4563960122001998).check_card == false }

# BINGO 2 (review)

class BingoBoard
  def initialize (board_array)
    @board = board_array
  end

  def check_board
  end

  def check_horizontal
    @board.each{|x|
      x.each{|y|
        unless
      }
    }
  end

  def check_vertical
  end

  def check_diagonal
  end

end
