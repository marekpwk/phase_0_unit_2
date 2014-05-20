# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: class Die will take a number as an argument
# Output: object will respond to number of sides and a random number
# Steps:
# DEF a Die class
# INIT with variable sides
#   SET sides as an instance variable
# END INIT
# DEF sides which should return number of sides
# DEF roll which should return random number between 1 and number of sites

# 3. Initial Solution

class Die

  def initialize(sides)
    raise ArgumentError  unless 1 < sides
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
   rand(@sides)+1
  end

end



# 4. Refactored Solution
class Die
  attr_reader :sides

  def initialize(sides)
    raise ArgumentError  unless 1 < sides
    @sides = sides
  end

   def roll
   rand(sides)+1
  end


end


# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(6)
puts die.sides == 6
puts (1..6).include?(die.roll)
Die.new(0) rescue puts $!.message == "ArgumentError"


# Reflections