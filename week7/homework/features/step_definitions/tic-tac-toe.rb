class TicTacToe
	attr_accessor :player, 
				 :player_symbol, 
			      :computer_symbol, 
				  :board 
					  
	SYMBOLS = [:X, :O]
	 
	def initialize(first_player = nil, player_symbol = nil)

		@player_symbol = :O && @computer_symbol = :X
	 
		@board = { :A1 => " ", 
			 	   :A2 => " ", 
			       :A3 => " ",
			       :B1 => " ", 
			       :B2 => " ", 
			       :B3 => " ",
			       :C1 => " ", 
			       :C2 => " ", 
			       :C3 => " " }		

	 	current_player(first_player)
		
		@winning_condition = [ [:A1, :A2, :A3],
						       [:B1, :A2, :B3],
						       [:C1, :C2, :C3],
						       [:A1, :B1, :C1],
						       [:A2, :B2, :C2],
						       [:A3, :B3, :C3],
						       [:A1, :B2, :C3],	
						       [:A3, :B2, :C1] ]		
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player(x = 0)
		@current_player_identity = case x 
		when 
			:computer 
			"Computer"
		else
			@current_player_identity === "Computer" ? "Computer" : @player
	 	end
	end

	def open_spots
		open_spots = []
		@board.map {|x,y| open_spots << x if @board[x] == " "}
		open_spots
	end

	def player_move
		begin
			move = get_player_move
		end until board[move.to_sym] == " " 
			board[move.to_sym] = @player_symbol
			move.to_sym	
		end
	 
	def get_player_move
		move = gets
	end
	 
	def computer_move
		move = open_spots.shuffle.sample
		board[move] = @computer_symbol
		@current_player_identity = @player
		open_spots.shuffle.sample
	end

	def current_state
		@board.map {|x,y| y.to_s}
	end

	def indicate_player_turn
		current_player == :computer
	end
		
  	def spots_open?
    	
  	end

	def player_won?
		winning_condition @player_symbol
	end

	def winning_condition(s)
		return true if
			@board[:A1] == s && @board[:A2] == s \
				&& @board[:A3] == s or
		   	@board[:B1] == s && @board[:B2] == s \
			   	&& @board[:B3] == s or
			@board[:C1] == s && @board[:C2] == s \
			   	&& @board[:C3] == s or
			@board[:A1] == s && @board[:B1] == s \
			   	&& @board[:C1] == s or 
			@board[:A2] == s && @board[:B2] == s \
			   	&& @board[:C2] == s or
			@board[:A3] == s && @board[:B3] == s \
			   	&& @board[:C3] == s or
			@board[:A1] == s && @board[:B2] == s \
			   	&& @board[:C3] == s or
			@board[:A3] == s && @board[:B2] == s \
			   	&& @board[:C1] == s 
	end
 
	def determine_winner
		if winning_condition(@player_symbol)
			@player_won = true
		elsif winning_condition(@computer_symbol)
			@computer_won = true
		else
			@draw = true
		end
    end        	

	def draw?
		return true 
	end
	 
	def over?
		return true  
	end	 
end






