class Calculator

	
	#computes sum of the array
	def sum(array)
		#sum = 0
		#array.each do |i|
			#sum += i
		#end
		#sum.to_i
		
		array.reduce(:+) || 0
	end

	#multiply 2 numbers
	def multiply(*array)
		#product = 1
		#array.each do |i|
			#product *= i
		#end
		
		array = array.flatten
		array.reduce(1, :*)

	end

	#raises one num to the power of another num
	def pow(base, exponent)
		base ** exponent
	end
	
	#Computes factorial of a given num
	def fac(num)
		array = (1..num)
		array.inject(:*) || 1
	end
	
end