class Calculator

	def multiply(*numbers)
 		result = 1
  		numbers.each { |n| result = result * n }
  		result
	end
	
end
