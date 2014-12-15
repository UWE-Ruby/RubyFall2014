$monsters = []

$monsters << {
	:name => 'Zombie',
	:nocturnal => false,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['fire', 'decapitation'],
	:legs => 2
}
$monsters << {
	:name => 'Mummy',
	:nocturnal => false,
	:dangers => ['bites', 'scratches', 'curses'],
	:vulnerabilities => ['fire', 'decapitation', 'cats'],
	:legs => 2
}
$monsters << {
	:name => 'Vampire',
	:nocturnal => true,
	:dangers => ['bites', 'hypnosis'],
	:vulnerabilities => ['wood', 'decapitation', 'crosses', 'holy_water', 'garlic', 'daylight'],
	:legs => 2
}
$monsters << {
	:name => 'Werewolf',
	:nocturnal => true,
	:dangers => ['bites', 'scratches'],
	:vulnerabilities => ['silver'],
	:legs => 4
}
$monsters << {
	:name => 'Blob',
	:nocturnal => false,
	:dangers => ['suffocation'],
	:vulnerabilities => ['CO2', 'ice', 'cold'],
	:legs => 0
}

#how many monsters are nocturnal? 
puts $monsters.collect{|m| m[:nocturnal]} 

#waht name of monsters that are nocturnal 
puts $monsters.select{|m| m[:nocturnal]}.map{|m| m[:name]}

#how many legs do monsters have? 
puts $monsters.map{|m| m[:legs]}.inject(:+) 

#what are 2 most common dangers 

dangers = $monsters.flat_map{|m| m[:dangers]}
dangers.inject(Hash.new(0)) do |h, d| 
	h[d] += 1 
	h 
end

dangers.group_by{|i| i}


#what are 2 most common vulnerabilities? 


