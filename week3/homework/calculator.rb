#I realize that we have not looked yet at parameter typing,
# but it just seemed weird not to do some validation.

class Calculator

	def sum a
		result = 0
		if a.kind_of? Array
				a.each {|i| result += i}
		end
		result
	end

	def multiply a, b=1
		if a.kind_of? Array
			if a.length == 0
				0
			elsif a.length == 1
				a[0]
			else
				a[0] * a[1]
			end
		else
			a * b
		end
	end

	def pow a, b
		a**b
	end

	def fac a
		result = 1
		(1..a).each {|n| result *= n}
		result
	end

end


