# # U2.W6: Create a BoggleBoard Class


# # I worked on this challenge [by myself, with: ].


# # 2. Pseudocode



# # 3. Initial Solution
# class BoggleBoard

#   #your code here

# end


# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]

# boggle_board = BoggleBoard.new(dice_grid)



# 4. Refactored Solution




# 3. Initial Solution
class BoggleBoard

  def initialize(board)
    @board = board
  end

  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end

  def get_row(row)
    @board[row] == nil ? false : @board[row]
  end

  def get_column(column)
    return false if @board[column] == nil
    the_column = @board.collect { |num| num[column] }
  end

  def get_letter(row, column)
    @board[row][column]
  end

  def get_diagonal(row, column)
    raise "Coordinates not top corners" unless (row == 0  && column == 0) || (row == 0  && column == @board.size-1)
    array =[]
    index = column

    if column > 0
      4.times do |var|
        array << get_letter(row, column)
        row += 1
        column -= 1
        puts index
      end
    else
      column = row
      4.times do |var|
        array << get_letter(row, column)
        row += 1
        column += 1
      end
    end
    array
  end


end



# 4. Refactored Solution

# class BoggleBoard

#   def initialize(board)
#     @board = board
#   end

#   def create_word(*coords)
#     coords.map { |coord| @board[coord.first][coord.last]}.join("")
#   end

#   def get_row(row)
#     @board[row] == nil ? false : @board[row]
#   end

#   def get_column(column)
#     return false if @board[column] == nil
#     the_column = @board.collect { |num| num[column] }
#   end

#   def get_letter(row, column)
#     @board[row][column]
#   end

#   def get_diagonal(row, column)
#     raise "Coordinates not top corners" unless (row == 0  && column == 0) || (row == 0  && column == @board.size-1)
#     arr =[]
#     index = column

#     if column > 0
#       4.times do |var|
#         arr << get_letter(row, column)
#         row += 1
#         column -= 1
#         puts index
#       end
#     else
#       puts "else #{index}"
#       column = row
#       4.times do |var|
#         arr << get_letter(row, column)
#         row += 1
#         column += 1
#         puts index
#       end
#     end
#     arr.inspect()
#   end


# end



# 1. DRIVER TESTS GO BELOW THIS LINE
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]

boggle_board = BoggleBoard.new(dice_grid)
puts boggle_board.get_diagonal(0,0) == ["b", "o", "l", "e"]
puts boggle_board.get_diagonal(0,3) == ["e", "d", "c", "t"]
# puts boggle_board.get_diagonal(0,3) #== ["e", "d", "c", "t"]