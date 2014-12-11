 # - Write a passing rspec file called even_number_spec.rb that tests a class
 # called EvenNumber.
 #    - The EvenNumber class should:
 #       - Only allow even numbers
 #       - Get the next even number
 #       - Compare even numbers
 #       - Generate a range of even numbers

require_relative 'even_number.rb'
require_relative '../spec_helper'

describe EvenNumber do
	it "should only allow even numbers" do
		EvenNumber.new(5).should be false
	end

	it "should get the next even number" do
		EvenNumber.new(2).succ.should == EvenNumber.new(4)
	end

	it "should compare even numbers" do
		(EvenNumber.new(2) < EvenNumber.new(4)).should be_truthy
	end

	it "should generate a range of even numbers" do
		(EvenNumber.new(2)..EvenNumber.new(8)).should be_a Range
	end

	it "should only have EvenNumbers in the range" do
		(EvenNumber.new(2)..EvenNumber.new(6)).to_a.should eq [EvenNumber.new(2), EvenNumber.new(4), EvenNumber.new(6)]
	end
end