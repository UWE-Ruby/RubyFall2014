class TicTacToe
 
  attr_accessor :open_spots,:draw,:player_won, :computer_won, :over,:board,:player,:current_player,:player_symbol,:computer_symbol

  SYMBOLS = [:X,:O]
  
  def initialize (*p) 
    if (p[0]==:player)
      @current_player = "Player"
    elsif (p[0]==:computer)
      @current_player = "Computer"
    elsif (rand(2) == 0)
      @current_player = "Computer"
    else
      @current_player = "Player"
    end
    if (p[1].nil?)
      @player_symbol = SYMBOLS[rand(2)]
    else
      @player_symbol = p[1]
    end  
    @computer_symbol = (@player_symbol == :X)? :O : :X 
    @board = {:A1 => " ", :A2 => " ", :A3 => " ", :B1 => " ", :B2 => " ", :B3 => " ", :C1 => " ", :C2 => " ", :C3 => " "}
    @open_spots = [:A1,:A2,:A3,:B1,:B2,:B3,:C1,:C2,:C3]
    @draw = false
    @over = false
  end
  
  def player= playername
    @player = playername
    @current_player = playername if @current_player == "Player" 
  end
  
  def welcome_player
    return "Welcome " + @player
  end
  
  def indicate_palyer_turn
    print @player + "'s Move:"
  end
  
  def player_move
    move = gets.chomp.to_sym
    until (@board[move] == " ")
      puts "That spot is occupied!"  
      indicate_palyer_turn  
      move = gets.chomp.to_sym
      end
    @board[move] = @player_symbol
    @open_spots -= [move]
    @current_player = "Computer"
    return move
  end
  
  def computer_move
    move = @open_spots[rand(@open_spots.length)]
    @board[move] = @computer_symbol
    @open_spots -= [move]
    @current_player = @player
    return move
  end
  
  def current_state
    return @board[:A1].to_s + " | " + @board[:A2].to_s + " | " + @board[:A3].to_s + "\n" + @board[:B1].to_s + " | " + @board[:B2].to_s + " | " + @board[:B3].to_s + "\n" + @board[:C1].to_s + " | " + @board[:C2].to_s + " | " + @board[:C3].to_s 
  end
  
  def determine_winner
    test_set :A1, :A2, :A3
    test_set :B1, :B2, :B3
    test_set :C1, :C2, :C3
    test_set :A1, :B1, :C1
    test_set :A2, :B2, :C2
    test_set :A3, :B3, :C3
    test_set :A1, :B2, :C3
    test_set :A3, :B2, :C1
    if @player_won
      @over = true
    elsif @computer_won
      @over = true
    elsif board.value?(" ") == false
      @draw = true
      @over = true
    end                  
  end
  
  def get_player_move
    move = player_move
    return move
  end
  
  def spots_open?
    board.value? " "
  end
  
  def draw?
    @draw
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
  
  
  def test_set x, y, z
    if ((@board[x] == @board[y]) && (@board[y] == @board[z]) && (@board[x] != " ") && (@board[y] != " ") && (@board[z] != " "))
      @over = true
      if (@board[x] == @player_symbol)
        @player_won = true
      else
        @computer_won = true
      end
    end
  end
  
  
end