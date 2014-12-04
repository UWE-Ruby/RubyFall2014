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

end






