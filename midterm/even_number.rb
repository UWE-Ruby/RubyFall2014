class EvenNumber
	include Comparable
	attr_reader :value

	def self.new(value)
		return false unless value.respond_to? :odd?
		return false if value.odd?
		super
	end

	def self.new!(value)
		raise "NO ODD NUMBERS" if value.odd?
		super
	end

	def initialize(value)
		@value = value
	end

	def succ
		EvenNumber.new(@value + 2)
	end

	def <=> (other)
		@value <=> other.value
	end
end