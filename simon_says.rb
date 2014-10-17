module SimonSays
	def echo(str)
		str
	end

	def shout(str)
		str.upcase
	end

	def repeat(str, n = 2)
		arr = []
		n.times {arr << str}
		arr.join(' ')
	end

	def start_of_word(str, n)
		str[0..n-1]
	end

	def first_word(str)
		arr = str.split(' ')
		arr[0]
	end
end

