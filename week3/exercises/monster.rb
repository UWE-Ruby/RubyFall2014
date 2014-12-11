require './named_thing.rb'
require_relative 'funny_thing.rb'
class Monster
	include NamedThing
	include FunnyThing

	attr_accessor :vulnerabilities, :dangers
    attr_reader :nocturnal, :legs

	def initialize(noc, legs, name="Monster", vul = [], dangers = [])
		super(name)
		@nocturnal = noc
		@vlunerabilities = vul
		@dangers = dangers
		@legs = legs
	end

	def attack human
		"#{name} attacked #{human.name}"
	end

protected
	def make_nocturnal
		@nocturnal = true
	end

private
	def out_put_special_name
		puts "My name is #{name}"
	end

public
	# more public stuff!

end
