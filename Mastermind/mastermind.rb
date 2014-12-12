class Mastermind

	COLORS = ['Red', 'Blue', 'Green', 'Yellow', 'Periwinkle', 'Egg Shell', 'Chartreuse']
	
	def initialize
		@guess = []
		#randomly choose 4 colors from COLORS
		@secret_code = COLORS.shuffle[0,4]
		@game_over = false
		#@play_again = "Y"
	
	end

	def play_game
		10.times do |i|
			if @game_over == true
				play_again
			else
				#get guess from user
				make_guess
				#compare guess to code
				compare_guess
				#print out number of guess left 
				if @game_over == false
					puts "You have #{9 - i} guesses left."
				end
			end
		end
		#out of attempts - game over
		puts "Game over! The correct code was #{@secret_code.join(', ')}."
		play_again
	end
	
	
	def make_guess
		#prompt user for input
		puts "Enter 4 colors, separated by commas. Your choices are: \n #{COLORS.join(', ')}"
		@guess = gets.chomp.split(',')
		@guess
	end
	
	def compare_guess
		#current_guess = @guess.each_with_index { |c, i| "#{i} #{c}" }
		
		if exact_match?
			puts "Congratulations! You cracked the code."
			@game_over = true
		#find the matching colors
		else
			partial_match = []
			@guess.each do |c|
				if @secret_code.include?(c)
					partial_match << c
				end
			end
			#tell the user which colors they had in the wrong spots
			puts "You had #{partial_match.length} out of 4 colors correct"
		end
		partial_match
	end
	
	def exact_match?
		@guess == @secret_code
	end
		
	def play_again
		puts "Play again? Enter 'y' or 'n'"
		@play_again = gets.chomp
		if @play_again == "y"
			@game_over = false
			play_game
		else
			puts "Thanks for playing!"
		end
	end

end