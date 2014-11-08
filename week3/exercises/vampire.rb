require './monster.rb'
class Vampire < Monster
	def initialize(noc=true, legs=2, name ="Vampire", vul=[:garlic, :sunlight], dangers=[:bites])
		super
	end

  def attack human
    puts "#{human.name}'s blood is tasty!"
    super
  end

  def turn_nocturanl other_monster
    other_monster.make_nocturnal
    other_monster.out_put_special_name
  end
end
