module Slideable

HORIZONTAL_DIRS = [[0, 1], [0, -1], [1, 0], [-1, 0]]

DIAGNOL_DIRS = [[1, 1], [-1, -1], [1, -1], [-1, 1]]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagnol_dirs
        DIAGNOL_DIRS
    end

    def moves
        moves = []
        moves += horizontal_dirs if move_dirs[:horizontal]
        moves += horizontal_dirs if move_dirs[:diagnol]
        possible_moves = []
          moves.each do |move|
            possible_moves << (grow_unblocked_moves_in_dir(move[0], move[1]))
          end
        possible_moves
    end

    def move_dirs
    end

    # def grow_unblocked_moves_in_dir(dx, dy)
    #     i, j = pos
    #     moves_dir =  []
    #     while true
    #         i, j = i + dx, j + dy
    #         pos = i, j

    #         break unless board.in_bounds?(pos) # change in piece
            
    #             if board.empty?(pos) 
    #                 moves_dir << pos
    #             else    
    #                 moves_dir << pos if board[pos].color != self.color

    #                 break
    #             end
        
    #     end
    #     moves_dir
    # end

    def grow_unblocked_moves_dir(dx, dy)
        moves_dir =[]
        i, j = dx, dy
        k = 2
        next_pos = [@pos[0]+dx, @pos[1]+dy]
        while @board.in_bounds?(next_pos) && @board[next_pos].color != self.color
    
          moves_dir << next_pos
          break if @board[next_pos].color != nil
          dx = i * k
          dy = j * k
          k += 1
          next_pos = [@pos[0]+dx, @pos[1]+dy]
        end
        moves_dir
      end

    
end