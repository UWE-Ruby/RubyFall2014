class TicTacToe
  attr_accessor :player
  attr_accessor :player_symbol
  attr_accessor :computer_symbol
  attr_reader   :board
  SYMBOLS = [:O, :X]

  def initialize(first_player = nil, player_symbol = nil)
    @player = "Player1"
    @current_player_symbol = first_player || choose_current_symbol
    @player_symbol = player_symbol || choose_player_symbol
    @computer_symbol = choose_computer_symbol
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
    player_move = gets
    player_move = player_move.upcase.to_sym
    place_board_move(player_move, player_symbol)
    switch_player
  end

  def open_spots
    @board.map{[key,value] }
  end

  private 

  attr_accessor :current_player_symbol

  def choose_current_symbol
    [:player, :computer].sample
  end

  def choose_player_symbol
    SYMBOLS.sample
  end

  def choose_computer_symbol
    (SYMBOLS - [player_symbol]).first
  end

  def place_board_move(position, game_symbol)
    @board[position] = game_symbol
  end

  def init_board
    @board = {
      :A1 => nil, :A2 => nil, :A3 => nil,
      :B1 => :X,  :B2 => nil, :B3 => nil,
      :C1 => :O,  :C2 => nil, :C3 => nil
    }
  end

  def switch_player
    if current_player_symbol == :player
      current_player_symbol = :computer
    else
      current_player_symbol = :player
    end
  end
end