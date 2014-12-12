Given /^I have entered (\d+) into the converter$/ do | value |
	@converter = Converter.new(value)
end
	
Given /^I select Farenheit$/ do
	@converter.type = "Fahrenheit"
end

When /^I press convert$/ do
	@result = @converter.convert
end

Then /^the result should be (\d+)\.(\d+) on the screen$/ do |arg1, arg2|
	@result.should eq "#{arg1}.#{arg2}".Fahrenheit_conversion
end


