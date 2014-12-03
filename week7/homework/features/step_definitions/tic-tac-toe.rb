class TicTacToe

	attr_accessor :player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	attr_accessor :board

	SYMBOLS = [ :X, :O ]

	def initialize who_starts = nil, other_players_symbol = :X
		if who_starts == nil
			if Random.new.rand(0..1) == 1
				@turn = :player
			else
				@turn = :computer
			end
		else
			@turn = who_starts
		end
		if @turn == :player
			@computer_symbol = other_players_symbol
			@player_symbol = opposite_symbol_of other_players_symbol
		else
			@player_symbol = other_players_symbol
			@computer_symbol = opposite_symbol_of other_players_symbol				
		end

		@board = {}
		for x in 0..2
			for y in 0..2
				coords = coords_to_sym x, y
				@board[coords] = " "
			end
		end
	end

	def opposite_symbol_of symbol
		i = SYMBOLS.index symbol
		if i != nil
			SYMBOLS[1 - i]
		end
	end

	def welcome_player
		"Welcome #{player}"
	end

	def current_player
		if @turn == :player
			@player
		else
			"Computer"
		end
	end

	def indicate_palyer_turn
		print "#{current_player}'s Move:"
	end

	def get_player_move
		move = nil
		loop do
			move = gets.chomp.to_sym
			break if @board.has_key?(move) && @board[move] == " "
			print "Invalid move, try again:"
		end
		@board[move] = @player_symbol
		@turn = :computer
		move
	end

	def player_move
		move = self.get_player_move
		move.to_sym
	end

	def computer_move
		begin
			x = Random.new.rand(0..2)
			y = Random.new.rand(0..2)
			coords = coords_to_sym x, y
		end while @board[coords] != " "
		@board[coords] = @computer_symbol
		@turn = :player
		coords	
	end

	def coords_to_sym x, y
		"#{('A'..'C').to_a[y]}#{x+1}".to_sym
	end

	def open_spots
		open = []
		for x in 0..2
			for y in 0..2
				coords = coords_to_sym x, y
				if @board[coords] == " "
					open << coords
				end
			end
		end
		open
	end

	def spots_open?
		open_spots.length > 0
	end

	def current_state
		state = "  1 2 3\n"
		for y in 0..2
			state << "#{('A'..'C').to_a[y]} "
			for x in 0..2
				coords = coords_to_sym x, y
				state << @board[coords].to_s
				if x < 2
					state << '|'
				end
			end
			state << "\n"
			if y < 2
				state << "  -+-+-\n"
			end
		end
		state << "\n"
	end

	def determine_winner
		@winner = nil

		# horizontal
		for y in 0..2
			row = ""
			for x in 0..2
				row << @board[coords_to_sym(x, y)].to_s
			end
			determine_if_winner row
		end

		# vertical
		for x in 0..2
			row = ""
			for y in 0..2
				row << @board[coords_to_sym(x, y)].to_s
			end
			determine_if_winner row
		end

		# diagonal left-top to bottom
		row = ""
		for i in 0..2
			row << @board[coords_to_sym(i, i)].to_s
		end
		determine_if_winner row

		# diagonal right-top to bottom
		row = ""
		for i in 0..2
			row << @board[coords_to_sym(2 - i, i)].to_s
		end
		determine_if_winner row

		if @winner == nil && !spots_open?
			@winner = :draw
		end
	end

	def determine_if_winner row
		if row == "XXX"
			if @player_symbol == :X
				@winner = :player
			else
				@winner = :computer
			end
		elsif row == "OOO"
			if @player_symbol == :O
				@winner = :player
			else
				@winner = :computer
			end
		end
	end

	def player_won?
		@winner == :player
	end

	def computer_won?
		@winner == :computer
	end

	def over?
		@winner != nil
	end

	def draw?
		@winner == :draw
	end
end