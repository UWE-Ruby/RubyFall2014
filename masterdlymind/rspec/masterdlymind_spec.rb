require 'spec_helper'
require_relative '../lib/masterdlymind'

describe Masterdlymind do
	
	before :all do
		@game = Masterdlymind.new 
	end
	
	describe '#initialize' do
		it 'starts a new game by creating an instance ofMasterdlymind' do
			@game.should be_an_instance_of Masterdlymind
		end
	
		it 'has a secret code with 4 elements' do
			expect(@game.secret_code.length).to eq 4
		end
		
		it 'has an empty array to hold guesses' do
			expect(@game.guess).to be_empty
		end
		
		it 'the game is not set to game over when first started' do
			expect(@game.game_over).to eq false
		end
	
	end
	
	describe '#compare_guess' do
		it "compares a user's guess to the secret code and returns how many are matching" do
			@game.guess = ["Blue", "Red", "Periwinkle", "Green"]
			@game.secret_code = ["Blue", "Red", "Periwinkle", "Yellow"]
			expect(@game.compare_guess.length).to eq 3
		end
		
		it "compares a user's guess and ends the game if the code matches" do
			@game.guess = ["Blue", "Red", "Periwinkle", "Green"]
			@game.secret_code = ["Blue", "Red", "Periwinkle", "Green"]
			@game.compare_guess
			expect(@game.game_over).to eq true
		end
	
	end
	
	describe '#exact_match' do
		it 'recognizes when the user guess and the secret code are an exact match' do
			expect(@game.exact_match?).to eq true
		end
	end
	
	#describe '#play_again' do
	#	it 'sets game over to false if the user wants to play again' do
	#		@game.play_again
	#		@game.play_again = 'y'
	#		expect(@game.game_over).to eq false
	#	end
	#end

end