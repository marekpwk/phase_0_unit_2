# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.

# Pseudocode

# Initial Solution
def get_row(row,board)
  board[row]
end

# puts get_row(1, boggle_board)

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_column(column,board)
  board.collect {|num| num[column]}.inspect
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_column(0,boggle_board)

# Reflection