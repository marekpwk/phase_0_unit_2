# U2.W4: Calculate the mode!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
# DEF method mode that takes an array or a string as and argument
# DEF frequency as a empty hash
# LOOP thru an array
#   IF the element is not in hash as a key
#     ADD element as a key and 1 as a value
#   ELSE
#     incrase value of a key by 1
#   END IF
# END LOOP


# SET max_value to 0
# LOOP through frequency |value|
#   IF value > max_value
#     max_value = value
#   END IF
# END LOOP
# SET var max to empty array
# SET max_key to empty string
# LOOP through frequency |key, value |
#   IF value >= max_value
#     max_value = value
#     max_key = key
#     ADD max_key to max_freqency
#   END IF
# END LOOP
# RETURN max_freqency

# DEF max as an empty array
# DEF max_temp and set it to 0
# LOOP thru value in frequency
#   IF value is bigegr than max_temp
#     max_temp = bigger
#   ELSIF max_temp == value
#     ADD [key, value] to array max
#   ELSE
#     DO NOTHING
#   END IF
  # END LOOP

# 2. Initial Solution
def mode(array)
  frequency = {}
  array.each do |item|
    if frequency.has_key?(item)
      frequency[item] = frequency[item] + 1
    else
      frequency[item] = 1
    end
  end

max_value = 0
frequency.each_value do |value|
  if value > max_value
    max_value = value
  end
end
max = []
max_key = ""
max_freqency = []
frequency.each do |key, value|
  if value >= max_value
    max_value = value
    max_key = key
    max_freqency << max_key
  end
end
max_freqency
end

# 3. Refactored Solution
def mode(array)
  frequency = []
  counted = []
  array.each do |item|
    if !counted.include?(item)
      frequency.push([item, array.count(item)])
      counted.push(item)
    end
  end
  max_value = frequency.max_by{ |v| v[1] }[1]
  result = []
  frequency.each { |arr| result << arr[0] if arr[1] >= max_value }
  result
end



# 4. Reflection

