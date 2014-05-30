require 'test/unit'
# U2.W6: Create a BoggleBoard Class

# I worked on this challenge [with: Jeremy Wong].


# 2. Pseudocode
# Create a new method called get_diagonal that passes in row,column
# We want to make sure tht first coordinate is a corner one like [0,0]
#Create a string of diagnal coordinates




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
    raise "Coordinates not top corners" unless row == 0  && column == 0 || row == 0  && column == @board.size-1
    array =[]
    if column > 0
      4.times do |var|
        array << get_letter(row, column)
        row += 1
        column -= 1
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
    raise ArgumentError,"Coordinates not top corners" unless row == 0  && column == 0 || row == 0  && column == @board.size - 1
    array =[]
    col_operator = "-"
    (col_operator = "+"; column = row;) if column == 0
     @board.size .times do |var|
        array << get_letter(row, column)
        row += 1
        column = column.send(col_operator, 1)
      end
    array#.inspect()
  end


end



# 1. DRIVER TESTS GO BELOW THIS LINE

class BoggleBoardCheck < Test::Unit::TestCase
  def setup
    dice_grid = [["b", "r", "a", "e"],
                 ["i", "o", "d", "t"],
                 ["e", "c", "l", "r"],
                 ["t", "a", "k", "e"]]

    @boggle_board = BoggleBoard.new(dice_grid)
  end

  def test_get_diagonal_not_top_corners
    assert_raise (ArgumentError) {@boggle_board.get_diagonal(1,3)}
  end

  def test_get_diagonal_from_right
    assert_equal( ["e", "d", "c", "t"], @boggle_board.get_diagonal(0,3) )
  end

  def test_get_diagonal_from_left
    assert_equal( ["b", "o", "l", "e"], @boggle_board.get_diagonal(0,0) )
  end

  def test_get_letter
    assert_equal( "k", @boggle_board.get_letter(3,2) )
  end

  def test_get_row
    assert_equal( ["e", "c", "l", "r"], @boggle_board.get_row(2) )
  end

  def test_get_row
    assert_equal( ["e", "c", "l", "r"], @boggle_board.get_row(2) )
  end

  def test_get_column
    assert_equal( ["a", "d", "l", "k"], @boggle_board.get_column(2) )
  end

  def test_create_word
    assert_equal( "code", @boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) )
  end
end
# puts boggle_board.get_diagonal(1,3) #== ["e", "d", "c", "t"]