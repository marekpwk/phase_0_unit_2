# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])

# Reflection

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.

# Pseudocode
#Get the the element at index row
# Initial Solution
def get_row(row,board)
  board[row]
end



# Refactored Solution
def get_row(row,board)
  board[row] == nil ? false : board[row]
end

# DRIVER TESTS GO BELOW THIS LINE
puts boggle_board[0] == get_row(0, boggle_board)
puts boggle_board[1] == get_row(1, boggle_board)
puts boggle_board[2] == get_row(2, boggle_board)
puts get_row(5, boggle_board) == false


# Reflection



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#in every array get element at the same index and put it in a new array
# Initial Solution
def get_column(column,board)
  board.collect {|num| num[column]}.inspect
end

# Refactored Solution
def get_column(column,board)
   return false if board[column] == nil
   the_column = board.collect { |num| num[column] }
end

# DRIVER TESTS GO BELOW THIS LINE
puts %W{b i e t} == get_column(0, boggle_board)
puts %W{r o c a} == get_column(1, boggle_board)
puts %W{e t r e} == get_column(3, boggle_board)
puts get_column(13, boggle_board) == false

# Reflection
# In this challenge we learned how to access nested arrays, and saw some simple implementation .
# At first I thought that there was nothing to refactor, but after re-reading the instructions a couple of times,
# I understood that that methods should also return false if the given row or number is out of range.