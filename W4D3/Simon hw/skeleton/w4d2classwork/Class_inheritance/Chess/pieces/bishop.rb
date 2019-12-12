require_relative 'slideable'
require_relative 'piece'


class Bishop < Piece 

  include Slideable 

  def move_dirs
    {:horizontal => false, :diagnol => true }
  end
 
  def symbol
    :B
  end

  
end