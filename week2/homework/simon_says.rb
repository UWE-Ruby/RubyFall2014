module SimonSays

	def echo(stuff)
		stuff
	end

	def shout(stuff)
		stuff.to_s.upcase
	end

	def repeat(stuff, times = 2)
		return_stuff = ((stuff + " ") * (times - 1)) + stuff
		return_stuff
	end

	def start_of_word(stuff, position)
		stuff[0 .. position -1]
	end

	def first_word(stuff)
		stuff.split(" ")[0]
	end

end