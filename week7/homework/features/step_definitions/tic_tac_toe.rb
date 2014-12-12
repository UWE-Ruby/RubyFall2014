#UW Ruby class Fall 2014 joseph Simpson
class TicTacToe
  SYMBOLS = [:X, :O]
  attr_accessor :player
  
  def initialize(player = nil, player_symbol=nil)
    @player = player
    @player_symbol = player_symbol
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

  def indicate_player_turn
    puts "#{@player}' Turn"
  end

end