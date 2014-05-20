# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: should take an array as an argument, whe initializing an object
# Output: object will respond to methods sides and roll
 # Steps:
# DEF a Die class
# INIT with variable sides
#   RAISE Argument Error if array is empty
#   SET sides as an instance variable
# END INIT
# DEF sides which should return number of sides
# DEF roll which should return random number between 1 and number of sites


# 3. Initial Solution

class Die

  def initialize(labels)
    raise ArgumentError if labels.empty?
    @labels = labels
  end

  def sides
    @labels.size
  end

  def roll
    @labels[rand(@labels.size)]
  end

end



# 4. Refactored Solution




# 1. DRIVER TESTS GO BELOW THIS LINE
array = %w{a b c d e}
die = Die.new(array)
puts array.include?(die.roll)
puts array.size == die.sides
Die.new([]) rescue puts $!.message == "ArgumentError"



# 5. Reflection
