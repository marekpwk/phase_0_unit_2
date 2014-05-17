# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself].

# 1. Pseudocode

# What is the input? method should take two parameters: number and option
# What is the output? (i.e. What should the code return?)
# method Array#pad will return a new array padded with the number value
# method Array#pad! will return a the same array padded with the number value
# What are the steps needed to solve the problem?
#OPEN Array class
# DEF method pad! which takes following arguments: number and option=nil
#   IF array lenght >= number
    #   RETURN array
    # ELSE
    # LOOP (number - array length) times
    #       array << option
    #   END LOOP
    # END IF
    # RETURN array

# DEF method pad which takes following arguments: number and option=nil
# SET new_array = define new Array object and pass original array to it
#   IF new_array lenght >= number
    #   RETURN array
    # ELSE
    # LOOP (number - new_array length) times
    #       new_array << option
    #   END LOOP
    # END IF
    # RETURN array



# 2. Initial Solution
class Array

  def pad!(number, option=nil)
    if self.length >= number
      self
    else
       (number - self.length).times do
        self << option
      end
    end
    self
  end

  def pad(number, option=nil)
    new_array = Array.new(self)
      if new_array.length >= number
        new_array
      else
        (number - new_array.length).times do
          new_array << option
        end
    end
    new_array
  end

end




# 3. Refactored Solution
class Array

  def pad!(number, option=nil)
    self.length >= number ? self : (number - self.length).times { self << option }
    self
  end

  def pad(number, option=nil)
    new_array = Array.new(self)
    new_array.length >= number ? new_array : (number - new_array.length).times { new_array << option }
    new_array
  end


end
a = [1,2]
puts a.pad(7,"apple").inspect
puts a.pad!(17,"apple").inspect

# 4. Reflection