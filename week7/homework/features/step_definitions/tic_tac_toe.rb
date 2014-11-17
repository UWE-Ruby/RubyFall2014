#UW Ruby class Fall 2014 joseph Simpson
class TicTacToe
  attr_accessor :player
  
  def initialize
    @player
    @board
  end

  def welcome_player
    "Welcome #{@player}"
  end
  
  def current_player
    @player
  end

end