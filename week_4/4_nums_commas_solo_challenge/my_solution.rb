# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 1. Pseudocode

# What is the input? method will take a number
# What is the output? method will return comma separated string
# What are the steps needed to solve the problem?
# DEF separate_comma which will take number as an argument
# SET var number_string = number converted to a string
# IF number_string.length < 4
#   RETURN  number_string
# ELSE
#     SET sub_str = ""
#     LOOP through reversed number_string
#       sub_str = digit + sub_str
#       IF sub_str lenght == 3
#         new_string = "," + sub_str + new_string
#         sub_str = ""
#       END IF
#     END LOOP
#     new_string = sub_str + new_string
#     IF new_string[0] == ","
#       new_string = new_string[1..-1]
#     END IF
# END IF
# RETURN new_string
# 2. Initial Solution
def separate_comma(number)
  number_string = number.to_s.split("")
  new_string = ""
  if number_string.length < 4
    return number_string.join
  else
    sub_str = ""
    number_string.reverse_each do |digit|
      sub_str  = digit + sub_str
      if sub_str.length == 3
        new_string = "," + sub_str + new_string
        sub_str = ""
      end
    end
    new_string = sub_str << new_string
    if new_string[0] == ","
      new_string = new_string[1..-1]
    end
  end
  new_string
end


# 3. Refactored Solution
def separate_comma(number)
  number_array = number.to_s.split("")
  sliced_array = []
  formatted_number = ""
  number_array.reverse.each_slice(3){ |numbers| sliced_array << numbers }
  sliced_array.reverse.each_with_index do |numbers, index|
    index == sliced_array.length - 1 ? formatted_number << numbers.reverse.join : formatted_number << numbers.reverse.join << ","
  end
  formatted_number
end


# 4. Reflection

puts separate_comma(1000)