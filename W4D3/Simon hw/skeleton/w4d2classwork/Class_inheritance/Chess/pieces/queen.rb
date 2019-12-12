require_relative 'slideable'
require_relative 'piece'


class Queen < Piece 

  include Slideable 

  def move_dirs
    {:horizontal => true, :diagnol => true }
  end
 
  def symbol
    :Q
  end

  
end