module SimonSays

		#echo takes a greeting and says it back
		def echo(greeting)
			greeting
		end
		
		#shout takes words and yells them back in ALL CAPS
		def shout(words)
			words.upcase!
		end
		
		#repeat takes a saying and repeats it at least twice, if no number is specified
		def repeat(saying, number=2)
			repeat_saying = (saying + " ") * number
			repeat_saying.rstrip!
		end
		
		#start_of_word takes a word and returns the letters starting from [0] to the specified number
		def start_of_word(word, number)
			index = number - 1
			word.slice!(0..index)
		end
		
		#first_word takes a phrase and returns the first word
		def first_word(phrase)
			phrase_array = phrase.split(' ')
			phrase_array[0]
		end
		
	
end