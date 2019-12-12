require_relative "null_piece"
require_relative 'piece'
require_relative 'queen'

# b[[7, 3]] = Queen.new([7, 3], self, :black)
# b.move_piece([7,3],[0,3])
# load "board.rb"
#b[[0,3]]
class Board
  attr_reader :board
  def initialize
    @board = Array.new(8) {Array.new(8, 0)}
    # @sentinel = NullPiece.instance
    # populate
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @board[row][col] = value 
  end

  def move_piece(start_pos, end_pos)
    if self[start_pos].nil?
      put "There is no piece here"
      raise StandardError
    elsif !in_bounds?(end_pos)
      put "That is no a valid position"
      raise StandardError
    end

    self[end_pos] = self[start_pos]
    self[start_pos] = nil 
  end

  def in_bounds?(pos)
    pos.all? { |x| x.between?(0, 7) }
  end
  
  def checkmate?

  end
  
  def in_check?

  end
  
  
  def find_king(color)
    @board.each_index do |i|
      subarr = @board[i] 
      subarr.each_index do |j|
        return [i,j] if subarr[j] == king && king == color 
      end
    end

  end
  

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
    
  end

  def populate
    # [[7, 0], [7, 7]].each do |pos|
    #   self[pos] = Rook.new(pos, self, :black)
    # end

    # [[7, 1], [7, 6]].each do |pos|
    #   self[pos] = Knight.new(pos, self, :black)
    # end

    # [[7, 2], [7, 5]].each do |pos|
    #   self[pos] = Bishop.new(pos, self, :black)
    # end

     self[[7, 3]] = Queen.new([7, 3], self, :black)
    # self[[7, 4]] = King.new([7, 4], self, :black)

    # @grid[6].each_with_index do |row, i|
    #   self[[6, i]] = Pawn.new([6, i], self, :black)
    # end

    # [[0, 0], [0, 7]].each do |pos|
    #   self[pos] = Rook.new(pos, self, :white)
    # end

    # [[0, 1], [0, 6]].each do |pos|
    #   self[pos] = Knight.new(pos, self, :white)
    # end

    # [[0, 2], [0, 5]].each do |pos|
    #   self[pos] = Bishop.new(pos, self, :white)
    # end

     self[[0, 3]] = Queen.new([0, 3], self, :white)
    # self[[0, 4]] = King.new([0, 4], self, :white)

    # @grid[1].each_with_index do |row, i|
    #   self[[1, i]] = Pawn.new([1, i], self, :white)
    # end

  end
end