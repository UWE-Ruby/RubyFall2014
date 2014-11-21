class TicTacToe

	attr_accessor :player
	attr_reader :player_symbol
	attr_reader :computer_symbol
	attr_accessor :board

	SYMBOLS = [ :X, :O ]

	def initialize who_starts = nil, with_symbol = :X
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
			@computer_symbol = with_symbol
			@player_symbol = opposite_symbol with_symbol
		else
			@player_symbol = with_symbol
			@computer_symbol = opposite_symbol with_symbol				
		end
		@board = {}
	end

	def opposite_symbol symbol
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
		"#{current_player}'s turn"
	end


	# def puts move
	# 	put "********** move=#{move}"
	# 	@move = move.to_sym
	# 	if @turn == :player
	# 		@turn = :computer
	# 	else
	# 		@turn = :player
	# 	end
	# end

	# def gets arg
	# 	put "********** arg=#{arg}"
	# 	@move
	# end

	def get_player_move
		@move = gets
		@board[@move] = @player_symbol
		@turn = :computer
		@move
	end

	def coords_to_s x, y
		"#{('A'..'C').to_a[x]}#{y}".to_sym
	end

	def computer_move
		begin
			x = Random.new.rand(1..3)
			y = Random.new.rand(1..3)
			coords = coords_to_s x, y
		end while @board.has_key? coords
		@board[coords] = @computer_symbol
		@turn = :player
		coords	
	end

	def open_spots
		open = []
		for x in 1..3
			for y in 1..3
				coords = coords_to_s x, y
				if ! @board.has_key? coords
					#if open != ""
					#	open += ", "
					#end
					open << coords
				end
			end
		end
		open
	end

	def current_state
		state = ""
		for y in 1..3
			for x in 1..3
				coords = coords_to_s x, y
				if @board.has_key? coords
					state += @board[coords].to_s
				else
					state += " "
				end
			end
			state += "\n"
		end
		state
	end

	def player_move
		@move
	end

	def determine_winner
	end

	def player_won?
	end

	def spots_open?
		@board.length < 9
	end
end