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
    number_string.reverse.each do |digit|
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

puts separate_comma(123456789)

# 3. Refactored Solution



# 4. Reflection