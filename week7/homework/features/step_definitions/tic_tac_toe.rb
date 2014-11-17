#UW Ruby class Fall 2014 joseph Simpson
class TicTacToe
  SYMBOLS = [:X, :O]
  attr_accessor :player
  
  def initialize(player)
    @player = player
    @board
  end

  def welcome_player
    "Welcome #{@player}"
  end
  
  def current_player
    @player
  end

  def player_symbol
    SYMBOLS[0]
  end

  def computer_symbol
    SYMBOLS[1]
  end


end