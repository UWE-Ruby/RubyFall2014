class TicTacToe

    attr_accessor :player, :computer, :player_symbol, :computer_symbol, :current_player, :get_player_move
	
	SYMBOLS = [:X, :O]
	
	#all combinations of winning moves
	@winning_combinations = [
							[:A1, :A2, :A3], 
							[:B1, :B2, :B3],
							[:C1, :C2, :C3], 
							[:A1, :B2, :C3], 
							[:A1, :B1, :C1], 
							[:A2, :B2, :C2],
							[:A3, :B3, :C3],
							[:A3, :B2,:C1]							
							]
	
	def initialize *players
		#check who is playing
		if players.length >= 1
			if players[0] == :player
				@current_player = "player"
				if players[1] == SYMBOLS[0]
					@player_symbol = SYMBOLS[0]
					@computer_symbol = SYMBOLS[1]
				else
					@player_symbol = SYMBOLS[1]
					@computer_symbol = SYMBOLS[0]
				end
			else
				players[0] == :computer
				@current_player = "Computer"
					if players[1] == SYMBOLS[0]
						@computer_symbol = SYMBOLS[0]
						@player_symbol = SYMBOLS[1]
					else
						@computer_symbol = SYMBOLS[1]
						@player_symbol = SYMBOLS[0]
					end
			end
		else
			#randomly choose first player
			if rand(2) == 1
				@current_player = "player"
                @computer = "Computer"
			else
				@current_player = "Computer"
                @player = "player"
			end

			#randomly assign who is X and who is O
			@player_symbol = SYMBOLS[rand(2)]
			if @player_symbol == SYMBOLS[0]
				@computer_symbol = SYMBOLS[1]
			else
				@computer_symbol = SYMBOLS[0]
			end
		end
		
		#initialize a blank board
		@board = board
		@open_spots = open_spots
		#since game just started, set over and draw to false
		@over = false
		@draw = false
	end
	
	def board
		#initialize a blank 3x3 board
		@board = {
			:A1 => " ", :A2 => " ", :A3 => " ", 
			:B1 =>" ", :B2 => " ", :B3 => " ", 
			:C1 => " ", :C2 => " ", :C3 => " "
			}
	end
	
	def open_spots
		#start with an empty board
		@open_spots = [
					:A1, :A2, :A3, 
					:B1, :B2, :B3,
					:C1, :C2, :C3
					]	
	end
	
	def computer
		@computer = "Computer"
	end
	
	def player= name
		@player = name #:player
	end
	
	def welcome_player
		return "Welcome #{@player}"
	end
	
	#moved into initialize method since we only want to do this when we start up the game
	#def player_symbol
		#@player_symbol = SYMBOLS[rand(2)] 
	#end

	#moved into initialize method since we only want to do this when we start up the game
	#def compter_symbol
		#if @player_symbol == :X
		#	@computer_symbol = :O
		#else
		#	@computer_symbol = :X
		#end
	#end
	
	def current_player
		if @current_player == "player"
			@current_player = @player 
		else
			@current_player = "Computer"
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
		#get move
		move = get_player_move.to_sym
		
		#test if spot is open
		#keep asking for a new move until have an open spot
		until (@board[move] == " ")
			puts "Sorry, that spot is already taken. Please enter another move"
			#ask for another move
			indicate_player_turn
			get_player_move
		end
		
		# if @board[move] == " "
			# #update board with player's symbol
			# @board[move] = @player_symbol
			# #return the move
			# move
		# else
			# puts "Sorry, that spot is already taken. Please enter another move"
			# move = get_player_move
			# player_move
		# end
		
		#update board with player symbol
		@board[move] = @player_symbol
		update_open_spots
		#set up next turn for Computer
		@current_player = "Computer"
		move
	end
	
	def computer_move
		#find random open_spot
		comp_move = open_spots.shuffle.sample
		#update board
		board[comp_move] = @computer_symbol
		@current_player = @computer
	end
	
	def update_open_spots
		@board.map {|k,v| @open_spots << k if @board[k] == " "}
		#@open_spots
	end
	
	#return the current values in the board hash
	def current_state
			#current_board
			@board.map {|k,v| v.to_s }  #@board.values.each { |v| v.to_s}
			
	end
	
	#print current game board to screen
	def print_current_state
		print "#{@board[:A1]} | #{@board[:A2]} | #{@board[:A3]} \n #{@board[:B1]} | #{@board[:B2]} | ##{@board[:B3]}\n #{@board[:C1]} | #{@board[:C2]} | #{@board[:C3]}"
	end
	
	def determine_winner
		#if 
	end
	
	def spots_open?
		@board.has_value?(" ")
	end
	
	def over?
		spots_open?
	end

	#Answer set tests
	def answer_sets
		#split the board into :X and :O sets
		#x_spaces = @board.map {|k,v| k if v == :X}
		#o_spaces = @board.map {|k,v| k if v == :O}
		#check if the :X or :O spaces match any of the winning_combination
		
		# spell out every combo and compare board to it
		row_a = 

	end

	
end
