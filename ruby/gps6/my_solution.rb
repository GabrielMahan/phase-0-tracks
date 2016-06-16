# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# `require_relative` is a convienent subset of require
# with `require` File and path must also be specified 
#
require_relative 'state_data'

class VirusPredictor
# initialize: sets our instance variables, sets parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls two other instance methods, predicted_deaths and speed_of_spread

  def virus_effects
    print_report 
  end
## all methods below here cannot be called by outside methods
private
## calculates predicted deaths based on population density, and rounds down
##also prints out the expected death toll
  def predicted_deaths ##don't need this (population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      (@population * 0.4).floor  
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
       (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  #print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def print_report
    puts "#{@state} will lose #{predicted_deaths.to_s} people in this outbreak"
    puts " and will spread across the state in #{speed_of_spread.to_s} months.\n\n"
  end
 
## sets speed of spread solely based on pop density
  def speed_of_spread ##(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, data_for_state|
  state_tested =VirusPredictor.new(state, data_for_state[:population_density], data_for_state[:population])
  state_tested.virus_effects
end
#=======================================================================
# Reflection Section

#communicate well, contributed ,with-it