#UW Ruby class Fall 2014 joseph Simpson
class TicTacToe
  PLAYERS = [:player, :computer]
  SYMBOLS = [:X, :O]
  attr_accessor :player, :board
  
  def initialize(initial_player = nil, initial_symbol=nil)
    @current_player = initial_player || PLAYERS.sample
    @player_symbol = initial_symbol || SYMBOLS.sample
    
    @board = {
      :A1 => '', :A2 => '', :A3 => '',
      :B1 => '', :B2 => '', :B3 => '',
      :C1 => '', :C2 => '', :C3 => ''
    }
  end

  #def set_player(player = 'TheMan', player_symbol = :X )
  #  if (@player.nil?)
  #    @player = player
  #  end  
  #end

  def welcome_player
    "Welcome #{@player}"
  end
  
  def current_player
    {:player => @player, :computer => 'Computer' } [@current_player]
  end

  def player_symbol
    @player_symbol
  end
3
  def computer_symbol
    if current_player = 'Computer'
     computer_symbol = {:X => :X, :O => :O}[@player_symbol]
    else
     computer_symbol = {:X => :O, :O => :X}[@player_symbol]
    end
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def get_player_move

  end

  def open_spots
    @empty_spots = []
    @board.each { |index, value| @empty_spots << index if @board[index].empty? }
    @empty_spots
  end

  def computer_move
    move_spot = @empty_spots.sample
    @board[move_spot] = computer_symbol
    move_spot
  end

  def current_state
    state = "#{@board[:A1]} | #{@board[:A2]} | #{@board[:A3]} \n \
    #{@board[:B1]} | #{@board[:B2]} | #{@board[:B3]} \n \
    #{@board[:C1]} | #{@board[:C2]} | #{@board[:C3]} \n "
  end

end