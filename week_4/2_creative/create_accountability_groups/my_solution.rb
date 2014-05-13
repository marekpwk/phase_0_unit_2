# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: method takes an arary of names
# Output: will return number of arrays with names in it for different groups
# Steps:
# DEF method create_group which takes an array as an argument
# Shuffle the array and assign it to variable shuffled_array
# SET variable new_groups to an empty array
# LOOP through shuffled_array
#   ADD Every four elements as an array to  new_groups
# END LOOP
# RETURN new_groups

# 3. Initial Solution
def new_groups(array)
 new_group = []
 array.shuffle.each_slice(4){|acc| new_group << acc}
  if new_group.length > 1 && new_group.last.length <= 2
    (new_group.last.length).times do |i|
      new_group[i].push(new_group.last.pop)
      new_group.pop
    end
  end
 new_group
end

# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
puts new_groups(["a","b","c","d","e","f","g","h"])[0].length == 4 #returns true if lenght of 1st group is 4
puts new_groups(["a","b","c","d","e","f", "g"])[1].length == 3   #returns true if lenght of  group is 3
puts new_groups(["a","b","c","d","e"])[0].length == 5       #returns true if lenght of 1st group is 5



# 5. Reflection


