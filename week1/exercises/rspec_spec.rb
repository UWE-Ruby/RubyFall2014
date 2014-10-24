# encoding: utf-8
require 'rspec/collection_matchers'
require_relative '../../spec_helper'
describe "The Rspec ruby gem" do

  context "Domain Specific Language" do

    it "creates examples with the #it keyword" do

      # this test code passes, so this example passes
      expect(1).to eq 1

    end

    it "has keywords like #context, and #describe to help organize the spec, or specification" do

      # test code goes here
      expect(1+2).to eq 3

    end

    it "has easily readable methods like #should (should is deprcated use expect(x).to eq x) to test any object" do

      expect("Hello").to eq "Hello"

    end

    it "has #should_not (should_not is deprecated use expect(x).not_to eq y) test for negative cases" do

      expect(1).not_to eq 2

    end

    it "creates readable predicate methods" do

      # Integers have #zero? and #nil? predicate methods, so
      # rspec automatically supports the #be_zero and #be_nil parameter to #should_not method
      expect(1).not_to be_zero
      expect(1).not_to be_nil

    end

    it "alerts you when examples fail" do

      # When this example fails,
      # it will show "expected" as 2, and "actual" as 1
      #expect(1).to eq 2
      expect(1).to eq 1


    end

    it "supports placeholder examples that lack code (like this one)"

    it "requires that examples use expectations (like #should) to work properly" do

      # The following expression is false.
      # However, this example PASSES because no expectation was created.
      true == false

      # The following line of code is correct, and would cause the example to fail:
      # true.should == false
      # expect(true).to eq false

      # Lesson: It's easy to write bad tests.

    end

    it "should count the characters in my name" do
      expect("Renée").to have(5).characters
    end

    it "should check how to spell my name" do
      expect("Renée").to include("ée")
    end

  end

  context "Examples for in-class test exploration" do
    it "should know order of operations" do
      # Fix the Failing Test
      # Order of Operations is Please Excuse My Dear Aunt Sally:
      # Parentheses, Exponents, Multiplication, Division, Addition, Subtraction
      expect(1+2-5*6/2).to eq -12
    end
    it "should count the characters in your name" do
      expect("Tom").to have(3).characters
    end

    it "should check basic math" do
      expect(1+1).to eq 2
    end

    it "should check basic spelling" do
      expect("field").to include("ie")
    end

  end
end