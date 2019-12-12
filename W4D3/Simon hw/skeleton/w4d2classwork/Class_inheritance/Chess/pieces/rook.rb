require_relative 'slideable'
require_relative 'piece'


class Rook < Piece 

  include Slideable 

  def move_dirs
    {:horizontal => true, :diagnol => false}
  end
 
  def symbol
    :R
  end

  
end