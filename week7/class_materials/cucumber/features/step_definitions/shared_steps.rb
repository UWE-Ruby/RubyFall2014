Given /^I select (Celsius|Fahrenheit)$/ do |type|
  @converter.type = type
end