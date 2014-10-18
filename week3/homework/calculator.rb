class Calculator
	def sum(values)
		values.inject(0) { |result, next_val| result + next_val }
	end

	def multiply(*values)

		values.inject { |result, next_val| result * next_val }
	end

	def pow(base, exponent)
		result = 1
		exponent.times{ result *= base }
		result
	end

	def fac(value)
		value == 0 ? 1 : (1..value).inject { |result, next_val| result * next_val }
	end
end