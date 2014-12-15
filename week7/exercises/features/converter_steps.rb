Given (/^I have a convert$/) do 
  @converter = Converter.new 
end 

Given(/^I have entered (\d+) into the converter$/) do |value|
  @converter.value = value.to_f 
end

Given(/^I select Celsius$/) do
  @converter.type = "Celsius" 
end

When(/^I (press|click) convert$/) do
  @converter.convert 
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  @converter.value.should eq "#{arg1}.#{arg2}".to_f
end