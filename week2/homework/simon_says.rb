module SimonSays

	def echo(says)
		return says
	end

	def shout(says)
		return says.upcase
	end

	def repeat(says, times=2)
		hold = ""
		for i in 0...times
			hold = hold + says + " "
		end
		return hold.strip
	end

	def start_of_word(says, chars)
		return says[0,chars]
	end

	def first_word(says)
		return says.split(' ')[0]
	end

end
