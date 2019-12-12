require "singleton"

class NullPiece 
attr_reader :symbol, :moves, :color
  include Singleton
  
  def initialize
    @symbol = ' '
    @color = 'nil'
  end

  def empty?
    true
  end

  def moves
  end
 
end