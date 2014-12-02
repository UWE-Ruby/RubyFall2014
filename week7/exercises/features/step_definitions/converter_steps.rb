
Given(/^I have entered (\d+) into the converter$/) do |arg1|
	@converter = Converter.new 
	@converter.value = arg1.to_f
end

Given(/^I set the type to Fahrenheit$/) do
 	@converter.type = :fahrenheit
end

When(/^I press convert$/) do
	@result = @converter.convert 
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
	@converter.value == "#{arg1}.#{arg2}"
end
