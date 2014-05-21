# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#Saying that we need the file state_date to work
class VirusPredictor
  #initialize sets our instance variables within a object
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end
  #virus_effects calls predicted_deaths and speed_of_spread
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  private  #Everything under has to be called within the class
# Its gonna predict number of deaths based on population density by muliplying population by given factor, for each state
  def predicted_deaths
    array  = [1,50,100,150,200].reverse
    # number_of_deaths = 0
   array.each do |end_of_range|
    # puts end_of_range
       if @population_density >= end_of_range
        # puts "First statement"
        # puts "population #{@population}"
        # puts "population density #{@population_density}"
        # puts "end of range #{end_of_range}"
         number_of_deaths = ( @population * end_of_range / 500 )
         # puts  ( @population * end_of_range/500)
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
          break
       # else
       #   puts "Second statement"
       #    number_of_deaths = (@population * 0.05).floor
       #     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
       #     break
       end

    end
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end



  end
# speed_of_spread will calculate the spread of virus within a given state based on population density
  def speed_of_spread #in months
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread])
# alaska.virus_effects


STATE_DATA.each do |key, value|
  report = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population], STATE_DATA[key][:region], STATE_DATA[key][:regional_spread])
  report.virus_effects
end