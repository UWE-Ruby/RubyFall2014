# encoding: utf-8

require 'rspec/collection_matchers'
require_relative '../../spec_helper'


# Please make these examples all pass
# You will need to change the 3 pending tests
# You will need to write a passing test for the first example
# 	(Hint: If you need help refer to the in-class exercises)
# The two tests with the pending keyword, require some ruby code to be written
# 	(Hint: You should do the reading on Strings first)

describe String do
	context "When a string is defined" do
		#before(:all) >> runs once before everything else runs. Good for if you have setup
		before(:all) do
			@my_string = "Renee is a fun teacher. Ruby is a really cool programming language"
		end

		it "should be able to count the characters" do
			result = @my_string.length
			result.should eq 66
			#expect(@my_string.size).to eq 66
			#@my_string.size.should eq 66
		end

		it "should be able to split on the . character" do
			result = @my_string.split(/\./)
			#result = @my_string.split('.')
			result.should have(2).items
			#rspec calls .items on collection matchers, returns an array
		end

		it "should be able to give the encoding of the string" do
			result = @my_string.encoding
			result.should eq (Encoding.find("UTF-8"))
			#Encoding is a class, has method .find for finding encoding object
		end
	end
end

