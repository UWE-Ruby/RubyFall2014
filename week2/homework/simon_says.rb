module SimonSays
	def echo(text)
		text
	end

	def shout(text)
		text.upcase
	end

	def repeat(text, num_of_repeats = 2)
		text_array = num_of_repeats.times.collect {text}
		text_array.join(' ')
	end

	def start_of_word(word, num_of_chars)
		word.slice(0, num_of_chars)
	end

	def first_word(text)
		text.split(' ')[0]
	end
end