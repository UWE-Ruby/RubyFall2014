#Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
#The EvenNumber class should:
#      - Only allow even numbers
#      - Get the next even number
#      - Compare even numbers
#      - Generate a range of even numbers
#http://ruby-doc.org/core-2.1.4/Range.html
#http://ruby-doc.org/core-2.1.4/Fixnum.html

require "#{File.dirname(__FILE__)}/even"
#require_relative '../spec_helper.rb'
describe EvenNumber do

  it "should only allow even numbers" do
    expect(EvenNumber.new(38)).to be_truthy
  end

  it "should get the next even number" do
    expect(EvenNumber.increment([18])).to eq [20]
  end

  it "should compare even numbers" do
    expect(EvenNumber.comparison(28,18)).to eq 1
  end

  it "should generate a range of even numbers" do
    expect(EvenNumber.new(34)..EvenNumber.new(46)).to be_a_kind_of Range
  end

end
