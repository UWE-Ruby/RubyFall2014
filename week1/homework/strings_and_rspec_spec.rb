# encoding: utf-8
# encoding directive needs to be first line to work

require 'rspec/collection_matchers'
require_relative '../../spec_helper'

describe String do
  context "When a string is defined" do
    before(:all) do
      @my_string = "Renee is a fun teacher. Ruby is a really cool programming language"
    end

    it "should be able to count the charaters" do 
      @my_string.length.should be(66)
    end

    it "should be able to split on the . charater" do
      result = @my_string.split('.')
      result.should have(2).items
    end

    it "should be able to give the encoding of the string" do
      @my_string.encoding.should be(Encoding.find("UTF-8"))
    end
  end
end
