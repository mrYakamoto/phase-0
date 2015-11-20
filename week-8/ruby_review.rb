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

# Initial Solution
class BingoBoard
  def initialize (board_array)
    @board = board_array
  end

  def check_board

    if self.check_horizontal.instance_of?(String)
      return self.check_horizontal
    elsif self.check_vertical.instance_of?(String)
      return self.check_vertical
    elsif self.check_diagonal.instance_of?(String)
      return self.check_diagonal
    else
      return 'Keep playing. No bingo yet'
    end
  end

  def check_horizontal
    @board.each{|row|
      unless (row.any?{|box|box.instance_of?(Fixnum)})
          return 'BINGO!';
      end
    }
  end

  def check_vertical
    i = 0
    while ( i < 5 )
      if @board.any?{|row|row[i].instance_of?(Fixnum)}
        i += 1
      else
        return 'BINGO!'
      end
    end

  end

  def check_diagonal
    i = 0
    j = 4
    @board.each{|row|
      if row[i].instance_of?(String)
        if i == 4
          return 'BINGO!'
        else
          i += 1
        end
      else
        @board.each{|b|
          if b[j].instance_of?(String)
            if j == 0
              return 'BINGO!'
            else
              j -= 1
            end
          end
          }
      end
      }
  end

end


test = BingoBoard.new([
        [22, 20, 48, 22, 11],
        ['X', 20, 53, 72, 50],
        ['X', 85, 50, 75, 57],
        ['X', 2, 96, 12, 51],
        ['X', 70, 54, 05, 50]])
# p test.check_horizontal
# p test.check_vertical
p test.check_board


# CarClass
# 3. Initial Solution

class Car
  def initialize(model, color)
    @model = model
    @color = color
    @distance_traveled = 0
    @distance = 0.0
    @location = 0
    @speed = "0 mph"
    @warmer = []
  end

  attr_reader :model
  attr_reader :color
  attr_reader :speed
  attr_reader :distance

  def set_distance(distance)
    if @speed == '0 mph'
      @distance = distance
      return "You're set to go #{distance} miles"
    else
      @distance = distance
      @distance_traveled += distance
      return "You're going #{@distance} more miles in this direction"
    end
  end

  def make_turn(direction)
    return "Turning #{direction}"
  end

  def accelerate(speed)
    if speed > (@speed.chomp(' mph').to_i)
      @distance_traveled += @distance
      @speed = "#{speed} mph"
      return "You've accelerated to #{@speed}."
    elsif speed < @speed.chomp(' mph').to_i
      @speed = "#{speed} mph"
      return "You've reverse accelerated down to #{@speed}."
    elsif speed == @speed.chomp(' mph').to_i
      @speed = "#{speed} mph"
      return "You're already going #{@speed}."
    end
  end

  def stop_car
    @speed = '0 mph'
    return "You've stopped"
  end

  def status_update
    return "Your pizza has traveled #{@distance_traveled} miles."
  end

  def add_pizza(pizza)
    @warmer = @warmer.push(pizza)
    return "You added a #{pizza.size} #{pizza.type} pie to the insulated compartment"
  end

  def remove_next_pizza()
    next_pie = @warmer.shift()
    return "You removed a #{next_pie.size} #{next_pie.type} pizza pie from the insulated compartment"
  end
end

class Pizza
  def initialize(size, type)
    @size = size
    @type = type
  end

  attr_reader :size
  attr_reader :type
end



# 4. Refactored Solution

# DRIVER

test_car = Car.new("Volvo", "Green")
p test_car.set_distance(0.25)
p test_car.accelerate(25)
p test_car.stop_car
p test_car.make_turn("right")
p test_car.set_distance(1.5)
p test_car.accelerate(35)
p test_car.speed
p test_car.accelerate(15)
p test_car.set_distance(0.25)
p test_car.stop_car
p test_car.make_turn("left")
p test_car.set_distance(1.4)
p test_car.accelerate(35)
p test_car.stop_car
p test_car.status_update

pie = Pizza.new("large", "cheese")
p test_car.add_pizza(pie)
p test_car.remove_next_pizza

# Create a new car of your desired model and type
# Drive .25 miles (speed limit is 25 mph)
# At the stop sign, turn right
# Drive 1.5 miles (speed limit is 35 mph)
# At the school zone, check your speed
# Slow down to speed limit 15 mph
# Drive .25 miles more miles
# At the stop sign, turn left
# Drive 1.4 miles (speed limit is 35 mph)
# Stop at your destination
# Log your total distance travelled


# REFLECTION
# What concepts did you review or learn in this challenge?
# I got a lot of practice with class structure, class methods, and
#  instance variables in these challenges.

# What is still confusing to you about Ruby?
# I still get tripped up sometimes when accessing instance variables,
# especially through other class methods. I just need some more
# practice with it.

# What are you going to study to get more prepared for Phase 1?
# I'll probably review ruby methods a few times just to get a better
# idea of what's capable in ruby. Sometimes I have a lot of trouble
# refactoring more complicated problems.
