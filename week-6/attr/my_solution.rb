#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = "Greggy_D"
  end
end

class Greetings
  def initialize
    @NameData = NameData.new
  end

  def hello
    puts "Well, how do you do #{@NameData.name}?"
  end
end