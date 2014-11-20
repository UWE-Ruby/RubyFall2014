require 'rspec/expectations'

Gangway(/^I have a PirateTranslator$/) do
	expect @translate = Pirate.new('Hello Friend')
end

Blimey(/^I say 'Hello Friend'$/) do
	@say
end

Blimey(/^I hit translate$/) do
	@translate
end

Letgoandhaul(/^it prints out 'Ahoy Matey'$/) do
	expect @translate = "Ahoy Matey"
end

Letgoandhaul(/^it also prints 'Shiber Me Timbers You Scurvey Dogs!!'$/) do
	expect @translate = "Shiber Me Timbers You Scurvey Dogs!!"
end
