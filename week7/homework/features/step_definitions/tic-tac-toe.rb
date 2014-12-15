class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol, :board, :winning_marker
  SYMBOLS = [:X, :O]
  
  def initialize(first_player = nil, marker = nil)

    init_marker(marker)

    @board = {A1: " ", A2: " ", A3: " ",
              B1: " ", B2: " ", B3: " ",
              C1: " ", C2: " ", C3: " "}
  
    @current_player_indicator = init_current_player(first_player) 
    @winning_marker = nil 
  end

  def init_marker(marker) 
    if marker == nil 
      @player_symbol = SYMBOLS.sample 
    else 
      @player_symbol = marker  
    end 
      remaining_symbol = SYMBOLS - [@player_symbol]
      @computer_symbol = remaining_symbol.last
  end 

  def init_current_player(first_player)
    if first_player == nil 
      return [:player, :computer].sample
    else
      return first_player
    end 
  end 

  def current_player
    i = @current_player_indicator 
    if i == :player 
      @player 
    else 
      "Computer"
    end
  end 

  def open_spots
    open_spaces = []
    @board.each do |k, v|  
      if v == ' '
        open_spaces.push(k)
      end
    end
    open_spaces
  end
  
  def player_move
    begin
    make_move = get_player_move
    end while board[make_move.to_sym] != " " 
    board[make_move.to_sym] = @player_symbol
    @current_player_indicator = :computer
    make_move.to_sym
  end
  
  def get_player_move
    make_move = gets.chomp
  end
  
  def computer_move
    make_move = open_spots.sample
    board[make_move.to_sym] = @computer_symbol
    @current_player_indicator = :player
    make_move
  end
  
  def current_state
    "#{board.values{|v| v + ','}}"
  end
  
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end
  
  def spots_open?
    true unless open_spots.length == 0
  end
  
  def player_won?
    winning_marker == player_symbol
  end
  
  def computer_won?
    winning_marker == computer_symbol
  end
  
  def draw?
    winning_marker == nil && open_spots.count == 0 
  end
  
  def over?
    winning_marker != nil || draw? 
  end


  def determine_winner
    o_positions = []
    x_positions = []

    @board.each do |key, val|
      if val == :X
        x_positions.push(key)
      elsif val == :O
        o_positions.push(key)
      end
    end

    winning_patterns = [[:A1,:A2,:A3],[:B1,:B2,:B3],[:C1,:C2,:C3],
                        [:A1,:B1,:C1],[:A2,:B2,:C2],[:A3,:B3,:C3],
                        [:A1,:B2,:C3],[:A3,:B2,:C1]]

    winning_patterns.each do |pattern| 
      if (o_positions & pattern).count == 3
        @winning_marker = :O
      end

      if (x_positions & pattern).count == 3
        @winning_marker = :X
      end
    end
  end

  
  def welcome_player
  "Welcome #{@player}"
  end
end