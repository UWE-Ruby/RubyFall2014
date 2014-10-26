class Calculator

	def sum input
		
		total = 0
		input.each { |a| total += a }
		end
		total
	end
	
	def multiply *numbers
 		result = 1
  		numbers.flatten.each { |m| result *= m }
  		result
	end
	
	def pow base,exp
		base ** exp
	end
	
	def fac n
		retun 1 if n.zero?
		n *= fac(n-1)
	end 
	
end