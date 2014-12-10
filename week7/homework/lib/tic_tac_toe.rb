class TicTacToe

	attr_accessor :player_symbol, :computer_symbol, :current_player, :board

	SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]

	def initialize(goes_first = nil, is_playing = nil)
    #Initialize
    @r = Random.new
    @players = {:player => "", :computer => "Computer"}
    @board = {
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
    }
    @over = false
    @draw = false
    @player_won = false
    @computer_won = false

    #Set up the symbols
    if is_playing == nil
      i = @r.rand(0..1)
    else
      i = SYMBOLS.index(is_playing)
    end

    @player_symbol = SYMBOLS[i]
    @computer_symbol = SYMBOLS[i-1] #This is just weird
    @symbols = [@player_symbols, @computer_symbol]

    #Set up the player
    if goes_first == nil
      starter = @players[PLAYERS[@r.rand(0..1)]]
    else
      starter = @players[goes_first]
    end
    @current_player = starter
	end

	#Override default behavior 
	def player=(value)
    @players[:player] = value
    if @current_player == "" 
      @current_player = @players[:player]
    end
	end

  def player
    @players[:player]
  end

	def welcome_player
		puts "Welcome, #{@players[:player]}"
	end

  def indicate_player_turn
    puts "#{@current_player}'s Move:"
  end

  def open_spots
    result = []
    @board.each do |key, value|
      if @board[key] == " " 
        result << key
      end
    end
    result
  end

  def computer_move
    os = open_spots
    move = os[@r.rand(os.length)]
    @board[move] = @computer_symbol
    @current_player = @players[:player]
    move.to_sym
  end

  def current_state
    result = "   1 2 3\n"
    result += "A: #{@board[:A1]} #{@board[:A2]} #{@board[:A3]}\n"
    result += "B: #{@board[:B1]} #{@board[:B2]} #{@board[:B3]}\n"
    result += "C: #{@board[:C1]} #{@board[:C2]} #{@board[:C3]}\n"
  end

  def player_move
    move = gets.chomp
    while @board[move.to_sym] != " "
      puts "That space has already been played."
      gets.chomp
    end
    @board[move.to_sym] = @player_symbol
    @current_player = @players[:computer]
    move.to_sym
  end

  def winnah(symbol)
    result = false
    result = true if
      (@board[:A1]==symbol && @board[:A2]==symbol && @board[:A3]==symbol) || #Row 1
      (@board[:B1]==symbol && @board[:B2]==symbol && @board[:B3]==symbol) || #Row 2
      (@board[:C1]==symbol && @board[:C2]==symbol && @board[:C3]==symbol) || #Row 3
      (@board[:A1]==symbol && @board[:B1]==symbol && @board[:C1]==symbol) || #Col 1
      (@board[:A2]==symbol && @board[:B2]==symbol && @board[:C2]==symbol) || #Col 2
      (@board[:A3]==symbol && @board[:B3]==symbol && @board[:C3]==symbol) || #Col 3
      (@board[:A1]==symbol && @board[:B2]==symbol && @board[:C3]==symbol) || #LDiag
      (@board[:A3]==symbol && @board[:B2]==symbol && @board[:C1]==symbol)    #RDiag
    
    result
  end

  def determine_winner
    case
      when winnah(@player_symbol)
        @player_won = true
        @over = true
      when winnah(@computer_symbol)
        @computer_won = true
        @over = true
      else
        if not spots_open?
          @draw = true
          @over = true
        end
      end
  end

  def player_won?
    @player_won
  end

  def computer_won?
    @computer_won
  end

  def over?
    @over
  end

  def spots_open?
    test = @board.collect {|key, value| value.to_s}
    test.include?(" ")
  end

  def draw?
    @draw
  end

end
