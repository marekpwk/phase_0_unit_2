# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: Adrian Tawadros].

# EXPLANATION OF require_relative
#It allows to load a file which is in realtive path to the file containing require_relative

require_relative 'state_data' #Saying that we need the file state_date to work

class VirusPredictor
  #initialize sets our instance variables within a object
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects #virus_effects calls predicted_deaths and speed_of_spread
    predicted_deaths
    speed_of_spread
  end

  private  #Everything under has to be called within the class

  def predicted_deaths # Its gonna predict number of deaths based on population density by muliplying population by given factor, for each state
   array  = [50, 100, 150, 200].reverse
   array.each do |end_of_range|
       if @population_density >= end_of_range
         number_of_deaths = ( @population * end_of_range / 500 )
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
         break
       else
         number_of_deaths = (@population * 0.05).floor
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
         break
       end
    end
  end

  def speed_of_spread # speed_of_spread will calculate the spread of virus within a given state based on population density in months
    speed = 2.5 # Instead of starting at 0 start at 2.5 which is the highest if can be
    array_two  = [0,50,100,150,200].reverse # use the same array as in predicted_deaths because we are using @population_density as our common variable again
    array_two.each do |end_of_range| # For each of the values in the Array_two we want to
    if @population_density >= end_of_range # check to see if the @population_density vsalue is greater than each of the values
       speed -= 0.5 * end_of_range / 50 # Every time the value of @population_density is greater than the value of the end_of_range, the speed of the
       break# so we dont add up all of the values of end_of_range and then substract
     end
   end
    print " and will spread across the state in #{speed} months.\n"
  end

end


STATE_DATA.each do |key, value|
  report = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread])
  report.virus_effects
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
# p alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread])
# alaska.virus_effects




# Reflection
# I paired for this challenge and at the beginning it looked liked we would finish pretty quickly.
# My partner came up with a couple of great refactoring ideas...but then we got stuck. We had working solutions,
# but the final output was slightly different than the original code and the debugging process.
# We spent most of our session trying to find a bug, then we decided to take a break and schedule another session which helped.
# During the second session, we finished pretty quickly. It turned out that we made mistakes in the order of looping through an array of ranges.
# This exercise taught me how time consuming debugging can be and that it's good to take a break from the problem sometimes and come back with a fresh mind.





