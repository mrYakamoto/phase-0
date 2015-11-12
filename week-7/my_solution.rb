# Virus Predictor

# I worked on this challenge with Ryan.
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Points the code to an outside file. In the case of rspecs, it points
# it to the my_solution.rb file. Require loads outside files with an
# absolute file path, but it can also be used to load Ruby libraries like
# Math.require_relative only links to files and the file path is relative
# to the current.
#
require_relative 'state_data'

class VirusPredictor
  # creates a new instance of the class VirusPredictor
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Calls the methods predicted_deaths and speed_of_spread and inputing
  #as needed as parameters of those methods.
  def virus_effects
    predicted_deaths()
    speed_of_spread()
  end

  private

  # Calculates the number of deaths. It multiplies the population by a
  # different number depending on the density and rounds it down to the
  # nearest whole number. It then prints the result in a string to
  # the console.
  def predicted_deaths()
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Takes the population density from state_data as well as the state for said
  #density and calculates the amount of time in months it will take for the virus
  #to spread. Different densities return different speeds.
  #Sets speed to 0 initially then adds to it depending. Prints the results to
  #the console.
  def speed_of_spread() #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.keys().each{|state|
  new_instance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_instance.virus_effects()
  }

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"]

#   [:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# WHAT ARE THE DIFFERENCES BETWEEN THE TWO DIFFERENT HASH SYNTAXES SHOWN IN
# THE STATE_DATA FILE?
# Anything can be used as a key with the hashrocket syntax. Here, strings
# are used with it, but numbers could also be used. With the colon syntax,
# only keys can be used.

# WHAT DOES REQUIRE_RELATIVE DO? HOW IS IT DIFFERENT FROM REQUIRE?
# require_relative links the code to an outside file. Require does basically
# the same thing except that it uses an absolute file path instead of
# relative, and it can also link to Ruby libraries like Math.

# WHAT ARE SOME WAYS TO ITERATE THROUGH A HASH?
# #each, #cycle, #find.

# WHEN REFACTORING VIRUS_EFFECTS, WHAT STOOD OUT TO YOU ABOUT THE VARIABLES,
# IF ANYTHING?
# Using instance variables as arguments in a class method is unnecessary,
# since the object calling the method will already have access to these
# variables.

# WHAT CONCEPT DID YOU MOST SOLIDIFY IN THIS CHALLENGE?
# The use of arguments in a block inside of an iteration. I got stuck for a
# little bit trying to figure out how to make a variable declaration inside
# of an each statement, but I wasn't thinking that those variables can be
# disposable after each iteration and their scope can be just inside of that
# code block. Also, constant variables and the use of private within a
# class.

