class Converter
	attr_accessor :value
	attr_accessor :type

	def initialize 
	end

	def convert
		# [°C] = ([°F] - 32) × 5/9
		# [°F] = [°C] × 9/5 + 32

		if type == :fahrenheit
			value * 9/5 + 32
		else
			(value - 32) * 5/9
		end
	end

end