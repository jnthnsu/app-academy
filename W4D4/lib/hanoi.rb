
class Game 
    attr_reader :towers
  
    def initialize(towers = [[3,2,1], [], []])
      @towers = towers  
    end
  
    def won? 
      return true if @towers[1] == [3,2,1] || @towers[2] == [3,2,1] 
      false
    end
  #[[3,2,1], [], []]) move(0, 1) [[3,2], [1], []])
    def move(start_pos, end_pos)
      if valid_move?(start_pos, end_pos)
        @towers[end_pos] << @towers[start_pos].pop
      else
        puts "Invalid move!"
        self.play
      end
    end
  
    # 
    def valid_move?(start_pos, end_pos)
      return true if @towers[end_pos].empty? 
      return false if @towers[start_pos].empty? 
      @towers[end_pos].last > @towers[start_pos].last ? true : false
    end
  
    def play
  
      self.display
      until self.won? 
        puts 'Please enter in the tower number to take a disk from'
        move_res = gets.chomp.to_i
        puts 'Please enter in the tower number to put the disk to'
        place_res = gets.chomp.to_i 
        self.move(move_res, place_res)
        self.display
      end
      puts 'You won!'
    end
  
    def display
      @towers.each_with_index do |tower, i| 
        puts "  tower #{i}:#{tower.join(' ')}"
      end
    end
  
  end

  #load "hanoi.rb"
  