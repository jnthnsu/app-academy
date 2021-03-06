require_relative 'piece'
require_relative 'stepable'

class King < piece
    include Stepable

    def symbol
        :K
    end

    def move_diffs
        [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [-1, -1], [1, -1], [-1, 1]] 
    end

end