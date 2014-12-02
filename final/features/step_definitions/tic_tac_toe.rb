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
    if current_player == 'Computer'
     computer_symbol = {:X => :X, :O => :O}[@player_symbol]
    else
     computer_symbol = {:X => :O, :O => :X}[@player_symbol]
    end
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def open_spots
    @empty_spots = []
    @board.each { |index, vaue| @empty_spots << index if @board[index].empty? }
    @empty_spots
  end

  def computer_move
    move_spot = open_spots.sample
    @board[move_spot] = { :X => 'X', :O => 'O' }[computer_symbol]
    @current_player = :player
    move_spot
  end

  def current_state
    state = "#{@board[:A1]} | #{@board[:A2]} | #{@board[:A3]} \n \
    #{@board[:B1]} | #{@board[:B2]} | #{@board[:B3]} \n \
    #{@board[:C1]} | #{@board[:C2]} | #{@board[:C3]} \n "
  end

  def get_player_move
    gets.chomp
  end

  def player_move
    guard_num = 0
    player_spot = get_player_move.to_sym
    until open_spots.include?(player_spot) || guard_num > 10
      guard_num = guard_num + 1
      player_spot = get_player_move.to_sym
    end
    @board[player_spot] = player_symbol
    @current_player = :computer
    player_spot
  end  

  def determine_winner
    @player_win = false
    @computer_win = false
    @draw_match = false
    if score_win(player_symbol)
      return @player_win = true
    else if score_win(computer_symbol)
      return @computer_win = true
    else
      return @draw_match = true
    end
  end

  end

  def score_win(symbol)
    return true if 
      @board[:A1] == symbol && @board[:A2] == symbol && @board[:A3] == symbol || #row 1
      @board[:B1] == symbol && @board[:B2] == symbol && @board[:B3] == symbol || #row 2
      @board[:C1] == symbol && @board[:C2] == symbol && @board[:C3] == symbol || #row 3
      @board[:A1] == symbol && @board[:B1] == symbol && @board[:C1] == symbol || #column 1
      @board[:A2] == symbol && @board[:B2] == symbol && @board[:C2] == symbol || #column 2
      @board[:A3] == symbol && @board[:B3] == symbol && @board[:C3] == symbol || #column 3
      @board[:A2] == symbol && @board[:B2] == symbol && @board[:C2] == symbol || #diagonal 1
      @board[:A3] == symbol && @board[:B3] == symbol && @board[:C3] == symbol    #diagonal 2
      
    else return false
  end

  def player_won?
    !@player_win
  end

  def over?
    player_won? || @computer_win || open_spots.length == 0
  end

  def spots_open?
    !open_spots.empty?
  end

  def draw?
    !@computer_win && !@player_win
  end

end