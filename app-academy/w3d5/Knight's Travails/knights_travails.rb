require_relative "polytreenode"

class KnightPathFinder
    
    MOVES =  [[1,2], [-1, 2], [-2,1], [-2,-1], [-1, -2], [1, -2], [2, -1], [2, 1]]
    def self.valid_moves(position) 
        
        valid_num = [0, 1, 2, 3, 4, 5, 6, 7]
        all_possible = []
        MOVES.each_with_index do |sub, i|
            pos = []
            sub.each_with_index do |num, j|
                pos << position[j] + sub[j]
            end
            
            all_possible << pos
        end
    
        [[1, 2], [-1, 2], [-2, 1], [-2, -1], [-1, -2], [1, -2], [2, -1, 2, 1]
    all_possible.select { |sub| sub.all?{}} #START HERE <-------------------------------------
    end


    


    # def initialize(position) #pos is an arr [0, 0]
        

    # end

end

p KnightPathFinder.valid_moves([3, 3])





