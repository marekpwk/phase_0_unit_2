# U2.W4: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#DEF method total that takes an array of numbers as and argument
  # SET total = 0
  #LOOP throught each number in array
    #ADD each number to total
  #END loop
  # RETURN total

#DEF method sentence_maker that takes an array of strings as and argument
 #JOIN all elements of an aray with space
 #ADD dot to the and of dtring

# 2. Initial Solution
def total(array)
  total = 0
  array.each do |number|
    total += number
  end
  total
end

def sentence_maker(array)
  array.join(" ").capitalize << "."
end

# 3. Refactored Solution
def total(array)
  array.inject(:+)
end


# 4. Reflection
I have no problems with this assigment
