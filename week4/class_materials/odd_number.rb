class OddNumber
	include Comparable
	attr_accessor :value

	def initialize value
		@value = value
	end

	def succ
		return OddNumber.new(@value + 1) if @value.even?
		OddNumber.new(@value + 2)
	end

	def <=> other
		@value <=> other.value
	end
end

