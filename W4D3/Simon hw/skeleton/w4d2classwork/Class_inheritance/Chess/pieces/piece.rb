class Piece
    attr_accessor :pos
    attr_reader :color, :board
    
    def initialize(pos, board, color)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        
    end

    def empty?
        return true if board[pos] == sentinel
    end

    def valid_moves?
        row, col = pos
        row.between?(0, 7) && col.between?(0, 7)
    end

    def pos=(val)
        row, col = pos
        @board[row][col] = val
    end

    def symbol
    end

    def move_into_check?(end_pos)
    end

end