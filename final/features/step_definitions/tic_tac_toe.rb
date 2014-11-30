#UW Ruby class Fall 2014 joseph Simpson
class TicTacToe
  PLAYERS = [:player, :computer]
  SYMBOLS = [:X, :O]
  attr_accessor :player
  
  def initialize(initial_player = nil, initial_symbol=nil)
    @current_player = initial_player || PLAYERS.sample
    @player_symbol = initial_symbol || SYMBOLS.sample
    #@current_player = {:player => @player, :computer => "Computer"}
    @board = Array.new(3) {Array.new(3, ' ')}
  end

  #def set_player(player = 'TheMan', player_symbol = :X )
  #  if (@player.nil?)
  #    @player = player
  #  end  
  #end

  def welcome_player
    "Welcome #{player}"
  end
  
  def current_player
    {:player => @player, :computer => "Computer"}[@current_player]
  end

  def player_symbol
    #SYMBOLS[0]
    @player_symbol
  end

  def computer_symbol
    SYMBOLS[1]
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def get_player_move

  end

end