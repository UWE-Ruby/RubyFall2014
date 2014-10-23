require './monster.rb'
class Vampire < Monster # inheriting from monster
	#override inherited initialize functionality
	#set up logical defaults that are *slightly* different from Monster superclass
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		#super - call back to Monster superclass.
		#call this method (inititalize) on parent class Monster, and use these args (same number, same order, passes args to parent method)
		super(noc,legs,name,vul,dangers)
	end
end
