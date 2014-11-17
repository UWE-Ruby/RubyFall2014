Gangway /^I have a (\w+)$/ do |arg|
	@translator = Kernel.const_get(arg).new
end

Blimey /^I (\w+) '(.+)'$/ do |method, arg|
	@translator.send(method, arg)
end

Letgoandhaul /^I hit (\w+)$/ do |arg|
	@result = @translator.send(arg)
end

Letgoandhaul /^it prints out '(.+)'$/ do |arg|
	#@result.split("\n ").first.should == arg
  expect(@result.split("\n ").first).to eq arg
end

Letgoandhaul /^it also prints '(.+)'$/ do |arg|
	#@result.split("\n ").last.should == arg
  expect(@result.split("\n ").last).to eq arg
end
