# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#DEF method get_grade which takes an array as an argument
#SET average  to sum of all elemts in an array divided by array length
#SWITCH statement average

# 2. Initial Solution
def get_grade(array)
  average = array.inject(:+)/array.length
  case average
   when 0..59   then "F"
   when 60..69  then "D"
   when 70..79  then "C"
   when 80..90  then "B"
   when 91..100 then "A"
  end
end

# 3. Refactored Solution



# 4. Reflection