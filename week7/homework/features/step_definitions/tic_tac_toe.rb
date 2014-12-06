class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol, :board
  SYMBOLS = [:O, :X]

  def initialize(first_player = nil, player_symbol = nil)
    @current_player_symbol = first_player || choose_current_symbol
    @player_symbol = player_symbol || choose_player_symbol
    @computer_symbol = (SYMBOLS - [player_symbol]).first
    
    @player_won = false
    @computer_won = false
    @over = false
    @draw = false

    @board = {
      :A1 => ' ', :A2 => ' ', :A3 => ' ',
      :B1 => ' ',  :B2 => ' ', :B3 => ' ',
      :C1 => ' ',  :C2 => ' ', :C3 => ' '
    }
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    if current_player_symbol == :player
      return player
    else
      return "Computer"
    end
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def get_player_move
    player_position = gets.chomp
  end

  def player_move
    player_position = ""
    while board[player_position.to_sym] != ' '
      player_position = get_player_move
    end
    place_board_move(player_position.to_sym, player_symbol)
    current_player_symbol = :computer
    player_position.to_sym
  end

  def open_spots
    board.keys.select{|key| board[key] == ' '}
  end

  def computer_move
    computer_position = open_spots.sample
    place_board_move(computer_position, computer_symbol)
    current_player_symbol = :player
    computer_position
  end

  def check_for_winner
    winner_symbol = nil
    if      board[:A1] == board[:A2] && board[:A2] == board[:A3] && board[:A3] != ' '
      winner_symbol = board[:A3]
    elsif   board[:B1] == board[:B2] && board[:B2] == board[:B3] && board[:B3] != ' ' 
      winner_symbol = board[:B3]
    elsif   board[:C1] == board[:C2] && board[:C2] == board[:C3] && board[:C3] != ' '
      winner_symbol = board[:C3]
    elsif   board[:A1] == board[:B1] && board[:B1] == board[:C1] && board[:C1] != ' '
      winner_symbol = board[:C1]
    elsif   board[:A2] == board[:B2] && board[:B2] == board[:C2] && board[:C2] != ' '
      winner_symbol = board[:C2]
    elsif   board[:A3] == board[:B3] && board[:B3] == board[:C3] && board[:C3] != ' '
      winner_symbol = board[:C3]
    elsif   board[:A1] == board[:B2] && board[:B2] == board[:C3] && board[:C3] != ' '
      winner_symbol = board[:C3]
    elsif   board[:C1] == board[:B2] && board[:B2] == board[:A3] && board[:A3] != ' '
      winner_symbol = board[:A3]
    end
    winner_symbol
  end

  def determine_winner
    winner_symbol = check_for_winner

    if winner_symbol != nil 
      if winner_symbol == player_symbol
        @player_won = true
        @over = true
      else
        @computer_won = true
        @over = true
      end
    else
      if !spots_open?
        @draw = true
        @over = true
      end 
    end
  end

  def current_state
    state =   "#{board[:A1]}|#{board[:A2]}|#{board[:A3]}\n" +
              "--------\n" +
              "#{board[:B1]}|#{board[:B2]}|#{board[:B3]}\n" +
              "--------\n" +
              "#{board[:C1]}|#{board[:C2]}|#{board[:C3]}\n" 
    state
  end

  def over?
    @over
  end

  def player_won?
    @player_won
  end
    def computer_won?
    @computer_won
  end
  
  def draw?
    @draw
  end

  def spots_open?
    open_spots.count != 0
  end

  private 
  attr_accessor :current_player_symbol

  def choose_current_symbol
    [:player, :computer].sample
  end

  def choose_player_symbol
    SYMBOLS.sample
  end

  def place_board_move(position, game_symbol)
    board[position] = game_symbol.to_s
  end
end