class BasicObject
	def self.call_chain
		puts self
		"BasicObject"
	end
end

module Kernel
	def self.call_chain
		puts self
		"Kernel.#{super}"
	end
end

class Object
	def self.call_chain
		puts self
		"Object.#{super}"
	end
end

module NamedThing

	def self.included klass
		puts "hello"
		klass.extend OtherThing
	end

	module OtherThing
		def call_chain
			puts self
			"NamedThing.#{super}"
		end
	end

	def call_chain
		"NamedThing"
	end
end

class Animal
	def self.call_chain
		puts self
		"Animal.#{super}"
	end
end

module Speaker
	def call_chain
		puts self
		"Speaker.#{super}"
	end
end

class Person < Animal
	extend Speaker
	include NamedThing
	def self.call_chain
		puts self
		"Person.#{super}"
	end
end

class Renee < Person
	def self.call_chain
		puts self
		"#{self}.#{super}"
	end
end

