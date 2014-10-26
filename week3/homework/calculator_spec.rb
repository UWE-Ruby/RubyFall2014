quire "#{File.dirname(__FILE__)}/calculator"
require_relative '../../spec_helper'

describe Calculator do

  before do
    @calculator = Calculator.new
  end

  describe "#sum" do
    it "computes the sum of an empty array" do
      array = []
      array.inject(0, :+).should == 0
    end

    it "computes the sum of an array of one number" do
      array = [7]
      array.inject(0, :+).should == 7
    end

    it "computes the sum of an array of two numbers" do
      array = [7,11]
      array.inject(0, :+).should == 18
    end

    it "computes the sum of an array of many numbers" do
      array = [1,3,5,7,9]
      array.inject(0, :+).should == 25
    end
  end

end
