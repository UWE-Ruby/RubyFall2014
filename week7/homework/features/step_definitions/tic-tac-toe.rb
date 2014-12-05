 #http://www.jisaacks.com/ruby-tutorial-make-a-tic-tac-toe-game
 
 class TicTacToe 
 		attr_accessor :player, :computer

 		def initialize(player)
 			@player = rand() > 0.5? "x" : "O" 
			@computer = @player == "X"? "O" : "X" 

			@player_name = player 

			puts "Welcome #{name}" 

			@spots = {
				"A1"=>" ","A2"=>" ","A3"=>" ",
				"B1"=>" ","B2"=>" ","B3"=>" ",
				"C1"=>" ","C2"=>" ","C3"=>" "
				}

			@wins = [
				['A1','A2','A3'],
				['B1','B2','B3'],
				['C1','C2','C3'],
				['A1','B1','C1'],
				['A2','B2','C2'],
				['A3','B3','C3'],
				['A1','B2','C3'],
				['C1','B2','A3']
				]
			#x goes first 
			if(@player == 'X')
    		player_turn
    	else
    		computer_turn
    	end
  	end 

  	def game_board 
  		puts "Make your move \n" 
  		puts "#{@places["A1"]} | #{@places["B1"]} | #{@places["C1"]}"
  		puts "\n" 
  		puts "#{@places["A2"]} | #{@places["B2"]} | #{@places["C2"]}"
  		puts "\n" 
  		puts "#{@places["A3"]} | #{@places["B3"]} | #{@places["C3"]}"
  		puts "\n" 
		end 
		 		
  	def computer_turn 
  		move = get_computer_move
  		@spots[move] = @player
  		puts "#{@computer_turn} move is #{move.upcase}" 
  		check_win(@player)
  	end

  	def count_plays a, num 
  		times = 0 
  		a.each do |i| 
  			times += 1 if @spots[i] == num 
  			unless @place[i] == item || @places[i] == " " 
  				return 0 
  			end 
  		end
			times
  	end 

  	def empty_spot a 
  		a.each do |i| 
  			if @spots[i] == " "
  				return i 
				end
			end
		end 

  	def player_turn

  	end

  	def computer_turn
  		@wins.each do |win| 
  			if count_plays(win, @computer) == 2 
  				return empty_spot win
				end 
			end 

			@wins.each do |win| 
				if count_plays(win, @player) == 2 
					return empty_spot win 
				end 
  	end 

  	def get_computer_move 

  	end 


  	def check_win

  	end 

 end 