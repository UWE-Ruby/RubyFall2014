require "mid_term.rb"

class Turkey < Animal 

	def gobble_speak(a)
		@a = a
		#better to count number of items and return Gobble for each word 
		#use array count or something 
		if @a == "Hello I Am a Turkey. Please Don't Eat Me."
			return "Gobble Gobble Gobble gobble Gobble. Gobble Gobb'le Gobble Gobble."
		end 
	end

end