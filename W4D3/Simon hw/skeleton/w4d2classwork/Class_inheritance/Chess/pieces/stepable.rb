module Stepable
    def moves
             i, j = pos
        moves_dir =  []
        while true
            i, j = i + dx, j + dy
            pos = [i, j]

            break unless board.valid_pos?(pos)
            
                if board.empty?(pos) 
                    moves_dir << pos
                else    
                    moves_dir << pos if board[pos].color != self.color

                    break
                end
            end
        end
        moves_dir
    end

    def move_diffs
    end
end