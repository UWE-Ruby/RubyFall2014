class TicTacToe
	SYMBOLS = [:X, :O]
	attr_accessor :player, :playerXO, :board, :random, :comp_turn, :winning_symbol

	def initialize(player_turn = nil, playerXO = nil)
    	@player = player_turn.to_s.capitalize unless player_turn.nil?
    	@random = true if player_turn == nil
    	@playerXO = playerXO
		@board =	{:A1 => " ", :A2 => " ", :A3 => " ",
					 :B1 => " ", :B2 => " ", :B3 => " ",
					 :C1 => " ", :C2 => " ", :C3 => " "}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		if @random == true
			@random = false
			[@player, "Computer"].sample
		elsif @comp_turn == true
			@comp_turn == false
			"Computer"
		else
			@player
		end
	end

	def player_symbol
		@playerXO = SYMBOLS.sample
	end

	def computer_symbol
		sym = SYMBOLS.clone
		sym.delete(@playerXO)
		sym[0]
	end

	def indicate_player_turn
		puts "#{@player}'s Move:"
	end

	def get_player_move
		gets.chomp
	end

	def open_spots
		open_arr = []
		@board.select{|k, v| open_arr << k if v == " "}
		open_arr
	end

	def computer_move
		move_arr = []
		@board.select{|k, v| move_arr << k if v == " "}
		move = move_arr.sample
		@board[move] = "#{computer_symbol}"
		@comp_turn = false
		move
	end

	def player_move
		move = get_player_move.to_sym until open_spots.include?move
		@board[move] = "#{player_symbol}"
		@comp_turn = true
		move
	end

	def current_state
		result = ""
		result << "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
		result << 		"-"		"|"		"-"	   "|"		"-\n"
		result << "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
		result << 		"-"		"|"		"-"	   "|"		"-\n"
		result << "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}"
	end

	def determine_winner
		x_arr = []
		o_arr = []
		@board.each{|k, v| x_arr << k if v == "X"}
		@board.each{|k, v| o_arr << k if v == "O"}

		x_l = []
		x_n = []
		o_l = []
		o_n = []
		x_arr.each{|i| x_l << i[0]}
		x_arr.each{|i| x_n << i[1]}
		o_arr.each{|i| o_l << i[0]}
		o_arr.each{|i| o_n << i[1]}

		la = ["A","A","A"]
		lb = ["B","B","B"]
		lc = ["C","C","C"]
		n1 = ["1","1","1"]
		n2 = ["2","2","2"]
		n3 = ["3","3","3"]
		@winning_symbol = :X if ((((x_l==(la||lb||lc))&&(x_n==(n1||n2||n3)))&&(@board[:B2]==X))||((x_l.uniq.sort==["A","B","C"])||(x_n.uniq.sort==["1","2","3"])))
		@winning_symbol = :O if ((((o_l==(la||lb||lc))&&(o_n==(n1||n2||n3)))&&(@board[:B2]==X))||((o_l.uniq.sort==["A","B","C"])||(o_n.uniq.sort==["1","2","3"])))
	end

	def over?
		spots_open? || player_won? || computer_won?
	end

	def spots_open?
		@board.each{|k, v| v.to_s.include?(" ")}
	end

	def player_won?
		@winning_symbol == player_symbol
	end

	def computer_won?
		@winning_symbol == computer_symbol
	end

	def draw?
		over? && !player_won? && !computer_won?
	end
end

