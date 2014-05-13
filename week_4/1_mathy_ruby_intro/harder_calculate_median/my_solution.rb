# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode
# DEF method that takes an array as an  argument
#   SET middle_number = array / 2
#   array = array.sort
#   IF array length % 2 = 0
#     RETURN  (array[middle_number - 1] + array[middle_number]) /2;
#   ELSE
#     RETURN array[middle_number];
#   END IF
# END method
# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def median(array)
  middle_number = array.length / 2
  array = array.sort
  if array.length % 2 == 0
    ( array[middle_number - 1] + array[middle_number] )/ 2.0
  else
    array[middle_number]
  end
end

# 3. Refactored Solution



# 4. Reflection

