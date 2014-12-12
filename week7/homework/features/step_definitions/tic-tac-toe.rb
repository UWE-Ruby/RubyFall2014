class TicTacToe
  attr_accessor :player
  attr_accessor :board
  attr_accessor :player_symbol
  attr_accessor :computer_symbol
  
  SYMBOLS = [:O, :X]
  
  def initialize(first_player = nil, player_symbol = nil)
    if player_symbol == nil
      @player_symbol = :O
      @computer_symbol = :X
    else 
      @player_symbol = player_symbol
        if @player_symbol == :X
          @computer_symbol = :O
        else
          @computer_symbol = :X
        end
    end
    
    if first_player == nil
      @c_player = [:player, :computer].sample
    else
      @c_player = first_player
    end
   @board =  {:A1 => " ", :A2 => " ", :A3 => " ",
              :B1 => " ", :B2 => " ", :B3 => " ",
              :C1 => " ", :C2 => " ", :C3 => " "
            }
  end
  
  def player=(p)
    @player = p
    
  end
  
  
  def welcome_player
    return "Welcome #{@player}"
  
    
  end

  def current_player
    if @c_player == :player
      return @player
    else
      return "Computer"
    end    
  end
  
  def indicate_player_turn
    puts "#{@player}'s Move:"
  end
  
  def get_player_move
    player_move = gets.chomp
    return player_move
  end
  
  def player_move
    move = get_player_move.to_sym
    while @board[move] != " "
      move = get_player_move.to_sym
    end
    @board[move] = @player_symbol
    @c_player = :computer
    return move
  end
  
  def computer_move
    c_move = open_spots.sample
    @board[c_move] = @computer_symbol
    @c_player = :player
    return c_move
    end
    
  def spots_open?
    if open_spots.empty?
      false
    else
      true
    end
  end
     
  
  def open_spots
    open_array = []
    @board.each do |k, v|
      if v == " "
        open_array.push(k)
      end
    end
    open_array
  end
  
  def determine_winner
    in_a_row = [[:A1, :A2, :A3], 
                [:B1, :B2, :B3], 
                [:C1, :C2, :C3], 
                [:A1, :B1, :C1], 
                [:A3, :B3, :C3],
                [:A1, :B2, :C3],
                [:A3, :B2, :C1]]
    if @c_player == :player
      symbol = @player_symbol
    else
      symbol = @computer_symbol
    end
    in_a_row.each do |a|
      first = a[0]
      second = a[1]
      third = a[2]
      if @board[first] == symbol && @board[second] == symbol && @board[third] == symbol
        puts "you won, #{symbol}"
        if symbol == @player_symbol 
          return :player
        else
          return :computer
        end
      end
    end
  end
  
  def player_won?
    determine_winner == :player
  end
  
  def computer_won?
    determine_winner == :computer
  end
      
  def current_state
    @board.to_s
  end
  
  def draw?
    if player_won? || computer_won? 
      return false
    end
    @board.each do |k, v|
      if v == " " 
        return false
      end
    end
    true
  end
  
  def over?
    true if determine_winner || draw?
  end
  
        

end
