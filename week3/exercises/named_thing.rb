module NamedThing
	attr_accessor :name

	def initialize name
		@name = name
	end

	def say_name
		"My name is #{@name}"
	end

private
	def shout_name
		@name.upcase
	end
end
