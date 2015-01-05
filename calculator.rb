class Calculator
	def sum(arr)
		answer = 0
		arr.each{|i| answer += i}
		answer
	end

	def multiply(x, y = 0)
		answer = x * y
		answer = x.inject(:*) if x.is_a?Array
		answer
	end

	def pow(x, y)
		answer = 1
		y.times{answer *= x}
		answer
	end

	def fac(x)
		return 1 if x == 0
		(1..x).inject(:*)
	end
end


