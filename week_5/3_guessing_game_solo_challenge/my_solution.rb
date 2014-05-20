# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: INIT class GuessingGame with variable answer
# Output: Object should respond to methods guesssolved?
# Steps:
# INIT with answer
#   SET solved to false
# END INIT
# DEF guess which takes a num as argument
#   IF num equals @answer
#     SET solved to true and return :correct
#   ELSEIF num is more than @answer
#     SET solved to false and return :hih
#   ELSEIF num is less than @answer
#     SET solved to false and return :low
#   END IF
# END
# DEF solved?
#   will return solved
# END

# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(num)

      if num == @answer
        @solved = true
        :correct
      elsif num > @answer
        @solved = false
        :high
      else
        @solved = false
        :low
      end
  end

  def solved?
    @solved
  end

end



# 4. Refactored Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(num)
    @solved = num == @answer
    if num == @answer
      :correct
    elsif num > @answer
     :high
    else
     :low
    end
  end

  def solved?
    @solved
  end


end




# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(4)
puts game.solved? == false
puts game.guess(2) == :low
puts game.solved? == false
puts game.guess(10) == :high
puts game.solved? == false
puts game.guess(4) == :correct
puts game.solved? == true





# 5. Reflection
